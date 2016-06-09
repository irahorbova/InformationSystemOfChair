using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InformationSystemOfChair
{
    public partial class Form1 : Form
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["db_information_system_of_chair"].ConnectionString;
        ProfessorRepository professorRepository;
        InstituteGroupRepository instituteGroupRepository;
        SheduleRepository sheduleRepository;
        public Form1()
        {
            InitializeComponent();
            professorRepository = new ProfessorRepository(connectionString);
            Professor[] professors = professorRepository.GetALlProfessors();
            instituteGroupRepository = new InstituteGroupRepository(connectionString);
            sheduleRepository = new SheduleRepository(connectionString);
            FillGroupListBox();
            SheduleListView.View = View.Details;
            SheduleListView.GridLines = true;
            SheduleListView.FullRowSelect = true;
            SheduleListView.Columns.Add("№", 25);
            SheduleListView.Columns.Add("Час", 100);
            SheduleListView.Columns.Add("Назва пари", 350);

            GetLatestTwitterPosts();
            LoadNuwmNewses();




        }

        private async void LoadNuwmNewses()
        {
            NuwmNewsParser parser = new NuwmNewsParser();
            try
            {
                List<NuwmNews> newses = await parser.GetLastNews();

                foreach (var news in newses)
                {
                    NuwmNewsUserControl control = new NuwmNewsUserControl(news.Title, news.Date, news.ImagePath, news.Description, news.Content);
                    NewsFlowLayoutPanel.Controls.Add(control);
                }
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }


        public async void GetLatestTwitterPosts()
        {
            try
            {
                string at = await Twitter.GetAccessTokenAsync();
            
                ShowTwitterPosts(await Twitter.GetTweets("nuwm_ua", 5, at));
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void FillGroupListBox()
        {
            InstituteGroup[] institutegroups = instituteGroupRepository.GetALlInstituteGroups();
            String[] groupsnames = new string[institutegroups.Length];
            for (int i = 0; i < groupsnames.Length; i++)
            {
                GroupsComboBox.Items.Add(institutegroups[i].Name);
            }
        }


        private void ShowSheduleClick(object sender, EventArgs e)
        {
            if (GroupsComboBox.SelectedItem == null)
            {
                return;
            }

            int groupId = instituteGroupRepository.GetALlInstituteGroups().FirstOrDefault(g => g.Name == GroupsComboBox.SelectedItem.ToString()).InstituteGroupID;

            SheduleListView.Items.Clear();
            Shedule[] shedule = sheduleRepository.GetShedule();
            DateTime targetDay = new DateTime(TargetDateTimePicker.Value.Year, TargetDateTimePicker.Value.Month, TargetDateTimePicker.Value.Day);
            bool isNumerator = true;
            DateTime startStudy = new DateTime(2016, 2, 22);

            double differance = targetDay.Subtract(startStudy).TotalDays;
            int countOfWeekAfterStartStudyDay = (int)differance / 7;

            if (countOfWeekAfterStartStudyDay % 2 == 0)
            {
                isNumerator = true;
            }
            else
            {
                isNumerator = false;
            }


            for (int i = 0; i < shedule.Length; i++)
            {
                String[] sheduledata = new string[3];
                int dayOfWeek = 0;
                switch (targetDay.DayOfWeek.ToString())
                {
                    case "Monday":
                        dayOfWeek = 1;
                        break;
                    case "Tuesday":
                        dayOfWeek = 2;
                        break;
                    case "Wednesday":
                        dayOfWeek = 3;
                        break;
                    case "Thursday":
                        dayOfWeek = 4;
                        break;
                    case "Friday":
                        dayOfWeek = 5;
                        break;
                    case "Saturday":
                        dayOfWeek = 6;
                        break;
                    case "Sunday":
                        dayOfWeek = 7;
                        break;
                }

                if (shedule[i].IsNumerator == isNumerator && shedule[i].DayOfWeek == dayOfWeek && shedule[i].InstituteGroup == groupId)
                {
                    switch (shedule[i].ClassNumber)
                    {
                        case 1:
                            sheduledata[0] = "1";
                            sheduledata[1] = "08 00 - 09 20";
                            sheduledata[2] = shedule[i].ClassName;
                            break;
                        case 2:
                            sheduledata[0] = "2";
                            sheduledata[1] = "09 00 - 11 00";
                            sheduledata[2] = shedule[i].ClassName;
                            break;
                        case 3:
                            sheduledata[0] = "3";
                            sheduledata[1] = "11 15 - 12 35";
                            sheduledata[2] = shedule[i].ClassName;
                            break;
                        case 4:
                            sheduledata[0] = "4";
                            sheduledata[1] = "13 00 - 14 20";
                            sheduledata[2] = shedule[i].ClassName;
                            break;
                        case 5:
                            sheduledata[0] = "5";
                            sheduledata[1] = "14 35 - 15 55";
                            sheduledata[2] = shedule[i].ClassName;
                            break;
                        case 6:
                            sheduledata[0] = "6";
                            sheduledata[1] = "16 05 - 17 25";
                            sheduledata[2] = shedule[i].ClassName;
                            break;
                    }
                    ListViewItem itm = new ListViewItem(sheduledata);
                    SheduleListView.Items.Add(itm);

                }

            }



        }
        public void ShowTwitterPosts(List<TwitterPost> twitts)
        {
            for (int i = 0; i < twitts.Count; i++)
            {
                TwittsFlowLayoutPanel.Controls.Add(new TwitterMessageUserControl(twitts[i].ScreenName, twitts[i].CreatedAt.Substring(0, 10), twitts[i].Text, twitts[i].UserPhotoPath));
            }

        }

    }
}
