USE [master]
GO
/****** Object:  Database [BanHangSieuThi]    Script Date: 09/05/2017 4:44:50 CH ******/
CREATE DATABASE [BanHangSieuThi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHangSieuThi', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.THANHHUONG\MSSQL\DATA\BanHangSieuThi.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHangSieuThi_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.THANHHUONG\MSSQL\DATA\BanHangSieuThi_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanHangSieuThi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanHangSieuThi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanHangSieuThi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanHangSieuThi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanHangSieuThi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanHangSieuThi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanHangSieuThi] SET  MULTI_USER 
GO
ALTER DATABASE [BanHangSieuThi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanHangSieuThi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanHangSieuThi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanHangSieuThi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BanHangSieuThi] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BanHangSieuThi]
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_ChiTietPhieuNhap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[auto_ma_ChiTietPhieuNhap]() returns varchar(8)
as
begin
	declare @ma varchar(8)
	if(select count(ma) from ChiTietPhieuNhap)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from ChiTietPhieuNhap
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'CTPN000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'CTPN00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'CTPN0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_ChiTietPhieuXuat]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[auto_ma_ChiTietPhieuXuat]() returns varchar(8)
as
begin
	declare @ma varchar(8)
	if(select count(ma) from ChiTietPhieuXuat)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from ChiTietPhieuXuat
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'CTPX000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'CTPX00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'CTPX0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_HangHoa]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_KhachHang]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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

GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_nv]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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

GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_NhaCungCap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[auto_ma_NhaCungCap]() returns varchar(7)
as
begin
	declare @ma varchar(7)
	if(select count(ma) from NhaCungCap)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from NhaCungCap
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'NCC000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'NCC00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'NCC0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_PhieuNhap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[auto_ma_PhieuNhap]() returns varchar(6)
as
begin
	declare @ma varchar(6)
	if(select count(ma) from PhieuNhap)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from PhieuNhap
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'PN000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'PN00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'PN0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_PhieuXuat]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[auto_ma_PhieuXuat]() returns varchar(6)
as
begin
	declare @ma varchar(6)
	if(select count(ma) from PhieuXuat)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from PhieuXuat
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'PX000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'PX00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'PX0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[ma] [varchar](20) NOT NULL,
	[phieunhapma] [varchar](20) NULL,
	[hanghoama] [varchar](20) NULL,
	[khoma] [varchar](20) NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[thanhtien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[ma] [varchar](20) NOT NULL,
	[phieuxuatma] [varchar](20) NULL,
	[hanghoama] [varchar](20) NULL,
	[khoma] [varchar](20) NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[thanhtien] [money] NULL,
 CONSTRAINT [PK__ChiTietP__3213C8B7653487D4] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangHoa](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[soluong] [int] NULL,
	[ngaysanxuat] [date] NULL,
	[hansudung] [date] NULL,
	[noisanxuat] [nvarchar](50) NULL,
	[dongia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ma] [varchar](20) NOT NULL,
	[ngay] [date] NULL,
	[khachhangma] [varchar](20) NULL,
	[thanhtien] [float] NULL,
	[nhanvienma] [varchar](20) NULL,
 CONSTRAINT [PK__HoaDon__3214CC9F4BFF39B9] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Ma] [varchar](20) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[gioitinh] [int] NULL,
	[diachi] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
	[socmnd] [int] NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kho](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[dienthoai] [varchar](20) NULL,
	[masothue] [int] NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Ma] [varchar](20) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Gioitinh] [int] NULL,
	[Ngaysinh] [date] NULL,
	[SDT] [int] NULL,
	[Luong] [float] NULL,
	[PhongBan] [nvarchar](30) NULL,
	[DiaChi] [text] NULL,
	[MatKhau] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[ma] [varchar](20) NOT NULL,
	[ngay] [date] NULL,
	[nhacungcapma] [varchar](20) NULL,
	[manguoigiao] [varchar](20) NULL,
	[noidung] [text] NULL,
	[tongtien] [money] NULL,
 CONSTRAINT [PK__PhieuNha__3213C8B7B5170A36] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[ma] [varchar](20) NOT NULL,
	[ngay] [date] NULL,
	[noidung] [text] NULL,
	[khachhangma] [varchar](20) NULL,
	[nhanvienma] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([hanghoama])
