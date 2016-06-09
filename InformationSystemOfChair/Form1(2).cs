using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TwitterPosts
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //GetLatestTwitterPosts();
            
            
            FillNuwmNews();
        }

        private async void FillNuwmNews()
        {
            NuwmNewsParser nn = new NuwmNewsParser();
            List<NuwmNews> newses = await nn.GetLastFiveNews();

            foreach (var news in newses)
            {
                NewsFlowLayoutPanel.Controls.Add(new LittleNuwmNewsUserControl(news.Title,news.Date,news.ImagePath,news.Description));
            }
        }

        public async void GetLatestTwitterPosts()
        {
            string at = await Twitter.GetAccessTokenAsync();
            /*List<TwitterPost> twitts =*/
            ShowTwitterPosts(await Twitter.GetTweets("nuwm_ua", 5, at));

           

            //List<TwitterPost> twitts = new List<TwitterPost>();
            //twitts.Add(new TwitterPost() { ScreenName = "Name", UserPhotoPath = "..//..//Images//my-photo.jpg", CreatedAt = "23.09.2017", Text = "fefeefefefefefefefefefeefefefefefefefefefeefefefefefefefefefeefefefefefefefefefefef", Name = "tony" });
            //twitts.Add(new TwitterPost() { ScreenName = "Name", UserPhotoPath = "..//..//Images//my-photo.jpg", CreatedAt = "23.09.2017", Text = "fefeefefefefefefefefefefef", Name = "tony" });
            //twitts.Add(new TwitterPost() { ScreenName = "Name", UserPhotoPath = "..//..//Images//my-photo.jpg", CreatedAt = "23.09.2017", Text = "fefeefefefefefefefefefefef", Name = "tony" });
            //twitts.Add(new TwitterPost() { ScreenName = "Name", UserPhotoPath = "..//..//Images//my-photo.jpg", CreatedAt = "23.09.2017", Text = "fefeefefefefefefefefefefef", Name = "tony" });
            //twitts.Add(new TwitterPost() { ScreenName = "Name", UserPhotoPath = "..//..//Images//my-photo.jpg", CreatedAt = "23.09.2017", Text = "fefeefefefefefefefefefefef", Name = "tony" });
            //ShowTwitterPosts(twitts);
        }

        public void ShowTwitterPosts(List<TwitterPost> twitts)
        {
            for (int i = 0; i < twitts.Count; i++)
            {
                TableLayoutPanel tlp = new TableLayoutPanel();
                tlp.RowCount = 2;
                tlp.ColumnCount = 2;
                tlp.CellBorderStyle = TableLayoutPanelCellBorderStyle.Outset;
                tlp.Size = new System.Drawing.Size(300,150);
                tlp.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 50));
                tlp.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 250));
                tlp.RowStyles.Add(new RowStyle(SizeType.Absolute, 50));
                //tlp.RowStyles.Add(new RowStyle(SizeType.Absolute, 100));
               
                PictureBox pb = new PictureBox();
                pb.Load(twitts[i].UserPhotoPath);
                pb.Width = 50;
                pb.Height = 50;
                Label screenNameLbl = new Label();

                screenNameLbl.Text = twitts[i].ScreenName + "  " + twitts[i].CreatedAt.Remove(twitts[i].CreatedAt.Length - 10, 10);
                screenNameLbl.Height = 50;
                screenNameLbl.Width = 250;
                screenNameLbl.ForeColor = Color.Blue;
                screenNameLbl.Font = new Font(FontFamily.GenericSerif,10,FontStyle.Bold);
                screenNameLbl.Padding = new Padding(10);
                Label texTwittLbl = new Label();
                
                texTwittLbl.Text = twitts[i].Text;
                texTwittLbl.Width = 295;
                texTwittLbl.Height = 100;
                //tlp.SetColumnSpan(texTwittLbl, 2);
                
                tlp.Controls.Add(pb, 0, 0);
                tlp.Controls.Add(screenNameLbl, 1, 0);
                tlp.Controls.Add(texTwittLbl, 1, 1);
                //TwittsFlowLayoutPanel.Controls.Add(tlp);
            }
           
        }

        
    }
}
