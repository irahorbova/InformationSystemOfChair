using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InformationSystemOfChair
{
    public partial class NuwmNewsUserControl : UserControl
    {
        private string _title;
        private string _date;
        private string _imagePath;
        private string _description;
        private string _content;

        public NuwmNewsUserControl(string title, string date, string imagePath, string description, string content)
        {
            InitializeComponent();
            _title = title;
            _date = date;
            _imagePath = imagePath;
            _description = description;
            _content = content;
            TitleLabel.Text = title;
            DateLabel.Text = date;
            DescriptionWebBrowser.DocumentText = description;
            NewsImagePictureBox.ImageLocation = imagePath;
        }

        private void ReadMoreBtnClick(object sender, EventArgs e)
        {
            NuwmArticleForm form = new NuwmArticleForm(_title,_date,_imagePath,_description,_content);
            form.ShowDialog();
        }
    }
}
