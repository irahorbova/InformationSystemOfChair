using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TwitterPosts
{
    public partial class LittleNuwmNewsUserControl : UserControl
    {
        public LittleNuwmNewsUserControl(string title, string date, string imagePath, string description)
        {
            InitializeComponent();
            TitleLabel.Text = title;
            DateLabel.Text = date;
            DescriptionWebBrowser.DocumentText = description;
            NewsImagePictureBox.ImageLocation = imagePath;
        }
    }
}
