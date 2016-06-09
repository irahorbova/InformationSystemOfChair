namespace InformationSystemOfChair
{
    partial class TwitterMessageUserControl
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.TwitterUserPictureBox = new System.Windows.Forms.PictureBox();
            this.UserNameLabel = new System.Windows.Forms.Label();
            this.DateLabel = new System.Windows.Forms.Label();
            this.MessageTextBox = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.TwitterUserPictureBox)).BeginInit();
            this.SuspendLayout();
            // 
            // TwitterUserPictureBox
            // 
            this.TwitterUserPictureBox.Location = new System.Drawing.Point(0, 3);
            this.TwitterUserPictureBox.Name = "TwitterUserPictureBox";
            this.TwitterUserPictureBox.Size = new System.Drawing.Size(76, 69);
            this.TwitterUserPictureBox.TabIndex = 0;
            this.TwitterUserPictureBox.TabStop = false;
            // 
            // UserNameLabel
            // 
            this.UserNameLabel.AutoSize = true;
            this.UserNameLabel.Location = new System.Drawing.Point(82, 18);
            this.UserNameLabel.Name = "UserNameLabel";
            this.UserNameLabel.Size = new System.Drawing.Size(46, 17);
            this.UserNameLabel.TabIndex = 1;
            this.UserNameLabel.Text = "label1";
            // 
            // DateLabel
            // 
            this.DateLabel.AutoSize = true;
            this.DateLabel.Location = new System.Drawing.Point(183, 18);
            this.DateLabel.Name = "DateLabel";
            this.DateLabel.Size = new System.Drawing.Size(46, 17);
            this.DateLabel.TabIndex = 2;
            this.DateLabel.Text = "label2";
            // 
            // MessageTextBox
            // 
            this.MessageTextBox.Location = new System.Drawing.Point(0, 78);
            this.MessageTextBox.Multiline = true;
            this.MessageTextBox.Name = "MessageTextBox";
            this.MessageTextBox.Size = new System.Drawing.Size(311, 82);
            this.MessageTextBox.TabIndex = 3;
            // 
            // TwitterMessageUserControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.MessageTextBox);
            this.Controls.Add(this.DateLabel);
            this.Controls.Add(this.UserNameLabel);
            this.Controls.Add(this.TwitterUserPictureBox);
            this.Name = "TwitterMessageUserControl";
            this.Size = new System.Drawing.Size(314, 163);
            ((System.ComponentModel.ISupportInitialize)(this.TwitterUserPictureBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox TwitterUserPictureBox;
        private System.Windows.Forms.Label UserNameLabel;
        private System.Windows.Forms.Label DateLabel;
        private System.Windows.Forms.TextBox MessageTextBox;
    }
}
