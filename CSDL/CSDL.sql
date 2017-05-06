
CREATE TABLE [dbo].[HangHoa](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[hoadonma] [varchar](20) NULL FOREIGN KEY (hoadonma) REFERENCES HoaDon(ma),
	[TenHang] [nvarchar](50) NULL ,
	[SoLuong] [int] NULL,
	[NgaySX] [date] NULL,
	[HanSD] [date] NULL,
	[NoiSX] [nvarchar](50) NULL)



CREATE TABLE [dbo].[HoaDon](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[KHma] [varchar](20) NULL FOREIGN KEY (KHma) REFERENCES KhachHang(ma),
	[TongTienTT] [float] NULL,
	[nvma] [varchar](20) NULL FOREIGN KEY (nvma) REFERENCES NhanVien(ma),
	[NgayTT] [date] NULL
	)

CREATE TABLE [dbo].[KhachHang](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[Ten] [nvarchar](50) NULL,
	[gioitinh] [int] NULL,
	[diachi] [nvarchar](50) NULL,
	[SDT] [varchar(20)] NULL,
	[socmnd] [int] NULL,
	[Email] [varchar](50) NULL)

CREATE TABLE [dbo].[NhanVien](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[Ten] [nvarchar](50) NOT NULL,
	[Gioitinh] [int] NULL,
	[Ngaysinh] [date] NULL,
	[SDT] [int] NULL,
	[Luong] [float] NULL,
	[PhongBan] [nvarchar](30) NULL,
	[DiaChi] [text] NULL,
	[MatKhau] [varchar](20) NULL)




INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H001', N'HD001', N'Quần Áo', 1000, CAST(N'2014-02-04' AS Date), CAST(N'1900-01-01' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H002', N'HD002', N'Chăn Đệm', 1000, CAST(N'2014-03-04' AS Date), CAST(N'1900-01-01' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H003', N'HD003', N'Thực Phẩm', 1000, CAST(N'2014-05-04' AS Date), CAST(N'2016-04-05' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H004', N'HD004', N'Đồ gia dụng', 1000, CAST(N'2014-08-04' AS Date), CAST(N'2016-05-03' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H005', N'HD005', N'Mỹ Phẩm', 1000, CAST(N'2014-09-04' AS Date), CAST(N'2015-07-05' AS Date), N'Hà Nội')
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD001', N'KH001', 23, N'NV001', CAST(N'2015-03-04' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD002', N'KH002', 23, N'NV002', CAST(N'2015-03-07' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD003', N'KH003', 23, N'NV003', CAST(N'2015-02-09' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD004', N'KH004', 23, N'NV004', CAST(N'2015-02-03' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD005', N'KH005', 23, N'NV005', CAST(N'2015-02-04' AS Date))
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH001', N'hoàng văn tùng', 0, N'hà nội', 1234234564, 173876534, N'hoangtung@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH002', N'hoàng văn nam', 0, N'hà nội', 1234234564, 173876534, N'hoangnam@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH003', N'hoàng văn hải', 0, N'hà nội', 1234234564, 173876534, N'hoanghai@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH004', N'hoàng văn bình', 0, N'hà nội', 1234234564, 173876534, N'hoangbinh@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH005', N'hoàng văn tiến', 0, N'hà nội', 1234234564, 173876534, N'hoangtien@gmail.com')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV001', N'LÊ VĂN AN', 0, CAST(N'1990-03-04' AS Date), 123456789, 20, N'phòng kinh doanh', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV002', N'NGUYỄN VĂN AN', 0, CAST(N'1999-03-04' AS Date), 123456789, 20, N'phòng khách hàng', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV003', N'NGUYỄN VĂN BÌNH', 0, CAST(N'1890-03-04' AS Date), 123456789, 20, N'phòng kế toán', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV004', N'LÊ VĂN HẢI', 0, CAST(N'1970-03-04' AS Date), 123456789, 5, N'phòng bảo vệ', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV005', N'LÊ VĂN ANH', 0, CAST(N'1990-03-04' AS Date), 123456789, 20, N'phòng giám đốc', N'HN', N'1111')



CREATE proc [dbo].[proc_insertNV](@ten nvarchar(50),@gioitinh int, @ngaysinh date, @sodienthoai varchar(20),
	@luong money,@phongban nvarchar(50), @diachi nvarchar(200), @matkhau varchar(20))
as
begin
	insert into NhanVien(ma, ten, gioitinh, Ngaysinh, SDT, Luong, PhongBan, DiaChi, MatKhau)
	values (dbo.auto_ma_nv(), @ten, @gioitinh,@ngaysinh,  @sodienthoai,@luong, @phongban, @diachi, @matkhau)
end

create proc proc_insertKhachHang (@ten nvarchar(50), @gioitinh int, @sodienthoai varchar(20), 
@email varchar(50), @socmnd varchar(20), @diachi nvarchar(50) )
as 
begin
	insert into KhachHang (ma, ten, gioitinh, SDT, Email, socmnd, diachi)
	values (dbo.auto_ma_KhachHang(), @ten, @gioitinh, @sodienthoai, @email, @socmnd, @diachi)

end


CREATE function [dbo].[auto_ma_nv]() returns varchar(6)
as
begin
	declare @ma varchar(50)
	if(select count(ma) from NhanVien)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,3)) from NhanVien
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'NV000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'NV00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'NV0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end


CREATE function [dbo].[auto_ma_HangHoa]() returns varchar(6)
as
begin
	declare @ma varchar(50)
	if(select count(ma) from HangHoa)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,3)) from HangHoa
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'HH000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'HH00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'HH0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end


CREATE function [dbo].[auto_ma_KhachHang]() returns varchar(6)
as
begin
	declare @ma varchar(50)
	if(select count(ma) from KhachHang)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,3)) from KhachHang
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'KH000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'KH00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'KH0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end

 CREATE proc [dbo].[proc_updateNV](@ma varchar(20), @ten nvarchar(50), @gioitinh int, @ngaysinh date,@sodienthoai varchar(20),
 @luong money, @phongban nvarchar(50), @diachi nvarchar(50), @matkhau varchar(20) )
 as
 begin
	
	update NhanVien set  Ten = @ten, Gioitinh = @gioitinh, Ngaysinh = @ngaysinh, Diachi= @diachi,
	SDT = @sodienthoai, Luong = @luong, PhongBan = @phongban, MatKhau = @matkhau
	
	 where  Ma = @ma
 end


---------- 
  create proc [dbo].[proc_updateKhachHang](@ma varchar(20), @ten nvarchar(50), @gioitinh int,@sodienthoai varchar(20),
  @diachi nvarchar(50), @email varchar(20), @socmnd varchar(20))
 as
 begin
	
	update KhachHang set  Ten = @ten, Gioitinh = @gioitinh, 
	SDT = @sodienthoai, socmnd = @socmnd, Email = @email, diachi = @diachi
	
	 where  Ma = @ma
 end

 --------------
 alter proc [dbo].[proc_deleteNV](@ma varchar(10))
as
begin 
	if not exists (select nvma from hoadon where nvma = @ma)
	 delete nhanvien where ma = @ma
end

 alter proc [dbo].[proc_deleteKhachHang](@ma varchar(10))
as
begin 
	if not exists (select ma from hoadon where KHma = @ma)
		 delete KhachHang where ma = @ma
end


select *from hoadon