namespace InformationSystemOfChair
{
    partial class Form1
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
            this.ShowSheduleBtn = new System.Windows.Forms.Button();
            this.SheduleListView = new System.Windows.Forms.ListView();
            this.TargetDateTimePicker = new System.Windows.Forms.DateTimePicker();
            this.TwittsFlowLayoutPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.NewsFlowLayoutPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.GroupsComboBox = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // ShowSheduleBtn
            // 
            this.ShowSheduleBtn.Location = new System.Drawing.Point(392, 68);
            this.ShowSheduleBtn.Name = "ShowSheduleBtn";
            this.ShowSheduleBtn.Size = new System.Drawing.Size(144, 34);
            this.ShowSheduleBtn.TabIndex = 0;
            this.ShowSheduleBtn.Text = "Показати розклад";
            this.ShowSheduleBtn.UseVisualStyleBackColor = true;
            this.ShowSheduleBtn.Click += new System.EventHandler(this.ShowSheduleClick);
            // 
            // SheduleListView
            // 
            this.SheduleListView.GridLines = true;
            this.SheduleListView.Location = new System.Drawing.Point(12, 124);
            this.SheduleListView.Name = "SheduleListView";
            this.SheduleListView.Size = new System.Drawing.Size(524, 376);
            this.SheduleListView.TabIndex = 3;
            this.SheduleListView.UseCompatibleStateImageBehavior = false;
            this.SheduleListView.View = System.Windows.Forms.View.Details;
            // 
            // TargetDateTimePicker
            // 
            this.TargetDateTimePicker.Location = new System.Drawing.Point(167, 80);
            this.TargetDateTimePicker.Name = "TargetDateTimePicker";
            this.TargetDateTimePicker.Size = new System.Drawing.Size(201, 22);
            this.TargetDateTimePicker.TabIndex = 4;
            // 
            // TwittsFlowLayoutPanel
            // 
            this.TwittsFlowLayoutPanel.Enabled = false;
            this.TwittsFlowLayoutPanel.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.TwittsFlowLayoutPanel.Location = new System.Drawing.Point(1522, 26);
            this.TwittsFlowLayoutPanel.Name = "TwittsFlowLayoutPanel";
            this.TwittsFlowLayoutPanel.Size = new System.Drawing.Size(329, 928);
            this.TwittsFlowLayoutPanel.TabIndex = 7;
            // 
            // NewsFlowLayoutPanel
            // 
            this.NewsFlowLayoutPanel.AutoScroll = true;
            this.NewsFlowLayoutPanel.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.NewsFlowLayoutPanel.Location = new System.Drawing.Point(557, 26);
            this.NewsFlowLayoutPanel.Name = "NewsFlowLayoutPanel";
            this.NewsFlowLayoutPanel.Size = new System.Drawing.Size(942, 928);
            this.NewsFlowLayoutPanel.TabIndex = 8;
            // 
            // GroupsComboBox
            // 
            this.GroupsComboBox.FormattingEnabled = true;
            this.GroupsComboBox.Location = new System.Drawing.Point(12, 78);
            this.GroupsComboBox.Name = "GroupsComboBox";
            this.GroupsComboBox.Size = new System.Drawing.Size(121, 24);
            this.GroupsComboBox.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(12, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(213, 31);
            this.label1.TabIndex = 10;
            this.label1.Text = "Розклад занять";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1863, 966);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.GroupsComboBox);
            this.Controls.Add(this.NewsFlowLayoutPanel);
            this.Controls.Add(this.TwittsFlowLayoutPanel);
            this.Controls.Add(this.TargetDateTimePicker);
            this.Controls.Add(this.SheduleListView);
            this.Controls.Add(this.ShowSheduleBtn);
            this.Name = "Form1";
            this.Text = "Інформаційна система кафедри";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button ShowSheduleBtn;
        private System.Windows.Forms.ListView SheduleListView;
        private System.Windows.Forms.DateTimePicker TargetDateTimePicker;
        private System.Windows.Forms.FlowLayoutPanel TwittsFlowLayoutPanel;
        private System.Windows.Forms.FlowLayoutPanel NewsFlowLayoutPanel;
        private System.Windows.Forms.ComboBox GroupsComboBox;
        private System.Windows.Forms.Label label1;
    }
}

