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

        public void frmMain_Update()
        {
            dgvNhanVien_DanhSach.DataSource = controller.getList_NhanVien();
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

            if(int.TryParse(dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[2].Value.ToString(), out temp))
            {
                nhanvien.GioiTinh = temp;
            }

            DateTime ngaysinh = DateTime.Now;
            if(DateTime.TryParse(dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[3].Value.ToString().Trim(), out ngaysinh))
            {
                nhanvien.NgaySinh = ngaysinh;
            }
            nhanvien.SoDienThoai = dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[4].Value.ToString().Trim();
           if(Double.TryParse(dgvNhanVien_DanhSach.Rows[dgvNhanVien_DanhSach.CurrentRow.Index].Cells[5].Value.ToString().Trim(), out luong)){
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

               // int selectedIndex = dgvNhanVien_DanhSach.CurrentRow.Index; ;// dgvNhanVien_DanhSach.SelectedRows[0].Index;
               // string rowID = dgvNhanVien_DanhSach[0, selectedIndex].Value.ToString();
                if (MessageBox.Show("Ban co chac  chan  xoa  nhan vien ma " + rowID + "", "Xóa nhân viên",
                    MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    controller.NhanVien_Xoa(rowID);
                    frmMain_Update();
                }
            //}
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
    }
}
