namespace QLSieuThi.View
{
    partial class UPhieuXuat
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
            this.components = new System.ComponentModel.Container();
            this.cbbPXKhachHang = new System.Windows.Forms.ComboBox();
            this.label26 = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.cbbPXND = new System.Windows.Forms.ComboBox();
            this.lblPhieuXuatMa = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.cbbPXMaNhanVien = new System.Windows.Forms.ComboBox();
            this.txtPXDonGia = new System.Windows.Forms.TextBox();
            this.label22 = new System.Windows.Forms.Label();
            this.txtPXTenHang = new System.Windows.Forms.TextBox();
            this.txtPXSoLuong = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.cbbPXMaHang = new System.Windows.Forms.ComboBox();
            this.btnPXThemHang = new System.Windows.Forms.Button();
            this.label20 = new System.Windows.Forms.Label();
            this.dtgPXMuaHang = new System.Windows.Forms.DataGridView();
            this.label13 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.btnThanhToan = new System.Windows.Forms.Button();
            this.label23 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.txtPXTienTraLai = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.txtPXTienKhachDua = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.txtPXTongTien = new System.Windows.Forms.TextBox();
            this.label19 = new System.Windows.Forms.Label();
            this.btnPXHuy = new System.Windows.Forms.Button();
            this.btnPXLuu = new System.Windows.Forms.Button();
            this.errPXMaNV = new System.Windows.Forms.ErrorProvider(this.components);
            this.errPNNoidung = new System.Windows.Forms.ErrorProvider(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dtgPXMuaHang)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPXMaNV)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPNNoidung)).BeginInit();
            this.SuspendLayout();
            // 
            // cbbPXKhachHang
            // 
            this.cbbPXKhachHang.FormattingEnabled = true;
            this.cbbPXKhachHang.Items.AddRange(new object[] {
            "Bán lẻ",
            "Bán buôn"});
            this.cbbPXKhachHang.Location = new System.Drawing.Point(959, 44);
            this.cbbPXKhachHang.Name = "cbbPXKhachHang";
            this.cbbPXKhachHang.Size = new System.Drawing.Size(143, 21);
            this.cbbPXKhachHang.TabIndex = 74;
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.Location = new System.Drawing.Point(850, 57);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(68, 13);
            this.label26.TabIndex = 73;
            this.label26.Text = "Khách hàng:";
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Location = new System.Drawing.Point(557, 57);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(53, 13);
            this.label25.TabIndex = 72;
            this.label25.Text = "Nội dung:";
            // 
            // cbbPXND
            // 
            this.cbbPXND.FormattingEnabled = true;
            this.cbbPXND.Items.AddRange(new object[] {
            "Bán lẻ",
            "Bán buôn"});
            this.cbbPXND.Location = new System.Drawing.Point(636, 49);
            this.cbbPXND.Name = "cbbPXND";
            this.cbbPXND.Size = new System.Drawing.Size(143, 21);
            this.cbbPXND.TabIndex = 71;
            this.cbbPXND.SelectedIndexChanged += new System.EventHandler(this.cbbPXND_SelectedIndexChanged);
            // 
            // lblPhieuXuatMa
            // 
            this.lblPhieuXuatMa.AutoSize = true;
            this.lblPhieuXuatMa.Location = new System.Drawing.Point(392, 52);
            this.lblPhieuXuatMa.Name = "lblPhieuXuatMa";
            this.lblPhieuXuatMa.Size = new System.Drawing.Size(22, 13);
            this.lblPhieuXuatMa.TabIndex = 70;
            this.lblPhieuXuatMa.Text = "Mã";
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(281, 52);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(77, 13);
            this.label24.TabIndex = 69;
            this.label24.Text = "Mã phiếu xuất:";
            // 
            // cbbPXMaNhanVien
            // 
            this.cbbPXMaNhanVien.FormattingEnabled = true;
            this.cbbPXMaNhanVien.Location = new System.Drawing.Point(107, 49);
            this.cbbPXMaNhanVien.Name = "cbbPXMaNhanVien";
            this.cbbPXMaNhanVien.Size = new System.Drawing.Size(143, 21);
            this.cbbPXMaNhanVien.TabIndex = 68;
            // 
            // txtPXDonGia
            // 
            this.txtPXDonGia.Location = new System.Drawing.Point(959, 91);
            this.txtPXDonGia.Name = "txtPXDonGia";
            this.txtPXDonGia.Size = new System.Drawing.Size(143, 20);
            this.txtPXDonGia.TabIndex = 67;
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(850, 98);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(47, 13);
            this.label22.TabIndex = 66;
            this.label22.Text = "Đơn giá:";
            // 
            // txtPXTenHang
            // 
            this.txtPXTenHang.Location = new System.Drawing.Point(392, 96);
            this.txtPXTenHang.Name = "txtPXTenHang";
            this.txtPXTenHang.Size = new System.Drawing.Size(126, 20);
            this.txtPXTenHang.TabIndex = 65;
            // 
            // txtPXSoLuong
            // 
            this.txtPXSoLuong.Location = new System.Drawing.Point(647, 91);
            this.txtPXSoLuong.Name = "txtPXSoLuong";
            this.txtPXSoLuong.Size = new System.Drawing.Size(132, 20);
            this.txtPXSoLuong.TabIndex = 64;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(557, 98);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(52, 13);
            this.label17.TabIndex = 63;
            this.label17.Text = "Số lượng:";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(281, 99);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(76, 13);
            this.label21.TabIndex = 62;
            this.label21.Text = "Tên mặt hàng:";
            // 
            // cbbPXMaHang
            // 
            this.cbbPXMaHang.FormattingEnabled = true;
            this.cbbPXMaHang.Location = new System.Drawing.Point(111, 95);
            this.cbbPXMaHang.Name = "cbbPXMaHang";
            this.cbbPXMaHang.Size = new System.Drawing.Size(143, 21);
            this.cbbPXMaHang.TabIndex = 61;
            this.cbbPXMaHang.SelectedIndexChanged += new System.EventHandler(this.cbbPXMaHang_SelectedIndexChanged);
            // 
            // btnPXThemHang
            // 
            this.btnPXThemHang.Location = new System.Drawing.Point(10, 137);
            this.btnPXThemHang.Name = "btnPXThemHang";
            this.btnPXThemHang.Size = new System.Drawing.Size(101, 23);
            this.btnPXThemHang.TabIndex = 60;
            this.btnPXThemHang.Text = "Thêm hàng ";
            this.btnPXThemHang.UseVisualStyleBackColor = true;
            this.btnPXThemHang.Click += new System.EventHandler(this.btnPXThemHang_Click);
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(7, 98);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(72, 13);
            this.label20.TabIndex = 59;
            this.label20.Text = "Mã mặt hàng:";
            // 
            // dtgPXMuaHang
            // 
            this.dtgPXMuaHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgPXMuaHang.Location = new System.Drawing.Point(0, 166);
            this.dtgPXMuaHang.Name = "dtgPXMuaHang";
            this.dtgPXMuaHang.Size = new System.Drawing.Size(1119, 280);
            this.dtgPXMuaHang.TabIndex = 58;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(3, 52);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(75, 13);
            this.label13.TabIndex = 57;
            this.label13.Text = "Mã Nhân Viên";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label12.Location = new System.Drawing.Point(531, 6);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(79, 16);
            this.label12.TabIndex = 56;
            this.label12.Text = "Phiếu xuất";
            // 
            // btnThanhToan
            // 
            this.btnThanhToan.Location = new System.Drawing.Point(111, 514);
            this.btnThanhToan.Name = "btnThanhToan";
            this.btnThanhToan.Size = new System.Drawing.Size(103, 36);
            this.btnThanhToan.TabIndex = 86;
            this.btnThanhToan.Text = "ThanhToán";
            this.btnThanhToan.UseVisualStyleBackColor = true;
            this.btnThanhToan.Click += new System.EventHandler(this.btnThanhToan_Click);
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(269, 568);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(30, 13);
            this.label23.TabIndex = 85;
            this.label23.Text = "VND";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(4, 572);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(72, 13);
            this.label16.TabIndex = 84;
            this.label16.Text = "Trả lại khách:";
            // 
            // txtPXTienTraLai
            // 
            this.txtPXTienTraLai.Location = new System.Drawing.Point(111, 565);
            this.txtPXTienTraLai.Name = "txtPXTienTraLai";
            this.txtPXTienTraLai.Size = new System.Drawing.Size(151, 20);
            this.txtPXTienTraLai.TabIndex = 83;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(269, 485);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(30, 13);
            this.label15.TabIndex = 82;
            this.label15.Text = "VND";
            // 
            // txtPXTienKhachDua
            // 
            this.txtPXTienKhachDua.Location = new System.Drawing.Point(111, 478);
            this.txtPXTienKhachDua.Name = "txtPXTienKhachDua";
            this.txtPXTienKhachDua.Size = new System.Drawing.Size(152, 20);
            this.txtPXTienKhachDua.TabIndex = 81;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(7, 485);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(86, 13);
            this.label14.TabIndex = 80;
            this.label14.Text = "Tiền khách đưa:";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(269, 459);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(30, 13);
            this.label18.TabIndex = 79;
            this.label18.Text = "VND";
            // 
            // txtPXTongTien
            // 
            this.txtPXTongTien.Location = new System.Drawing.Point(111, 452);
            this.txtPXTongTien.Name = "txtPXTongTien";
            this.txtPXTongTien.Size = new System.Drawing.Size(152, 20);
            this.txtPXTongTien.TabIndex = 78;
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(3, 452);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(55, 13);
            this.label19.TabIndex = 77;
            this.label19.Text = "Tổng tiền:";
            // 
            // btnPXHuy
            // 
            this.btnPXHuy.Location = new System.Drawing.Point(550, 586);
            this.btnPXHuy.Name = "btnPXHuy";
            this.btnPXHuy.Size = new System.Drawing.Size(91, 35);
            this.btnPXHuy.TabIndex = 76;
            this.btnPXHuy.Text = "Hủy";
            this.btnPXHuy.UseVisualStyleBackColor = true;
            this.btnPXHuy.Click += new System.EventHandler(this.btnPXHuy_Click);
            // 
            // btnPXLuu
            // 
            this.btnPXLuu.Location = new System.Drawing.Point(447, 586);
            this.btnPXLuu.Name = "btnPXLuu";
            this.btnPXLuu.Size = new System.Drawing.Size(103, 35);
            this.btnPXLuu.TabIndex = 75;
            this.btnPXLuu.Text = "Lưu";
            this.btnPXLuu.UseVisualStyleBackColor = true;
            this.btnPXLuu.Click += new System.EventHandler(this.btnPXLuu_Click);
            // 
            // errPXMaNV
            // 
            this.errPXMaNV.ContainerControl = this;
            // 
            // errPNNoidung
            // 
            this.errPNNoidung.ContainerControl = this;
            // 
            // UPhieuXuat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnThanhToan);
            this.Controls.Add(this.label23);
            this.Controls.Add(this.label16);
            this.Controls.Add(this.txtPXTienTraLai);
            this.Controls.Add(this.label15);
            this.Controls.Add(this.txtPXTienKhachDua);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.label18);
            this.Controls.Add(this.txtPXTongTien);
            this.Controls.Add(this.label19);
            this.Controls.Add(this.btnPXHuy);
            this.Controls.Add(this.btnPXLuu);
            this.Controls.Add(this.cbbPXKhachHang);
            this.Controls.Add(this.label26);
            this.Controls.Add(this.label25);
            this.Controls.Add(this.cbbPXND);
            this.Controls.Add(this.lblPhieuXuatMa);
            this.Controls.Add(this.label24);
            this.Controls.Add(this.cbbPXMaNhanVien);
            this.Controls.Add(this.txtPXDonGia);
            this.Controls.Add(this.label22);
            this.Controls.Add(this.txtPXTenHang);
            this.Controls.Add(this.txtPXSoLuong);
            this.Controls.Add(this.label17);
            this.Controls.Add(this.label21);
            this.Controls.Add(this.cbbPXMaHang);
            this.Controls.Add(this.btnPXThemHang);
            this.Controls.Add(this.label20);
            this.Controls.Add(this.dtgPXMuaHang);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.label12);
            this.Name = "UPhieuXuat";
            this.Size = new System.Drawing.Size(1125, 632);
            this.Load += new System.EventHandler(this.UPhieuXuat_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgPXMuaHang)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPXMaNV)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPNNoidung)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbbPXKhachHang;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.ComboBox cbbPXND;
        private System.Windows.Forms.Label lblPhieuXuatMa;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.ComboBox cbbPXMaNhanVien;
        private System.Windows.Forms.TextBox txtPXDonGia;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.TextBox txtPXTenHang;
        private System.Windows.Forms.TextBox txtPXSoLuong;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.ComboBox cbbPXMaHang;
        private System.Windows.Forms.Button btnPXThemHang;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.DataGridView dtgPXMuaHang;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Button btnThanhToan;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox txtPXTienTraLai;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox txtPXTienKhachDua;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.TextBox txtPXTongTien;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Button btnPXHuy;
        private System.Windows.Forms.Button btnPXLuu;
        private System.Windows.Forms.ErrorProvider errPXMaNV;
        private System.Windows.Forms.ErrorProvider errPNNoidung;
    }
}
