USE BanHangSieuThi
GO
/****** Object:  Database [BanHangSieuThi]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_ChiTietPhieuNhap]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_ChiTietPhieuXuat]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_ChucVu]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[auto_ma_ChucVu]() returns varchar(6)
as
begin
	declare @ma varchar(6)
	if(select count(ma) from ChucVu)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from ChucVu
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'CV000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'CV00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'CV0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_DonViQuyDoi]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[auto_ma_DonViQuyDoi]() returns varchar(8)
as
begin
	declare @ma varchar(8)
	if(select count(ma) from DonViQuyDoi)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from DonViQuyDoi
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'DVQD000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'DVQD00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'DVQD0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_HangHoa]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_KhachHang]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_Kho]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[auto_ma_Kho]() returns varchar(5)
as
begin
	declare @ma varchar(5)
	if(select count(ma) from Kho)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from Kho
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'K000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'K00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'K0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_KhuyenMai]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[auto_ma_KhuyenMai]() returns varchar(6)
as
begin
	declare @ma varchar(5)
	if(select count(ma) from KhuyenMai)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from KhuyenMai
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'KM000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'KM00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'KM0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_nv]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_NhaCungCap]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_NhomHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[auto_ma_NhomHang]() returns varchar(6)
as
begin
	declare @ma varchar(6)
	if(select count(ma) from NhomHang)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from NhomHang
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'NH000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'NH00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'NH0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_PhieuNhap]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_PhieuXuat]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  UserDefinedFunction [dbo].[auto_ma_PhongBan]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[auto_ma_PhongBan]() returns varchar(6)
as
begin
	declare @ma varchar(6)
	if(select count(ma) from PhongBan)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from PhongBan
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'PB000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'PB00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'PB0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[auto_ma_TheKhachHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[auto_ma_TheKhachHang]() returns varchar(7)
as
begin
	declare @ma varchar(7)
	if(select count(ma) from TheKhachHang)=0
	set @ma='0'
	else 
		select @ma=max(right(ma,4)) from TheKhachHang
		set @ma=case
		when
		@ma>=0 and @ma<9 then 'TKH000'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=9 and @ma<99then 'TKH00'+CONVERT(char,CONVERT(int,@ma)+1)
		when @ma>=99 and @ma<999then 'TKH0'+CONVERT(char,CONVERT(int,@ma)+1)
		end
		return @ma
end
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 30/05/2017 7:09:22 SA ******/
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
	[donvi] [nvarchar](20) NULL,
	[donviquydoima] [varchar](20) NULL,
	[dongia] [float] NULL,
	[thanhtien] [money] NULL,
 CONSTRAINT [PK__ChiTietP__3213C8B711867C35] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 30/05/2017 7:09:22 SA ******/
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
	[donvi] [nvarchar](20) NULL,
	[donviquydoima] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[ChucVu]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonViQuyDoi]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonViQuyDoi](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](20) NULL,
	[donvidoi] [nvarchar](20) NOT NULL,
	[donvicoso] [nvarchar](20) NULL,
	[hesoquydoi] [int] NULL,
 CONSTRAINT [PK__DonViTin__3213C8B7D6950650] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangHoa](
	[ma] [varchar](20) NOT NULL,
	[nhomhangma] [varchar](20) NULL,
	[ten] [nvarchar](50) NULL,
	[soluong] [int] NULL,
	[ngaysanxuat] [date] NULL,
	[hansudung] [date] NULL,
	[noisanxuat] [nvarchar](50) NULL,
	[dongia] [money] NULL,
	[khuyenmaima] [varchar](20) NULL,
 CONSTRAINT [PK__HangHoa__3214CC9FF9A4CF09] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[gioitinh] [int] NULL,
	[diachi] [nvarchar](50) NULL,
	[sodienthoai] [varchar](20) NULL,
	[sochungminh] [int] NULL,
	[email] [varchar](50) NULL,
	[thekhachhangma] [varchar](20) NULL,
	[diemtichluy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kho](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[noidungkhuyenmai] [nvarchar](100) NULL,
	[phantramkhuyenmai] [float] NULL,
	[ngaybatdau] [date] NULL,
	[ngayketthuc] [date] NULL,
	[tinhtrang] [nvarchar](20) NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 30/05/2017 7:09:22 SA ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[gioitinh] [int] NULL,
	[ngaysinh] [date] NULL,
	[sodienthoai] [int] NULL,
	[luong] [float] NULL,
	[chucvuma] [varchar](20) NULL,
	[phongbanma] [varchar](20) NULL,
	[diachi] [text] NULL,
	[matkhau] [varchar](20) NULL,
 CONSTRAINT [PK__NhanVien__3214CC9F5627A157] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhomHang](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomHang] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 30/05/2017 7:09:22 SA ******/
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
	[nguoigiaoma] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 30/05/2017 7:09:22 SA ******/
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
	[tongtien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sodienthoai] [varchar](20) NULL,
	[email] [varchar](20) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheKhachHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheKhachHang](
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](20) NOT NULL,
	[diemtichluy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__khoma__38996AB5] FOREIGN KEY([khoma])
