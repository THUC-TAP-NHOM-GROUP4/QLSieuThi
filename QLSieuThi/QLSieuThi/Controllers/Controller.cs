﻿using QLSieuThi.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSieuThi.Controllers
{
    class Controller
    {
        DataAccess dataAccess = new DataAccess();

        public NhanVien[] getList_NhanVien()
        {
            DataTable table = dataAccess.Query("select *from NhanVien");
            int n = table.Rows.Count;
            int i, gioitinh = 0;
            if (n == 0) return null;
            NhanVien[] list = new NhanVien[n];
            NhanVien nv = new NhanVien();
            for (i = 0; i < n; i++)
            {
                nv = new NhanVien();
                nv.Ma = table.Rows[i]["ma"].ToString().Trim();
                nv.Ten = table.Rows[i]["ten"].ToString().Trim();
                if (int.TryParse(table.Rows[i]["gioitinh"].ToString().Trim(), out gioitinh))
                {
                    nv.GioiTinh = gioitinh;
                }
                nv.NgaySinh = DateTime.Parse(table.Rows[i]["ngaysinh"].ToString().Trim());
                nv.SoDienThoai = table.Rows[i]["SDT"].ToString().Trim();
                nv.Luong = Double.Parse(table.Rows[i]["luong"].ToString().Trim());
                nv.PhongBan = table.Rows[i]["phongban"].ToString().Trim();
                nv.DiaChi = table.Rows[i]["diachi"].ToString().Trim();
                list[i] = nv;

            }
            return list;
        }
    }
}
