﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QLSieuThi.Models;
using QLSieuThi.Controllers;
using QLSieuThi.View;
namespace QLSieuThi.View
{
    public partial class UNhapHang : UserControl
    {
        private Controller controller = new Controller();
        DataTable dt = new DataTable();
        public UNhapHang()
        {
            InitializeComponent();
        }

        private void UNhapHang_Load(object sender, EventArgs e)
        {
            tabPhieuNhapLoad();
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

        private void cbb_PN_MaMatHang_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtPNTenHang.Text = controller.getTenHang(cbb_PN_MaMatHang.Text.ToString().Trim());
            txtPNDonGia.Text = controller.getDonGia(cbb_PN_MaMatHang.Text.ToString().Trim());

        }
        double tongtien = 0;
        private bool CheckPN()
        {
            if (txtPNNguoiGiao.Text.ToString().Trim().Equals(""))
            {
                errPNNguoiGiao.SetError(txtPNNguoiGiao, "nhap ten nguoi giao");
                return false;
            }
            errPNNguoiGiao.Clear();
            if (cbbPNKhoHang.Text.ToString().Trim().Equals(""))
            {
                errPNNguoiGiao.SetError(cbbPNKhoHang, "nhap ten nguoi giao");
                return false;
            }
            errPNNguoiGiao.Clear();
            if (rtbPNNoiDungNhap.Text.ToString().Trim().Equals(""))
            {
                errPNNguoiGiao.SetError(rtbPNNoiDungNhap, "nhap ten nguoi giao");
                return false;
            }
            errPNNguoiGiao.Clear();
            if (txtPNTenHang.Text.ToString().Trim().Equals(""))
            {
                errPNNguoiGiao.SetError(txtPNTenHang, "nhap ten nguoi giao");
                return false;
            }
            errPNNguoiGiao.Clear();
            if (txtPNSoLuong.Text.ToString().Trim().Equals(""))
            {
                errPNNguoiGiao.SetError(txtPNSoLuong, "nhap ten nguoi giao");
                return false;
            }
            errPNNguoiGiao.Clear();
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
            foreach (DataRow row in dt.Rows)
            {

                ctpn.HangHoaMa = row[0].ToString();
                ctpn.KhoMa = row[1].ToString();
                ctpn.SoLuong = int.Parse(row[2].ToString());
                double dongia = 0;
                double.TryParse(row[3].ToString(), out dongia);
                ctpn.DonGia = dongia;
                controller.insertChiTietPN(ctpn, pn.Ma);

            }
            MessageBox.Show("Đã lưu hóa đơn!");
            //tabControlMain.SelectTab(tabPageDanhSachPhieuNhap);
            //dtgDSPhieuNhap.DataSource = controller.getList_PhieuNhap();
            //dtgChiTietPhieuNhap.DataSource = controller.getList_ChiTietPhieuNhap();
        }
    }
}
