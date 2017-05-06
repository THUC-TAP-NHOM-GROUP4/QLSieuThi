namespace QLSieuThi
{
    partial class frmMain
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.navBarControl1 = new DevExpress.XtraNavBar.NavBarControl();
            this.nbgTrangChu = new DevExpress.XtraNavBar.NavBarGroup();
            this.nbiTrangChu = new DevExpress.XtraNavBar.NavBarItem();
            this.nbiTrangChu_NhapHang = new DevExpress.XtraNavBar.NavBarItem();
            this.nbiTrangChu_BanHang = new DevExpress.XtraNavBar.NavBarItem();
            this.nbiTrangChu_QLNhanVien = new DevExpress.XtraNavBar.NavBarItem();
            this.nbiTrangChu_QLKhach = new DevExpress.XtraNavBar.NavBarItem();
            this.nbiTrangChu_ThongKe = new DevExpress.XtraNavBar.NavBarItem();
            this.nbiTrangChu_HuongDan = new DevExpress.XtraNavBar.NavBarItem();
            this.tabControlMain = new System.Windows.Forms.TabControl();
            this.tabPageTrangChu = new System.Windows.Forms.TabPage();
            this.tabPageNhapHang = new System.Windows.Forms.TabPage();
            this.tabPageBanHang = new System.Windows.Forms.TabPage();
            this.tabPageQLNhanVien = new System.Windows.Forms.TabPage();
            this.tabPageKhach = new System.Windows.Forms.TabPage();
            this.tabPageThongKe = new System.Windows.Forms.TabPage();
            this.tabPageHuongDan = new System.Windows.Forms.TabPage();
            this.dgvNhanVien_DanhSach = new System.Windows.Forms.DataGridView();
            this.btnNhanVien_Thoat = new System.Windows.Forms.Button();
            this.btnNhanVien_Xoa = new System.Windows.Forms.Button();
            this.btnNhanVien_Sua = new System.Windows.Forms.Button();
            this.btnNhanVien_Them = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.navBarControl1)).BeginInit();
            this.tabControlMain.SuspendLayout();
            this.tabPageQLNhanVien.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien_DanhSach)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.navBarControl1);
            this.panel1.Location = new System.Drawing.Point(2, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(145, 658);
            this.panel1.TabIndex = 0;
            // 
            // navBarControl1
            // 
            this.navBarControl1.ActiveGroup = this.nbgTrangChu;
            this.navBarControl1.Groups.AddRange(new DevExpress.XtraNavBar.NavBarGroup[] {
            this.nbgTrangChu});
            this.navBarControl1.Items.AddRange(new DevExpress.XtraNavBar.NavBarItem[] {
            this.nbiTrangChu_HuongDan,
            this.nbiTrangChu,
            this.nbiTrangChu_NhapHang,
            this.nbiTrangChu_BanHang,
            this.nbiTrangChu_QLNhanVien,
            this.nbiTrangChu_QLKhach,
            this.nbiTrangChu_ThongKe});
            this.navBarControl1.Location = new System.Drawing.Point(4, 10);
            this.navBarControl1.Name = "navBarControl1";
            this.navBarControl1.OptionsNavPane.ExpandedWidth = 140;
            this.navBarControl1.Size = new System.Drawing.Size(140, 300);
            this.navBarControl1.TabIndex = 0;
            this.navBarControl1.Text = "navBarControl1";
            // 
            // nbgTrangChu
            // 
            this.nbgTrangChu.Caption = "Trang chủ";
            this.nbgTrangChu.Expanded = true;
            this.nbgTrangChu.ImageUri.Uri = "Home";
            this.nbgTrangChu.ItemLinks.AddRange(new DevExpress.XtraNavBar.NavBarItemLink[] {
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiTrangChu),
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiTrangChu_NhapHang),
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiTrangChu_BanHang),
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiTrangChu_QLNhanVien),
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiTrangChu_QLKhach),
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiTrangChu_ThongKe),
            new DevExpress.XtraNavBar.NavBarItemLink(this.nbiTrangChu_HuongDan)});
            this.nbgTrangChu.Name = "nbgTrangChu";
            // 
            // nbiTrangChu
            // 
            this.nbiTrangChu.Caption = "Trang chủ";
            this.nbiTrangChu.ImageUri.Uri = "Home";
            this.nbiTrangChu.Name = "nbiTrangChu";
            this.nbiTrangChu.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiTrangChu_LinkClicked);
            // 
            // nbiTrangChu_NhapHang
            // 
            this.nbiTrangChu_NhapHang.Caption = "Nhập hàng";
            this.nbiTrangChu_NhapHang.ImageUri.Uri = "AddNewDataSource";
            this.nbiTrangChu_NhapHang.Name = "nbiTrangChu_NhapHang";
            this.nbiTrangChu_NhapHang.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiTrangChu_NhapHang_LinkClicked);
            // 
            // nbiTrangChu_BanHang
            // 
            this.nbiTrangChu_BanHang.Caption = "Bán hàng";
            this.nbiTrangChu_BanHang.ImageUri.Uri = "DeleteDataSource";
            this.nbiTrangChu_BanHang.Name = "nbiTrangChu_BanHang";
            this.nbiTrangChu_BanHang.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiTrangChu_BanHang_LinkClicked);
            // 
            // nbiTrangChu_QLNhanVien
            // 
            this.nbiTrangChu_QLNhanVien.Caption = "QL Nhân viên";
            this.nbiTrangChu_QLNhanVien.Name = "nbiTrangChu_QLNhanVien";
            this.nbiTrangChu_QLNhanVien.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiTrangChu_QLNhanVien_LinkClicked);
            // 
            // nbiTrangChu_QLKhach
            // 
            this.nbiTrangChu_QLKhach.Caption = "QL Khách";
            this.nbiTrangChu_QLKhach.Name = "nbiTrangChu_QLKhach";
            this.nbiTrangChu_QLKhach.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiTrangChu_QLKhach_LinkClicked);
            // 
            // nbiTrangChu_ThongKe
            // 
            this.nbiTrangChu_ThongKe.Caption = "Thống kê";
            this.nbiTrangChu_ThongKe.ImageUri.Uri = "Chart";
            this.nbiTrangChu_ThongKe.Name = "nbiTrangChu_ThongKe";
            this.nbiTrangChu_ThongKe.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiTrangChu_ThongKe_LinkClicked);
            // 
            // nbiTrangChu_HuongDan
            // 
            this.nbiTrangChu_HuongDan.Caption = "Hướng dẫn";
            this.nbiTrangChu_HuongDan.ImageUri.Uri = "InLineWithText";
            this.nbiTrangChu_HuongDan.Name = "nbiTrangChu_HuongDan";
            this.nbiTrangChu_HuongDan.LinkClicked += new DevExpress.XtraNavBar.NavBarLinkEventHandler(this.nbiTrangChu_HuongDan_LinkClicked);
            // 
            // tabControlMain
            // 
            this.tabControlMain.Controls.Add(this.tabPageTrangChu);
            this.tabControlMain.Controls.Add(this.tabPageNhapHang);
            this.tabControlMain.Controls.Add(this.tabPageBanHang);
            this.tabControlMain.Controls.Add(this.tabPageQLNhanVien);
            this.tabControlMain.Controls.Add(this.tabPageKhach);
            this.tabControlMain.Controls.Add(this.tabPageThongKe);
            this.tabControlMain.Controls.Add(this.tabPageHuongDan);
            this.tabControlMain.Location = new System.Drawing.Point(153, 3);
            this.tabControlMain.Name = "tabControlMain";
            this.tabControlMain.SelectedIndex = 0;
            this.tabControlMain.Size = new System.Drawing.Size(1133, 658);
            this.tabControlMain.TabIndex = 1;
            // 
            // tabPageTrangChu
            // 
            this.tabPageTrangChu.Location = new System.Drawing.Point(4, 22);
            this.tabPageTrangChu.Name = "tabPageTrangChu";
            this.tabPageTrangChu.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageTrangChu.Size = new System.Drawing.Size(1125, 632);
            this.tabPageTrangChu.TabIndex = 0;
            this.tabPageTrangChu.Text = "Trang Chủ";
            this.tabPageTrangChu.UseVisualStyleBackColor = true;
            // 
            // tabPageNhapHang
            // 
            this.tabPageNhapHang.Location = new System.Drawing.Point(4, 22);
            this.tabPageNhapHang.Name = "tabPageNhapHang";
            this.tabPageNhapHang.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageNhapHang.Size = new System.Drawing.Size(1125, 632);
            this.tabPageNhapHang.TabIndex = 1;
            this.tabPageNhapHang.Text = "Nhập hàng";
            this.tabPageNhapHang.UseVisualStyleBackColor = true;
            // 
            // tabPageBanHang
            // 
            this.tabPageBanHang.Location = new System.Drawing.Point(4, 22);
            this.tabPageBanHang.Name = "tabPageBanHang";
            this.tabPageBanHang.Size = new System.Drawing.Size(1125, 632);
            this.tabPageBanHang.TabIndex = 2;
            this.tabPageBanHang.Text = "Bán hàng";
            this.tabPageBanHang.UseVisualStyleBackColor = true;
            // 
            // tabPageQLNhanVien
            // 
            this.tabPageQLNhanVien.Controls.Add(this.btnNhanVien_Thoat);
            this.tabPageQLNhanVien.Controls.Add(this.btnNhanVien_Xoa);
            this.tabPageQLNhanVien.Controls.Add(this.btnNhanVien_Sua);
            this.tabPageQLNhanVien.Controls.Add(this.btnNhanVien_Them);
            this.tabPageQLNhanVien.Controls.Add(this.dgvNhanVien_DanhSach);
            this.tabPageQLNhanVien.Location = new System.Drawing.Point(4, 22);
            this.tabPageQLNhanVien.Name = "tabPageQLNhanVien";
            this.tabPageQLNhanVien.Size = new System.Drawing.Size(1125, 632);
            this.tabPageQLNhanVien.TabIndex = 3;
            this.tabPageQLNhanVien.Text = "QL Nhân viên";
            this.tabPageQLNhanVien.UseVisualStyleBackColor = true;
            // 
            // tabPageKhach
            // 
            this.tabPageKhach.Location = new System.Drawing.Point(4, 22);
            this.tabPageKhach.Name = "tabPageKhach";
            this.tabPageKhach.Size = new System.Drawing.Size(1125, 632);
            this.tabPageKhach.TabIndex = 4;
            this.tabPageKhach.Text = "QL Khách";
            this.tabPageKhach.UseVisualStyleBackColor = true;
            // 
            // tabPageThongKe
            // 
            this.tabPageThongKe.Location = new System.Drawing.Point(4, 22);
            this.tabPageThongKe.Name = "tabPageThongKe";
            this.tabPageThongKe.Size = new System.Drawing.Size(1125, 632);
            this.tabPageThongKe.TabIndex = 5;
            this.tabPageThongKe.Text = "Thống kê";
            this.tabPageThongKe.UseVisualStyleBackColor = true;
            // 
            // tabPageHuongDan
            // 
            this.tabPageHuongDan.Location = new System.Drawing.Point(4, 22);
            this.tabPageHuongDan.Name = "tabPageHuongDan";
            this.tabPageHuongDan.Size = new System.Drawing.Size(1125, 632);
            this.tabPageHuongDan.TabIndex = 6;
            this.tabPageHuongDan.Text = "Hướng dẫn";
            this.tabPageHuongDan.UseVisualStyleBackColor = true;
            // 
            // dgvNhanVien_DanhSach
            // 
            this.dgvNhanVien_DanhSach.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.dgvNhanVien_DanhSach.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNhanVien_DanhSach.Location = new System.Drawing.Point(3, 3);
            this.dgvNhanVien_DanhSach.Name = "dgvNhanVien_DanhSach";
            this.dgvNhanVien_DanhSach.ReadOnly = true;
            this.dgvNhanVien_DanhSach.Size = new System.Drawing.Size(1119, 549);
            this.dgvNhanVien_DanhSach.TabIndex = 0;
            this.dgvNhanVien_DanhSach.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvNhanVien_DanhSach_CellDoubleClick);
            // 
            // btnNhanVien_Thoat
            // 
            this.btnNhanVien_Thoat.Location = new System.Drawing.Point(1018, 576);
            this.btnNhanVien_Thoat.Name = "btnNhanVien_Thoat";
            this.btnNhanVien_Thoat.Size = new System.Drawing.Size(96, 32);
            this.btnNhanVien_Thoat.TabIndex = 1;
            this.btnNhanVien_Thoat.Text = "Thoát";
            this.btnNhanVien_Thoat.UseVisualStyleBackColor = true;
            this.btnNhanVien_Thoat.Click += new System.EventHandler(this.btnNhanVien_Thoat_Click);
            // 
            // btnNhanVien_Xoa
            // 
            this.btnNhanVien_Xoa.Location = new System.Drawing.Point(888, 576);
            this.btnNhanVien_Xoa.Name = "btnNhanVien_Xoa";
            this.btnNhanVien_Xoa.Size = new System.Drawing.Size(96, 32);
            this.btnNhanVien_Xoa.TabIndex = 1;
            this.btnNhanVien_Xoa.Text = "Xóa";
            this.btnNhanVien_Xoa.UseVisualStyleBackColor = true;
            this.btnNhanVien_Xoa.Click += new System.EventHandler(this.btnNhanVien_Xoa_Click);
            // 
            // btnNhanVien_Sua
            // 
            this.btnNhanVien_Sua.Location = new System.Drawing.Point(758, 576);
            this.btnNhanVien_Sua.Name = "btnNhanVien_Sua";
            this.btnNhanVien_Sua.Size = new System.Drawing.Size(96, 32);
            this.btnNhanVien_Sua.TabIndex = 1;
            this.btnNhanVien_Sua.Text = "Sửa";
            this.btnNhanVien_Sua.UseVisualStyleBackColor = true;
            this.btnNhanVien_Sua.Click += new System.EventHandler(this.btnNhanVien_Sua_Click);
            // 
            // btnNhanVien_Them
            // 
            this.btnNhanVien_Them.Location = new System.Drawing.Point(628, 576);
            this.btnNhanVien_Them.Name = "btnNhanVien_Them";
            this.btnNhanVien_Them.Size = new System.Drawing.Size(96, 32);
            this.btnNhanVien_Them.TabIndex = 1;
            this.btnNhanVien_Them.Text = "Thêm";
            this.btnNhanVien_Them.UseVisualStyleBackColor = true;
            this.btnNhanVien_Them.Click += new System.EventHandler(this.btnNhanVien_Them_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1284, 661);
            this.Controls.Add(this.tabControlMain);
            this.Controls.Add(this.panel1);
            this.MaximumSize = new System.Drawing.Size(1300, 700);
            this.MinimumSize = new System.Drawing.Size(1300, 700);
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản lý siêu thị";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.navBarControl1)).EndInit();
            this.tabControlMain.ResumeLayout(false);
            this.tabPageQLNhanVien.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien_DanhSach)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraNavBar.NavBarControl navBarControl1;
        private DevExpress.XtraNavBar.NavBarGroup nbgTrangChu;
        private DevExpress.XtraNavBar.NavBarItem nbiTrangChu;
        private DevExpress.XtraNavBar.NavBarItem nbiTrangChu_NhapHang;
        private DevExpress.XtraNavBar.NavBarItem nbiTrangChu_BanHang;
        private DevExpress.XtraNavBar.NavBarItem nbiTrangChu_QLNhanVien;
        private DevExpress.XtraNavBar.NavBarItem nbiTrangChu_QLKhach;
        private DevExpress.XtraNavBar.NavBarItem nbiTrangChu_ThongKe;
        private System.Windows.Forms.TabControl tabControlMain;
        private System.Windows.Forms.TabPage tabPageTrangChu;
        private System.Windows.Forms.TabPage tabPageNhapHang;
        private System.Windows.Forms.TabPage tabPageBanHang;
        private System.Windows.Forms.TabPage tabPageQLNhanVien;
        private System.Windows.Forms.TabPage tabPageKhach;
        private System.Windows.Forms.TabPage tabPageThongKe;
        private System.Windows.Forms.TabPage tabPageHuongDan;
        private DevExpress.XtraNavBar.NavBarItem nbiTrangChu_HuongDan;
        private System.Windows.Forms.Button btnNhanVien_Thoat;
        private System.Windows.Forms.Button btnNhanVien_Xoa;
        private System.Windows.Forms.Button btnNhanVien_Sua;
        private System.Windows.Forms.DataGridView dgvNhanVien_DanhSach;
        private System.Windows.Forms.Button btnNhanVien_Them;
    }
}

