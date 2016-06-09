namespace InformationSystemOfChair
{
    partial class NuwmArticleForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.DateLabel = new System.Windows.Forms.Label();
            this.ContentWebBrowser = new System.Windows.Forms.WebBrowser();
            this.NewsPhotoPictureBox = new System.Windows.Forms.PictureBox();
            this.TitleLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.NewsPhotoPictureBox)).BeginInit();
            this.SuspendLayout();
            // 
            // DateLabel
            // 
            this.DateLabel.AutoSize = true;
            this.DateLabel.Location = new System.Drawing.Point(238, 87);
            this.DateLabel.Name = "DateLabel";
            this.DateLabel.Size = new System.Drawing.Size(46, 17);
            this.DateLabel.TabIndex = 0;
            this.DateLabel.Text = "label1";
            // 
            // ContentWebBrowser
            // 
            this.ContentWebBrowser.Location = new System.Drawing.Point(21, 165);
            this.ContentWebBrowser.MinimumSize = new System.Drawing.Size(20, 20);
            this.ContentWebBrowser.Name = "ContentWebBrowser";
            this.ContentWebBrowser.Size = new System.Drawing.Size(923, 429);
            this.ContentWebBrowser.TabIndex = 1;
            // 
            // NewsPhotoPictureBox
            // 
            this.NewsPhotoPictureBox.Location = new System.Drawing.Point(21, 12);
            this.NewsPhotoPictureBox.Name = "NewsPhotoPictureBox";
            this.NewsPhotoPictureBox.Size = new System.Drawing.Size(196, 129);
            this.NewsPhotoPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.NewsPhotoPictureBox.TabIndex = 2;
            this.NewsPhotoPictureBox.TabStop = false;
            // 
            // TitleLabel
            // 
            this.TitleLabel.AutoSize = true;
            this.TitleLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.TitleLabel.Location = new System.Drawing.Point(238, 25);
            this.TitleLabel.Name = "TitleLabel";
            this.TitleLabel.Size = new System.Drawing.Size(86, 31);
            this.TitleLabel.TabIndex = 3;
            this.TitleLabel.Text = "label2";
            // 
            // NuwmArticleForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(978, 616);
            this.Controls.Add(this.TitleLabel);
            this.Controls.Add(this.NewsPhotoPictureBox);
            this.Controls.Add(this.ContentWebBrowser);
            this.Controls.Add(this.DateLabel);
            this.Name = "NuwmArticleForm";
            this.Text = "NuwmArticleForm";
            ((System.ComponentModel.ISupportInitialize)(this.NewsPhotoPictureBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label DateLabel;
        private System.Windows.Forms.WebBrowser ContentWebBrowser;
        private System.Windows.Forms.PictureBox NewsPhotoPictureBox;
        private System.Windows.Forms.Label TitleLabel;
    }
}