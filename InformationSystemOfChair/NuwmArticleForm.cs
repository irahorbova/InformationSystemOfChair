using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InformationSystemOfChair
{
    public partial class NuwmArticleForm : Form
    {
        public NuwmArticleForm(string title, string date, string imagePath, string description, string content)
        {
            InitializeComponent();
            this.Text = title;
            TitleLabel.Text = title;
            DateLabel.Text = date;
            NewsPhotoPictureBox.ImageLocation = imagePath;
            ContentWebBrowser.DocumentText = content;
        }
    }
}
