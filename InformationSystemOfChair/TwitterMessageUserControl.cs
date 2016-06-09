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
    public partial class TwitterMessageUserControl : UserControl
    {
        public TwitterMessageUserControl(string userName, string date, string message, string userImagePath)
        {
            InitializeComponent();
            UserNameLabel.Text = userName;
            DateLabel.Text = date;
            MessageTextBox.Text = message;
            TwitterUserPictureBox.ImageLocation = userImagePath;
        }
    }
}