REFERENCES [dbo].[Kho] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK__ChiTietPh__khoma__38996AB5]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietPh__phieu__36B12243] FOREIGN KEY([phieunhapma])
REFERENCES [dbo].[PhieuNhap] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK__ChiTietPh__phieu__36B12243]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_DonViQuyDoi] FOREIGN KEY([donviquydoima])
REFERENCES [dbo].[DonViQuyDoi] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_DonViQuyDoi]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_HangHoa] FOREIGN KEY([hanghoama])
REFERENCES [dbo].[HangHoa] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_HangHoa]
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
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_DonViQuyDoi] FOREIGN KEY([donviquydoima])
REFERENCES [dbo].[DonViQuyDoi] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_DonViQuyDoi]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_HangHoa] FOREIGN KEY([hanghoama])
REFERENCES [dbo].[HangHoa] ([ma])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_HangHoa]
GO




ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK__HangHoa__khuyenm__2FCF1A8A] FOREIGN KEY([khuyenmaima])
REFERENCES [dbo].[KhuyenMai] ([ma])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK__HangHoa__khuyenm__2FCF1A8A]
GO









ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_NhomHang] FOREIGN KEY([nhomhangma])
REFERENCES [dbo].[NhomHang] ([ma])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_NhomHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([thekhachhangma])
REFERENCES [dbo].[TheKhachHang] ([ma])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([phongbanma])
REFERENCES [dbo].[PhongBan] ([ma])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([chucvuma])
REFERENCES [dbo].[ChucVu] ([ma])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK__PhieuNhap__nhacu__32E0915F] FOREIGN KEY([nhacungcapma])
REFERENCES [dbo].[NhaCungCap] ([ma])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK__PhieuNhap__nhacu__32E0915F]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([khachhangma])
REFERENCES [dbo].[KhachHang] ([ma])
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK__PhieuXuat__nhanv__286302EC] FOREIGN KEY([nhanvienma])
REFERENCES [dbo].[NhanVien] ([ma])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK__PhieuXuat__nhanv__286302EC]
GO
/****** Object:  StoredProcedure [dbo].[proc_deleteKhachHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 alter proc [dbo].[proc_deleteKhachHang](@ma varchar(10))
as
begin 
	if not exists (select ma from hoadon where KHma = @ma)
		 delete KhachHang where ma = @ma
end
GO
/****** Object:  StoredProcedure [dbo].[proc_deleteNV]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[proc_deleteNV](@ma varchar(10))
as
begin 
	if not exists (select nvma from hoadon where nvma = @ma)
	 delete nhanvien where ma = @ma
end
GO
/****** Object:  StoredProcedure [dbo].[proc_insertKhachHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[proc_insertKhachHang] (@ten nvarchar(50), @gioitinh int, @sodienthoai varchar(20), 
@email varchar(50), @socmnd varchar(20), @diachi nvarchar(50) )
as 
begin
	insert into KhachHang (ma, ten, gioitinh, sodienthoai, Email, sochungminh, diachi)
	values (dbo.auto_ma_KhachHang(), @ten, @gioitinh, @sodienthoai, @email, @socmnd, @diachi)

end

GO
/****** Object:  StoredProcedure [dbo].[proc_insertNV]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[proc_insertNV](@ten nvarchar(50),@gioitinh int, @ngaysinh date, @sodienthoai varchar(20),
	@luong money,@phongban nvarchar(50), @diachi nvarchar(200), @matkhau varchar(20))
as
begin
	insert into NhanVien(ma, ten, gioitinh, Ngaysinh, sodienthoai, Luong, PhongBan, DiaChi, MatKhau)
	values (dbo.auto_ma_nv(), @ten, @gioitinh,@ngaysinh,  @sodienthoai,@luong, @phongban, @diachi, @matkhau)
end

GO
/****** Object:  StoredProcedure [dbo].[proc_updateKhachHang]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[proc_updateKhachHang](@ma varchar(20), @ten nvarchar(50), @gioitinh int,@sodienthoai varchar(20),
  @diachi nvarchar(50), @email varchar(20), @socmnd varchar(20))
 as
 begin
	
	update KhachHang set  Ten = @ten, Gioitinh = @gioitinh, 
	sodienthoai = @sodienthoai, sochungminh = @socmnd, Email = @email, diachi = @diachi
	
	 where  Ma = @ma
 end

GO
/****** Object:  StoredProcedure [dbo].[proc_updateNV]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 alter proc [dbo].[proc_updateNV](@ma varchar(20), @ten nvarchar(50), @gioitinh int, @ngaysinh date,@sodienthoai varchar(20),
 @luong money, @phongban nvarchar(50), @diachi nvarchar(50), @matkhau varchar(20) )
 as
 begin
	
	update NhanVien set  Ten = @ten, Gioitinh = @gioitinh, Ngaysinh = @ngaysinh, Diachi= @diachi,
	sodienthoai = @sodienthoai, Luong = @luong, PhongBan = @phongban, MatKhau = @matkhau
	
	 where  Ma = @ma
 end

GO
/****** Object:  StoredProcedure [dbo].[procedure_insertChiTietPhieuNhap]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[procedure_insertChiTietPhieuNhap](@phieunhapma varchar(20),@hanghoama varchar(20),@khoma varchar(20),@soluong int,@donvi nvarchar(20),@donviquydoima varchar(20),@dongia float)
as
begin
declare @thanhtien money
set @thanhtien=@soluong*@dongia
insert into ChiTietPhieuNhap(ma,phieunhapma,hanghoama,khoma,soluong,donvi,donviquydoima,dongia,thanhtien)
values(dbo.auto_ma_ChiTietPhieuNhap(),@phieunhapma,@hanghoama,@khoma,@soluong,@donvi,@donviquydoima,@dongia,@thanhtien)
update HangHoa set soluong=soluong+@soluong where ma=@hanghoama
end

GO
/****** Object:  StoredProcedure [dbo].[procedure_insertChiTietPhieuXuat]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[procedure_insertChiTietPhieuXuat](@phieuxuatma varchar(20),@hanghoama varchar(20),@soluong int,@donvi nvarchar(20),@donviquydoima varchar(20),@dongia float)
as
begin
declare @thanhtien money,@khoma varchar(20),@hesoquydoi int,@phantramkhuyenmai float
set @hesoquydoi=(select hesoquydoi from DonViQuyDoi where ma=@donviquydoima)
set @phantramkhuyenmai=(select KhuyenMai.PhanTramKhuyenMai from KhuyenMai inner join HangHoa on HangHoa.KhuyenMaiMa=KhuyenMai.ma where KhuyenMai.ngaybatdau<GETDATE() and KhuyenMai.ngayketthuc>GETDATE() and HangHoa.ma=@hanghoama)
if(@phantramkhuyenmai!=null)
set @thanhtien=@soluong*@hesoquydoi*@dongia*0.01*(100-@phantramkhuyenmai)
else set @thanhtien=@soluong*@hesoquydoi*@dongia
begin
set @khoma=(select top(1) khoma from ChiTietPhieuNhap where hanghoama=@hanghoama)
insert into ChiTietPhieuXuat(ma,phieuxuatma,hanghoama,khoma,soluong,donvi,donviquydoima,dongia,thanhtien)
values(dbo.auto_ma_ChiTietPhieuXuat(),@phieuxuatma,@hanghoama,@khoma,@soluong,@donvi,@donviquydoima,@dongia,@thanhtien)
update HangHoa set soluong=soluong-@soluong where ma=@hanghoama
end
end
GO
/****** Object:  StoredProcedure [dbo].[procedure_insertPhieuNhap]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[procedure_insertPhieuNhap](@nhacungcapma varchar(20),@manguoigiao varchar(20),@noidung text,@tongtien money)
as
begin
insert into PhieuNhap(ma,ngay,nhacungcapma,manguoigiao,noidung,tongtien)
values(dbo.auto_ma_PhieuNhap(),GETDATE(),@nhacungcapma,@manguoigiao,@noidung,@tongtien)
end
GO
/****** Object:  StoredProcedure [dbo].[procedure_insertPhieuXuat]    Script Date: 30/05/2017 7:09:22 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter proc [dbo].[procedure_insertPhieuXuat](@noidung text,@khachhangma varchar(20),@nhanvienma varchar(20),@tongtien money)
as
begin
declare @diemtichluy int,@tongdiemtichluy int
set @diemtichluy=@tongtien/100
set @tongdiemtichluy=@diemtichluy+(select diemtichluy from KhachHang where ma=@khachhangma)
begin
insert into PhieuXuat(ma,ngay,noidung,khachhangma,nhanvienma,tongtien)
values(dbo.auto_ma_PhieuXuat(),GETDATE(),@noidung,@khachhangma,@nhanvienma,@tongtien)
if(@tongdiemtichluy>=100)
	 update KhachHang set diemtichluy=@tongdiemtichluy,thekhachhangma='TKH0001'
else if(@tongdiemtichluy>=1000)
	 update KhachHang set diemtichluy=@tongdiemtichluy,thekhachhangma='TKH0002'
else if(@tongdiemtichluy>=10000)
	 update KhachHang set diemtichluy=@tongdiemtichluy,thekhachhangma='TKH0003'
end
end

GO
USE [master]
GO
ALTER DATABASE [BanHangSieuThi] SET  READ_WRITE 
GO




----------------------------------30/5/2018-------------------------------

--1.

create proc [dbo].[ThongKeHangHoaBanRa]
 @khoma varchar(20)
  as
   begin
     select ct.hanghoama as [Mã hàng hóa], A.ten as [Tên hàng hóa], ct.dongia as [Đơn giá], ct.soluong as [Số lượng], ct.phieuxuatma as [Mã phiếu xuất],ct.thanhtien as [Thành tiền] from ChiTietPhieuXuat ct inner join
	                                            (select hh.ten, k.ma from HangHoa hh inner join Kho k on hh.khoma = k.ma
												  group by hh.ten, k.ma)as A
									      on ct.khoma = A.ma
	 where A.ma = @khoma
   end

   --2.

   ALTER proc [dbo].[ThongKeHangHoaNhapVao]
 @khoma varchar(20)
  as
   begin
     select ct.hanghoama as [Mã hàng hóa], A.ten as [Tên hàng hóa], ct.dongia as [Đơn giá], ct.soluong as [Số lượng],ct.phieunhapma as [Mã  phiếu nhập], ct.thanhtien as [Thành tiền] from ChiTietPhieuNhap ct inner join
	                                            (select hh.ten, k.ma from HangHoa hh inner join Kho k on hh.khoma = k.ma
												  group by hh.ten, k.ma)as A
									      on ct.khoma = A.ma
	 where A.ma = @khoma
   end


   --3.

   ALTER proc [dbo].[ThongKeHangHoaTrongKho]
@khoma varchar(20)
as
 begin
   select hh.ma as [Mã hàng hóa], hh.ten as [Tên hàng hóa],
   hh.ngaysanxuat as [Ngày sản xuất], hh.noisanxuat as [Nơi sản xuất], hh.hansudung as [Hạn sử dụng],
   hh.dongia as [Đơn giá], hh.soluong as [Số lượng]
    from HangHoa hh inner join Kho k on hh.khoma = k.ma
	where k.ma = @khoma
 end

 --4.

 ALTER proc [dbo].[ProcTimKiemTheoDongia]
@dongia money
as
 begin
  if exists (select *from HangHoa where dongia > @dongia)
  select hh.ma as [Mã hàng hóa],hh.ten as [Tên hàng hóa], hh.soluong as [Số lượng], hh.ngaysanxuat as [Ngày sản xuất],
  hh.hansudung as [Hạn sử dụng], hh.noisanxuat as [Nơi sản xuất], hh.dongia as [Đơn giá], hh.khoma as [Mã kho]  from HangHoa hh where dongia > @dongia
  else
    select null as [Mã hàng hóa], null as [Tên hàng hóa], null as [Số lượng], null as [Ngày sản xuất], null as [Hạn sử dụng]
	,null as [Nói sản xuất],null as [Đơn giá],null as [Mã kho]

 end

 --5.


 ALTER proc [dbo].[ProcTimKiemTheoHanSuDung]
@hansudung date
as
 begin
  if exists (select *from HangHoa where hansudung like @hansudung)
  select hh.ma as [Mã hàng hóa],hh.ten as [Tên hàng hóa], hh.soluong as [Số lượng], hh.ngaysanxuat as [Ngày sản xuất],
  hh.hansudung as [Hạn sử dụng], hh.noisanxuat as [Nơi sản xuất], hh.dongia as [Đơn giá], hh.khoma as [Mã kho]  from HangHoa hh where hansudung like @hansudung
  else
    select null as [Mã hàng hóa], null as [Tên hàng hóa], null as [Số lượng], null as [Ngày sản xuất], null as [Hạn sử dụng]
	,null as [Nói sản xuất],null as [Đơn giá],null as [Mã kho]

 end

 --6.

 ALTER proc [dbo].[ProcTimKiemTheoKhoMa]
@khoma varchar(20)
as
 begin
  if exists (select *from HangHoa where khoma like @khoma)
  select *from HangHoa where khoma like @khoma
  else
    select null as ma, null as ten, null as soluong, null as ngaysanxuat, null as hansudung,null as noisanxuat,null as dongia,null as khoma

 end


--7.

ALTER proc [dbo].[ProcTimKiemTheoNgaySanXuat]
@ngaysanxuat date
as
 begin
  if exists (select *from HangHoa where ngaysanxuat like @ngaysanxuat)
  select hh.ma as [Mã hàng hóa],hh.ten as [Tên hàng hóa], hh.soluong as [Số lượng], hh.ngaysanxuat as [Ngày sản xuất],
  hh.hansudung as [Hạn sử dụng], hh.noisanxuat as [Nơi sản xuất], hh.dongia as [Đơn giá], hh.khoma as [Mã kho]  from HangHoa hh where ngaysanxuat like @ngaysanxuat
  else
     select null as [Mã hàng hóa], null as [Tên hàng hóa], null as [Số lượng], null as [Ngày sản xuất], null as [Hạn sử dụng]
	,null as [Nói sản xuất],null as [Đơn giá],null as [Mã kho]

 end

 --8.

 ALTER proc [dbo].[ProcTimKiemTheoNoiSanXuat]
@noisanxuat nvarchar(30)
as
 begin
  if exists (select *from HangHoa where noisanxuat like '%'+@noisanxuat+'%')
   select hh.ma as [Mã hàng hóa],hh.ten as [Tên hàng hóa], hh.soluong as [Số lượng], hh.ngaysanxuat as [Ngày sản xuất],
  hh.hansudung as [Hạn sử dụng], hh.noisanxuat as [Nơi sản xuất], hh.dongia as [Đơn giá], hh.khoma as [Mã kho]  from HangHoa hh where noisanxuat like '%'+@noisanxuat+'%'
  else
     select null as [Mã hàng hóa], null as [Tên hàng hóa], null as [Số lượng], null as [Ngày sản xuất], null as [Hạn sử dụng]
	,null as [Nói sản xuất],null as [Đơn giá],null as [Mã kho]
 end


 --9.


 ALTER proc [dbo].[ProcTimKiemTheoSoLuong]
@soluong int
as
 begin
  if exists (select *from HangHoa where soluong >= @soluong)
 select hh.ma as [Mã hàng hóa],hh.ten as [Tên hàng hóa], hh.soluong as [Số lượng], hh.ngaysanxuat as [Ngày sản xuất],
  hh.hansudung as [Hạn sử dụng], hh.noisanxuat as [Nơi sản xuất], hh.dongia as [Đơn giá], hh.khoma as [Mã kho]  from HangHoa hh where soluong >= @soluong
  else
      select null as [Mã hàng hóa], null as [Tên hàng hóa], null as [Số lượng], null as [Ngày sản xuất], null as [Hạn sử dụng]
	,null as [Nói sản xuất],null as [Đơn giá],null as [Mã kho]
 end

 --10.


 ALTER proc [dbo].[ProcTimKiemTheoTen]
@ten nvarchar(30)
as
 begin
  if exists (select *from HangHoa where ten like '%'+@ten+'%')
  select hh.ma as [Mã hàng hóa],hh.ten as [Tên hàng hóa], hh.soluong as [Số lượng], hh.ngaysanxuat as [Ngày sản xuất],
  hh.hansudung as [Hạn sử dụng], hh.noisanxuat as [Nơi sản xuất], hh.dongia as [Đơn giá], hh.khoma as [Mã kho]  from HangHoa hh where ten like '%'+@ten+'%'
  else
     select null as [Mã hàng hóa], null as [Tên hàng hóa], null as [Số lượng], null as [Ngày sản xuất], null as [Hạn sử dụng]
	,null as [Nói sản xuất],null as [Đơn giá],null as [Mã kho]
 end


 --11.


 ALTER proc [dbo].[ThemVaoChiTietPhieuNhap]
@hanghoama varchar(20),
@soluong int,
@dongia float
as 
 begin 
	declare @phieunhapma varchar(20)
	select @phieunhapma = (select Max(ma) from PhieuNhap)
   insert into ChiTietPhieuNhap(ma,phieunhapma,hanghoama,soluong,dongia,thanhtien) values(dbo.auto_maChiTietPhieuNhap(),@phieunhapma,@hanghoama,@soluong,@dongia,@soluong*@dongia)
 end

