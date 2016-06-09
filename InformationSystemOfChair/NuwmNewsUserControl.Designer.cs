namespace InformationSystemOfChair
{
    partial class NuwmNewsUserControl
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
            this.NewsImagePictureBox = new System.Windows.Forms.PictureBox();
            this.DateLabel = new System.Windows.Forms.Label();
            this.TitleLabel = new System.Windows.Forms.Label();
            this.DescriptionWebBrowser = new System.Windows.Forms.WebBrowser();
            this.ReadMoreBtn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.NewsImagePictureBox)).BeginInit();
            this.SuspendLayout();
            // 
            // NewsImagePictureBox
            // 
            this.NewsImagePictureBox.Location = new System.Drawing.Point(21, 20);
            this.NewsImagePictureBox.Name = "NewsImagePictureBox";
            this.NewsImagePictureBox.Size = new System.Drawing.Size(236, 149);
            this.NewsImagePictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.NewsImagePictureBox.TabIndex = 0;
            this.NewsImagePictureBox.TabStop = false;
            // 
            // DateLabel
            // 
            this.DateLabel.AutoSize = true;
            this.DateLabel.Location = new System.Drawing.Point(274, 69);
            this.DateLabel.Name = "DateLabel";
            this.DateLabel.Size = new System.Drawing.Size(46, 17);
            this.DateLabel.TabIndex = 1;
            this.DateLabel.Text = "label1";
            // 
            // TitleLabel
            // 
            this.TitleLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.TitleLabel.Location = new System.Drawing.Point(273, 20);
            this.TitleLabel.Name = "TitleLabel";
            this.TitleLabel.Size = new System.Drawing.Size(636, 49);
            this.TitleLabel.TabIndex = 2;
            this.TitleLabel.Text = "label2";
            // 
            // DescriptionWebBrowser
            // 
            this.DescriptionWebBrowser.Location = new System.Drawing.Point(276, 89);
            this.DescriptionWebBrowser.MinimumSize = new System.Drawing.Size(20, 20);
            this.DescriptionWebBrowser.Name = "DescriptionWebBrowser";
            this.DescriptionWebBrowser.ScrollBarsEnabled = false;
            this.DescriptionWebBrowser.Size = new System.Drawing.Size(633, 98);
            this.DescriptionWebBrowser.TabIndex = 3;
            // 
            // ReadMoreBtn
            // 
            this.ReadMoreBtn.Location = new System.Drawing.Point(21, 175);
            this.ReadMoreBtn.Name = "ReadMoreBtn";
            this.ReadMoreBtn.Size = new System.Drawing.Size(132, 23);
            this.ReadMoreBtn.TabIndex = 4;
            this.ReadMoreBtn.Text = "Читати повністю";
            this.ReadMoreBtn.UseVisualStyleBackColor = true;
            this.ReadMoreBtn.Click += new System.EventHandler(this.ReadMoreBtnClick);
            // 
            // NuwmNewsUserControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.ReadMoreBtn);
            this.Controls.Add(this.DescriptionWebBrowser);
            this.Controls.Add(this.TitleLabel);
            this.Controls.Add(this.DateLabel);
            this.Controls.Add(this.NewsImagePictureBox);
            this.Name = "NuwmNewsUserControl";
            this.Size = new System.Drawing.Size(930, 212);
            ((System.ComponentModel.ISupportInitialize)(this.NewsImagePictureBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox NewsImagePictureBox;
        private System.Windows.Forms.Label DateLabel;
        private System.Windows.Forms.Label TitleLabel;
        private System.Windows.Forms.WebBrowser DescriptionWebBrowser;
        private System.Windows.Forms.Button ReadMoreBtn;
    }
}
