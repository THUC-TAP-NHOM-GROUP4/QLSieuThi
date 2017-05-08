using QLSieuThi.Controllers;
using QLSieuThi.Models;
using QLSieuThi.View;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLSieuThi
{
    public partial class frmMain : Form
    {
        private Controller controller = new Controller();
        frmLogin frmLogin;
        DataTable dt = new DataTable();
        public frmMain()
        {
            InitializeComponent();
            this.frmLogin = new frmLogin();
        }

        public frmMain(frmLogin frmLogin)
        {
            InitializeComponent();
            this.frmLogin = frmLogin;
        }
        private void frmMain_Load(object sender, EventArgs e)
        {
            Load_tabpage_QLNhanVien();
            Load_tabpage_QLKhach();
            tabPhieuNhapLoad();
            tabDanhSachPhieuNhapLoad();
            tabPhieuXuatload();
            tabDSHoadonLoad();
        }

        private void Load_tabpage_QLNhanVien()
        {
            dgvNhanVien_DanhSach.DataSource = controller.getList_NhanVien();
            dgvNhanVien_DanhSach.Columns["Ma"].HeaderText = "Mã";
            dgvNhanVien_DanhSach.Columns["Ten"].HeaderText = "Tên";
            dgvNhanVien_DanhSach.Columns["Ten"].Width = 200;
            dgvNhanVien_DanhSach.Columns["GioiTinh"].HeaderText = "Giới tính";
            dgvNhanVien_DanhSach.Columns["NgaySinh"].HeaderText = "Ngày sinh";
            dgvNhanVien_DanhSach.Columns["SoDienThoai"].HeaderText = "Số điện thoại";
            dgvNhanVien_DanhSach.Columns["Luong"].HeaderText = "Lương";
            dgvNhanVien_DanhSach.Columns["PhongBan"].HeaderText = "Phòng ban";
            dgvNhanVien_DanhSach.Columns["PhongBan"].Width = 175;
            dgvNhanVien_DanhSach.Columns["DiaChi"].HeaderText = "Địa chỉ";
            dgvNhanVien_DanhSach.Columns["MatKhau"].HeaderText = "Mật khẩu";

        }
      
        private void tabDSHoadonLoad()
        {
            dtgDSPX.DataSource = controller.getList_PhieuXuat();
            dtgDSPX.Columns["Ma"].HeaderText = "Mã phiếu xuất";
            dtgDSPX.Columns["Ngay"].HeaderText = "Ngày xuất";
            dtgDSPX.Columns["NoiDung"].HeaderText = "Nội Dung";
            dtgDSPX.Columns["KhachHangMa"].HeaderText = "Mã khách hàng";
            dtgDSPX.Columns["NhanVienMa"].HeaderText = "Mã nhân viên";
            dtgDSPX.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
         //
            dtgDSCTPX.DataSource = controller.getList_ChiTietPhieuXuat();
            dtgDSCTPX.Columns["Ma"].HeaderText = "Mã CTphiếu xuất";
            dtgDSCTPX.Columns["PhieuXuatMa"].HeaderText = "Mã phiếu xuất";
            dtgDSCTPX.Columns["KhoMa"].HeaderText = "Mã kho";
            dtgDSCTPX.Columns["HangHoaMa"].HeaderText = "Mã hàng hóa";
            dtgDSCTPX.Columns["SoLuong"].HeaderText = "Số Lượng";
            dtgDSCTPX.Columns["DonGia"].HeaderText = "Đơn giá";
            dtgDSCTPX.Columns["ThanhTien"].HeaderText = "Thành Tiền";
            dtgDSCTPX.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;


        }

        private void tabDanhSachPhieuNhapLoad()
        {
            dtgDSPhieuNhap.DataSource = controller.getList_PhieuNhap();
            dtgDSPhieuNhap.Columns["Ma"].HeaderText = "Mã Phiếu Nhập";
            dtgDSPhieuNhap.Columns["Ngay"].HeaderText = "Ngày nhập";
            dtgDSPhieuNhap.Columns["NhaCungCapMa"].HeaderText = "Mã nhà cung cấp";
            dtgDSPhieuNhap.Columns["NguoiGiaoMa"].HeaderText = "Người giao";
            dtgDSPhieuNhap.Columns["NoiDung"].HeaderText = "Nội dung";
            dtgDSPhieuNhap.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            //
            dtgChiTietPhieuNhap.DataSource = controller.getList_ChiTietPhieuNhap();
            dtgChiTietPhieuNhap.Columns["Ma"].HeaderText = "Mã CTPhiếu Nhập";
            dtgChiTietPhieuNhap.Columns["PhieuNhapMa"].HeaderText = "Mã Phiếu Nhập";
            dtgChiTietPhieuNhap.Columns["KhoMa"].HeaderText = "Mã Kho";
            dtgChiTietPhieuNhap.Columns["HangHoaMa"].HeaderText = "Mã hàng";
            dtgChiTietPhieuNhap.Columns["SoLuong"].HeaderText = "Số Lượng";
            dtgChiTietPhieuNhap.Columns["DonGia"].HeaderText = "Đơn Gía";
            dtgChiTietPhieuNhap.Columns["ThanhTien"].HeaderText = "Thành tiền";
            dtgChiTietPhieuNhap.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;


        }
        private void Load_tabpage_QLKhach()
        {
            dgvKhach_DanhSach.DataSource = controller.getList_Khach();
            dgvKhach_DanhSach.Columns["Ma"].HeaderText = "Mã";
            dgvKhach_DanhSach.Columns["Ten"].HeaderText = "Tên";
            dgvKhach_DanhSach.Columns["Ten"].Width = 200;
            dgvKhach_DanhSach.Columns["GioiTinh"].HeaderText = "Giới tính";
            dgvKhach_DanhSach.Columns["SoCMND"].HeaderText = "CMND";
            dgvKhach_DanhSach.Columns["SoCMND"].Width = 150;
            dgvKhach_DanhSach.Columns["SoDienThoai"].HeaderText = "Số điện thoại";
            dgvKhach_DanhSach.Columns["SoDienThoai"].Width = 150;
            dgvKhach_DanhSach.Columns["email"].HeaderText = "Email";
            dgvKhach_DanhSach.Columns["email"].Width = 285;
            dgvKhach_DanhSach.Columns["DiaChi"].HeaderText = "Địa chỉ";
        }
        public void frmMain_Update()
        {
            dgvNhanVien_DanhSach.DataSource = controller.getList_NhanVien();
            dgvKhach_DanhSach.DataSource = controller.getList_Khach();
        }

        private void nbiTrangChu_BanHang_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            tabControlMain.SelectTab(tabPageBanHang);
        }

        private void nbiTrangChu_QLNhanVien_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            tabControlMain.SelectTab(tabPageQLNhanVien);
        }

        private void nbiTrangChu_QLKhach_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            tabControlMain.SelectTab(tabPageKhach);
        }

        private void nbiTrangChu_ThongKe_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            tabControlMain.SelectTab(tabPageThongKe);
        }

        private void nbiTrangChu_HuongDan_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            tabControlMain.SelectTab(tabPageHuongDan);
        }

        private void nbiTrangChu_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            tabControlMain.SelectTab(tabPageTrangChu);
        }

        private void nbiTrangChu_NhapHang_LinkClicked(object sender, DevExpress.XtraNavBar.NavBarLinkEventArgs e)
        {
            tabControlMain.SelectTab(tabPageNhapHang);
        }

        private void btnNhanVien_Them_Click(object sender, EventArgs e)
        {
            frmNhanVien_Add frmNhanVien_Add = new frmNhanVien_Add();
            frmNhanVien_Add.ShowDialog();
        }

        private void btnNhanVien_Sua_Click(object sender, EventArgs e)
        {
            NhanVien nhanvien = new NhanVien();
            int temp = 0;
            Double luong = 0;
            nhanvien.Ma = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[0].Value.ToString();
            nhanvien.Ten = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[1].Value.ToString();

            if (int.TryParse(dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[2].Value.ToString(), out temp))
            {
                nhanvien.GioiTinh = temp;
            }

            DateTime ngaysinh = DateTime.Now;
            if (DateTime.TryParse(dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[3].Value.ToString().Trim(), out ngaysinh))
            {
                nhanvien.NgaySinh = ngaysinh;
            }
            nhanvien.SoDienThoai = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[4].Value.ToString().Trim();
            if (Double.TryParse(dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[5].Value.ToString().Trim(), out luong))
            {
                nhanvien.Luong = temp;
            }
            nhanvien.PhongBan = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[6].Value.ToString().Trim();
            nhanvien.DiaChi = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[7].Value.ToString().Trim();
            nhanvien.MatKhau = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[8].Value.ToString().Trim();
            frmNhanVien_Update frmNhanVien_Update = new frmNhanVien_Update(this, nhanvien);
            frmNhanVien_Update.ShowDialog();
        }

        private void btnNhanVien_Xoa_Click(object sender, EventArgs e)
        {
            String rowID = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[0].Value.ToString();
            if (MessageBox.Show("Ban co chac  chan  xoa  nhan vien ma " + rowID + "", "Xóa nhân viên",
                MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                controller.NhanVien_Xoa(rowID);
                frmMain_Update();
            }
        }

        private void btnNhanVien_Thoat_Click(object sender, EventArgs e)
        {
            tabControlMain.SelectTab(tabPageTrangChu);
        }

        private void dgvNhanVien_DanhSach_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnNhanVien_Sua_Click(sender, e);
        }

        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.frmLogin.Visible = true;
        }

        private void btnKhach_Them_Click(object sender, EventArgs e)
        {
            frmKhach_Add frmKhach_Add = new frmKhach_Add();
            frmKhach_Add.ShowDialog();
        }

        private void btnKhach_Sua_Click(object sender, EventArgs e)
        {
            KhachHang khachhang = new KhachHang();
            int temp = 0;
            Double luong = 0;
            khachhang.Ma = dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[0].Value.ToString();
            khachhang.Ten = dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[1].Value.ToString();

            if (int.TryParse(dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[2].Value.ToString(), out temp))
            {
                khachhang.GioiTinh = temp;
            }
            khachhang.DiaChi = dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[3].Value.ToString().Trim();

            khachhang.SoDienThoai = dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[4].Value.ToString().Trim();
            khachhang.SoCMND = dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[5].Value.ToString().Trim();
            khachhang.Email = dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[6].Value.ToString().Trim();


            frmKhach_Update frmKhach_Update = new frmKhach_Update(this, khachhang);
            frmKhach_Update.ShowDialog();
        }
        private void btnKhach_Xoa_Click(object sender, EventArgs e)
        {
            String rowID = dgvKhach_DanhSach.Rows[dgvKhach_DanhSach.CurrentRow.Index].Cells[0].Value.ToString();
            if (MessageBox.Show("Bạn có chắc chắn xóa khách có mã  " + rowID + "", "Xóa khách hàng",
                MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                controller.Khach_Xoa(rowID);
                frmMain_Update();
            }
        }

        private void btnKhach_Thoat_Click(object sender, EventArgs e)
        {
            tabControlMain.SelectTab(tabPageTrangChu);
        }
        private void tabPhieuNhapLoad()
        {
           
            dt.Columns.Add("Mã hàng", typeof(string));
            dt.Columns.Add("Mã kho", typeof(string));
            dt.Columns.Add("Số Lượng", typeof(string));
            dt.Columns.Add("Đơn giá", typeof(string));
            dt.Columns.Add("Thành tiền", typeof(string));
            dtgPhieuNhapHang.DataSource = dt;
            dtgPhieuNhapHang.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            cbbPNNhaCungCap.DataSource = controller.getList_NhaCungCap();
            cbbPNNhaCungCap.DisplayMember = "ten";
            cbbPNNhaCungCap.ValueMember = "ma";
            cbbPNKhoHang.DataSource = controller.getList_KhoHang();
            cbbPNKhoHang.DisplayMember = "ten";
            cbbPNKhoHang.ValueMember = "ma";
            cbb_PN_MaMatHang.DataSource = controller.getList_HangHoa();
            cbb_PN_MaMatHang.DisplayMember = "ma";
            cbb_PN_MaMatHang.ValueMember = "ma";


        }
        private void tabPhieuXuatload()
        {
            dt = new DataTable();
            PhieuXuat px = new PhieuXuat();
            dt.Columns.Add("mã hàng", typeof(string));
            dt.Columns.Add("Mã kho", typeof(string));
            dt.Columns.Add("số lượng", typeof(string));
            dt.Columns.Add("đơn giá", typeof(string));
            dt.Columns.Add("thành tiền", typeof(string));
            dtgPXMuaHang.DataSource = dt;
            dtgPXMuaHang.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            cbbPXMaNhanVien.DataSource = controller.getList_NhanVien();
            cbbPXMaNhanVien.DisplayMember = "ma";
            cbbPXMaNhanVien.ValueMember = "ma";
            lblPhieuXuatMa.Text = controller.get_PXma(px);
            cbbPXMaHang.DataSource = controller.getList_HangHoa();
            cbbPXMaHang.DisplayMember = "ma";
            cbbPXMaHang.ValueMember = "ma";
            cbbPXKhachHang.DataSource = controller.getList_Khach();
            cbbPXKhachHang.DisplayMember = "ten";
            cbbPXKhachHang.ValueMember = "ma";

        }

        double tongtien = 0;
        private bool CheckPN()
        {
            if(txtPNNguoiGiao.Text.ToString().Trim().Equals(""))
            {
                errPNNguoiGiao.SetError(txtPNNguoiGiao, "nhap ten nguoi giao");
                return false;
            }
            errPNNguoiGiao.Clear();
            if (cbbPNKhoHang.Text.ToString().Trim().Equals(""))
            {
                errPNKhoMa.SetError(cbbPNKhoHang, "nhap ten nguoi giao");
                return false;
            }
            errPNKhoMa.Clear();
            if (rtbPNNoiDungNhap.Text.ToString().Trim().Equals(""))
            {
                errPNNoidung.SetError(rtbPNNoiDungNhap, "nhap ten nguoi giao");
                return false;
            }
            errPNNoidung.Clear();
            if (txtPNTenHang.Text.ToString().Trim().Equals(""))
            {
                errTenHang.SetError(txtPNTenHang, "nhap ten nguoi giao");
                return false;
            }
            errTenHang.Clear();
            if (txtPNSoLuong.Text.ToString().Trim().Equals(""))
            {
                errPNSoLuong.SetError(txtPNSoLuong, "nhap ten nguoi giao");
                return false;
            }
            errPNSoLuong.Clear();
            return true;
        }
        private void btnPNThem_Click(object sender, EventArgs e)
        {
            

            if (CheckPN())
            {
                int row = dtgPhieuNhapHang.Rows.Count + 1;
                double soluong = 0, dongia = 0, thanhtien = 0;
                double.TryParse(txtPNSoLuong.Text, out soluong);
                double.TryParse(txtPNDonGia.Text, out dongia);
                thanhtien = soluong * dongia;
                ChiTietPhieuNhap ctpx = new ChiTietPhieuNhap();
                ctpx.HangHoaMa = cbb_PN_MaMatHang.Text.ToString().Trim();
                ctpx.KhoMa = cbbPNKhoHang.SelectedValue.ToString().Trim();
                ctpx.SoLuong = int.Parse(txtPNSoLuong.Text.ToString().Trim());
                ctpx.DonGia = dongia;
                ctpx.ThanhTien = thanhtien;
                dt.Rows.Add(ctpx.HangHoaMa, ctpx.KhoMa, ctpx.SoLuong.ToString(), ctpx.DonGia.ToString(), ctpx.ThanhTien.ToString());
                dtgPhieuNhapHang.DataSource = dt;
                tongtien += thanhtien;
             

            }
            txtTongTien.Text = tongtien.ToString();
        }
        private void cbb_PN_MaMatHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPNTenHang.Text = controller.getTenHang(cbb_PN_MaMatHang.Text.ToString().Trim());
            txtPNDonGia.Text= controller.getDonGia(cbb_PN_MaMatHang.Text.ToString().Trim());
        }

        private void btnPNHuy_Click(object sender, EventArgs e)
        {
            this.dtgPhieuNhapHang.DataSource = null;
         
        }

        private void btnPNLuu_Click(object sender, EventArgs e)
        {
            double tongtien = 0;
            PhieuNhap pn = new PhieuNhap();
            
            pn.Ma = controller.getMaPN(pn);

            pn.NguoiGiaoMa = txtPNNguoiGiao.Text.ToString().Trim();
            pn.NhaCungCapMa = cbbPNNhaCungCap.SelectedValue.ToString().Trim();
            pn.NoiDung = rtbPNNoiDungNhap.Text.ToString().Trim();
            controller.insertPN(pn);
            ChiTietPhieuNhap ctpn = new ChiTietPhieuNhap();
            foreach(DataRow row in dt.Rows)
            {
             
                ctpn.HangHoaMa = row[0].ToString();
                ctpn.KhoMa = row[1].ToString();
                ctpn.SoLuong = int.Parse(row[2].ToString());
                double dongia = 0;
                double.TryParse(row[3].ToString(), out dongia);
                ctpn.DonGia = dongia;
                controller.insertChiTietPN(ctpn,pn.Ma);
              
            }
            MessageBox.Show("Đã lưu hóa đơn!");
            tabControlMain.SelectTab(tabPageDanhSachPhieuNhap);
            dtgDSPhieuNhap.DataSource = controller.getList_PhieuNhap();
            dtgChiTietPhieuNhap.DataSource = controller.getList_ChiTietPhieuNhap();
        }
        private bool checkpx()
        {
            if (cbbPXMaNhanVien.Text.ToString().Trim().Equals(""))
            {
                errPXMaNV.SetError(cbbPXMaNhanVien, "nhap nhan vien");
                return false;
            }
            errPXMaNV.Clear();
            if (cbbPXND.Text.ToString().Trim().Equals(""))
            {
                errPNNoidung.SetError(cbbPXND, "chon noi dung");
                return false;
            }
            errPNNoidung.Clear();
            if (cbbPXKhachHang.Text.ToString().Trim().Equals(""))
            {
                errPXMaNV.SetError(cbbPXKhachHang, "nhap khach hang");
                return false;
            }
            errPXMaNV.Clear();
            if (txtPXTenHang.Text.ToString().Trim().Equals(""))
            {
                errTenHang.SetError(txtPXTenHang, "nhap ten hang");
                return false;
            }
            errTenHang.Clear();
            if (txtPXSoLuong.Text.ToString().Trim().Equals(""))
            {
                errPNSoLuong.SetError(txtPXSoLuong, "nhap so luong");
                return false;
            }
            errPNSoLuong.Clear();
            return true;
        }
        double tongtienpx = 0;
        private void btnPXThemHang_Click(object sender, EventArgs e)
        {
           
            if (checkpx())
            {
                int row = dtgPXMuaHang.Rows.Count + 1;
                double soluong = 0, dongia = 0, thanhtien = 0;
                double.TryParse(txtPXSoLuong.Text, out soluong);
                double.TryParse(txtPXDonGia.Text, out dongia);
                thanhtien = soluong * dongia;
                ChiTietPhieuXuat ctpx = new ChiTietPhieuXuat();
                ctpx.HangHoaMa = cbbPXMaHang.Text.ToString().Trim();
                ctpx.SoLuong = int.Parse(txtPXSoLuong.Text.ToString().Trim());
                ctpx.DonGia = dongia;
                ctpx.ThanhTien = thanhtien;
                ctpx.KhoMa = controller.getKhoma(ctpx.HangHoaMa);
                dt.Rows.Add(ctpx.HangHoaMa,ctpx.KhoMa.ToString(),ctpx.SoLuong.ToString(), ctpx.DonGia.ToString(), ctpx.ThanhTien.ToString());
                dtgPXMuaHang.DataSource = dt;
                tongtienpx += thanhtien;


            }
            txtPXTongTien.Text = tongtienpx.ToString();
        }

        private void btnPXHuy_Click(object sender, EventArgs e)
        {
            this.dtgPXMuaHang.DataSource = null;
        }

        private void cbbPXMaHang_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtPXTenHang.Text = controller.getTenHang(cbbPXMaHang.Text.ToString().Trim());
            txtPXDonGia.Text = controller.getDonGia(cbbPXMaHang.Text.ToString().Trim());

        }

        private void tabPageBanHang_Click(object sender, EventArgs e)
        {
        
        }

        private void btnPXLuu_Click(object sender, EventArgs e)
        {
            double tongtien = 0;
            PhieuXuat px = new PhieuXuat();
            px.Ma = controller.get_PXma(px);
            if (cbbPXND.Text.ToString().Trim().Equals("Bán lẻ"))
            {
              
                px.KhachHangMa = "KH0001";
            }
         
            px.KhachHangMa = cbbPXKhachHang.SelectedValue.ToString().Trim();
            px.NoiDung = cbbPXND.Text.ToString().Trim();
            px.NhanVienMa = cbbPXMaNhanVien.SelectedValue.ToString().Trim();
            controller.insertPX(px);
            ChiTietPhieuXuat ctpx = new ChiTietPhieuXuat();
            foreach (DataRow row in dt.Rows)
            {

                ctpx.HangHoaMa = row[0].ToString();
                ctpx.SoLuong = int.Parse(row[2].ToString());
                double dongia = 0;
                double.TryParse(row[3].ToString(), out dongia);
                ctpx.DonGia = dongia;
               
                controller.insertChiTietPX(ctpx, px.Ma);
        

            }
            MessageBox.Show("Đã lưu hóa đơn!");
            tabControlMain.SelectTab(tabPageDSPX);
            dtgDSPX.DataSource = controller.getList_PhieuXuat();
            dtgDSCTPX.DataSource = controller.getList_ChiTietPhieuXuat();

        }

      

        private void cbbPXND_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbPXND.Text.ToString().Trim().Equals("Bán lẻ"))
            {
                cbbPXKhachHang.Enabled = false;

            }
            else cbbPXKhachHang.Enabled = true;
        }
        
        private void btnThanhToan_Click(object sender, EventArgs e)
        {
            
            double pxtienkhach = 0,tientralai=0,tongtienhoadon=0;
            double.TryParse(txtPXTienKhachDua.Text.ToString().Trim(), out pxtienkhach);
            double.TryParse(txtPXTongTien.Text.ToString().Trim(), out tongtienhoadon);
            tientralai = pxtienkhach - tongtienhoadon;
            txtPXTienTraLai.Text = tientralai.ToString();

        }
    }
}
