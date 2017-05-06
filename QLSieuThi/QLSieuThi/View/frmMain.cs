using QLSieuThi.Controllers;
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
        frmLogin frmLogin = new frmLogin();
        public frmMain()
        {
            InitializeComponent();
        }

        public frmMain(frmLogin frmLogin)
        {
            InitializeComponent();
            this.frmLogin = frmLogin;
        }
        private void frmMain_Load(object sender, EventArgs e)
        {
            Load_tabpage_QLNhanVien();
        }
        private void Load_tabpage_QLNhanVien()
        {
            dgvNhanVien_DanhSach.DataSource = controller.getList_NhanVien();
            dgvNhanVien_DanhSach.Columns["Ma"].HeaderText = "Mã";
            dgvNhanVien_DanhSach.Columns["Ten"].HeaderText = "Tên";
            dgvNhanVien_DanhSach.Columns["GioiTinh"].HeaderText = "Giới tính";
            dgvNhanVien_DanhSach.Columns["NgaySinh"].HeaderText = "Ngày sinh";
            dgvNhanVien_DanhSach.Columns["SoDienThoai"].HeaderText = "Số điện thoại";
            dgvNhanVien_DanhSach.Columns["Luong"].HeaderText = "Lương";
            dgvNhanVien_DanhSach.Columns["PhongBan"].HeaderText = "Phòng ban";
            dgvNhanVien_DanhSach.Columns["DiaChi"].HeaderText = "Địa chỉ";
            dgvNhanVien_DanhSach.Columns["MatKhau"].HeaderText = "Mật khẩu";

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

        }

        private void btnNhanVien_Xoa_Click(object sender, EventArgs e)
        {

        }

        private void btnNhanVien_Thoat_Click(object sender, EventArgs e)
        {

        }

        private void dgvNhanVien_DanhSach_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnNhanVien_Sua_Click(sender, e);
        }
    }
}