REFERENCES [dbo].[HangHoa] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([khoma])
REFERENCES [dbo].[Kho] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__phieu__36B12243] FOREIGN KEY([phieunhapma])
REFERENCES [dbo].[PhieuNhap] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK__ChiTietPh__phieu__36B12243]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__hangh__2C3393D0] FOREIGN KEY([hanghoama])
REFERENCES [dbo].[HangHoa] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK__ChiTietPh__hangh__2C3393D0]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__khoma__2D27B809] FOREIGN KEY([khoma])
REFERENCES [dbo].[Kho] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK__ChiTietPh__khoma__2D27B809]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__phieu__2B3F6F97] FOREIGN KEY([phieuxuatma])
REFERENCES [dbo].[PhieuXuat] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK__ChiTietPh__phieu__2B3F6F97]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__KHma__145C0A3F] FOREIGN KEY([khachhangma])
REFERENCES [dbo].[KhachHang] ([Ma])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__KHma__145C0A3F]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__nvma__15502E78] FOREIGN KEY([nhanvienma])
REFERENCES [dbo].[NhanVien] ([Ma])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__nvma__15502E78]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__PhieuNhap__nhacu__32E0915F] FOREIGN KEY([nhacungcapma])
REFERENCES [dbo].[NhaCungCap] ([ma])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK__PhieuNhap__nhacu__32E0915F]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([khachhangma])
REFERENCES [dbo].[KhachHang] ([Ma])
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([nhanvienma])
REFERENCES [dbo].[NhanVien] ([Ma])
GO
/****** Object:  StoredProcedure [dbo].[proc_deleteKhachHang]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[proc_deleteKhachHang](@ma varchar(10))
as
begin 
	if not exists (select ma from hoadon where KHma = @ma)
		 delete KhachHang where ma = @ma
end
GO
/****** Object:  StoredProcedure [dbo].[proc_deleteNV]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_deleteNV](@ma varchar(10))
as
begin 
	if not exists (select nvma from hoadon where nvma = @ma)
	 delete nhanvien where ma = @ma
end
GO
/****** Object:  StoredProcedure [dbo].[proc_insertKhachHang]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[proc_insertKhachHang] (@ten nvarchar(50), @gioitinh int, @sodienthoai varchar(20), 
@email varchar(50), @socmnd varchar(20), @diachi nvarchar(50) )
as 
begin
	insert into KhachHang (ma, ten, gioitinh, SDT, Email, socmnd, diachi)
	values (dbo.auto_ma_KhachHang(), @ten, @gioitinh, @sodienthoai, @email, @socmnd, @diachi)

end

GO
/****** Object:  StoredProcedure [dbo].[proc_insertNV]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[proc_insertNV](@ten nvarchar(50),@gioitinh int, @ngaysinh date, @sodienthoai varchar(20),
	@luong money,@phongban nvarchar(50), @diachi nvarchar(200), @matkhau varchar(20))
as
begin
	insert into NhanVien(ma, ten, gioitinh, Ngaysinh, SDT, Luong, PhongBan, DiaChi, MatKhau)
	values (dbo.auto_ma_nv(), @ten, @gioitinh,@ngaysinh,  @sodienthoai,@luong, @phongban, @diachi, @matkhau)
end

GO
/****** Object:  StoredProcedure [dbo].[proc_updateKhachHang]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_updateKhachHang](@ma varchar(20), @ten nvarchar(50), @gioitinh int,@sodienthoai varchar(20),
  @diachi nvarchar(50), @email varchar(20), @socmnd varchar(20))
 as
 begin
	
	update KhachHang set  Ten = @ten, Gioitinh = @gioitinh, 
	SDT = @sodienthoai, socmnd = @socmnd, Email = @email, diachi = @diachi
	
	 where  Ma = @ma
 end

GO
/****** Object:  StoredProcedure [dbo].[proc_updateNV]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[proc_updateNV](@ma varchar(20), @ten nvarchar(50), @gioitinh int, @ngaysinh date,@sodienthoai varchar(20),
 @luong money, @phongban nvarchar(50), @diachi nvarchar(50), @matkhau varchar(20) )
 as
 begin
	
	update NhanVien set  Ten = @ten, Gioitinh = @gioitinh, Ngaysinh = @ngaysinh, Diachi= @diachi,
	SDT = @sodienthoai, Luong = @luong, PhongBan = @phongban, MatKhau = @matkhau
	
	 where  Ma = @ma
 end

GO
/****** Object:  StoredProcedure [dbo].[procedure_insertChiTietPhieuNhap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procedure_insertChiTietPhieuNhap](@phieunhapma varchar(20),@hanghoama varchar(20),@khoma varchar(20),@soluong int,@dongia float)
as
begin
declare @thanhtien money
set @thanhtien=@soluong*@dongia
insert into ChiTietPhieuNhap(ma,phieunhapma,hanghoama,khoma,soluong,dongia,thanhtien)
values(dbo.auto_ma_ChiTietPhieuNhap(),@phieunhapma,@hanghoama,@khoma,@soluong,@dongia,@thanhtien)

end

GO
/****** Object:  StoredProcedure [dbo].[procedure_insertChiTietPhieuXuat]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procedure_insertChiTietPhieuXuat](@phieuxuatma varchar(20),@hanghoama varchar(20),@soluong int,@dongia float)
as
begin
declare @thanhtien money,@khoma varchar(20)
set @thanhtien=@soluong*@dongia
set @khoma=(select top(1) khoma from ChiTietPhieuNhap where hanghoama=@hanghoama)
insert into ChiTietPhieuXuat(ma,phieuxuatma,hanghoama,khoma,soluong,dongia,thanhtien)
values(dbo.auto_ma_ChiTietPhieuXuat(),@phieuxuatma,@hanghoama,@khoma,@soluong,@dongia,@thanhtien)

end

GO
/****** Object:  StoredProcedure [dbo].[procedure_insertPhieuNhap]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procedure_insertPhieuNhap](@nhacungcapma varchar(20),@manguoigiao varchar(20),@noidung text)
as
begin
insert into PhieuNhap(ma,ngay,nhacungcapma,manguoigiao,noidung)
values(dbo.auto_ma_PhieuNhap(),GETDATE(),@nhacungcapma,@manguoigiao,@noidung)
end
GO
/****** Object:  StoredProcedure [dbo].[procedure_insertPhieuXuat]    Script Date: 09/05/2017 4:44:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[procedure_insertPhieuXuat](@noidung text,@khachhangma varchar(20),@nhanvienma varchar(20))
as
begin
insert into PhieuXuat(ma,ngay,noidung,khachhangma,nhanvienma)
values(dbo.auto_ma_PhieuXuat(),GETDATE(),@noidung,@khachhangma,@nhanvienma)
end
GO
USE [master]
GO
ALTER DATABASE [BanHangSieuThi] SET  READ_WRITE 
GO
