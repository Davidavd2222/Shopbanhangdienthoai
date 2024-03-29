USE [master]
GO
/****** Object:  Database [shopbanhangdienthoai]    Script Date: 4/29/2023 11:16:56 AM ******/
CREATE DATABASE [shopbanhangdienthoai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shopbanhangdienthoai', FILENAME = N'E:\game\MSSQL15.SQLEXPRESS\MSSQL\DATA\shopbanhangdienthoai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shopbanhangdienthoai_log', FILENAME = N'E:\game\MSSQL15.SQLEXPRESS\MSSQL\DATA\shopbanhangdienthoai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [shopbanhangdienthoai] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shopbanhangdienthoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shopbanhangdienthoai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET ARITHABORT OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shopbanhangdienthoai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shopbanhangdienthoai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shopbanhangdienthoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shopbanhangdienthoai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shopbanhangdienthoai] SET  MULTI_USER 
GO
ALTER DATABASE [shopbanhangdienthoai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shopbanhangdienthoai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shopbanhangdienthoai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shopbanhangdienthoai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [shopbanhangdienthoai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [shopbanhangdienthoai] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [shopbanhangdienthoai] SET QUERY_STORE = OFF
GO
USE [shopbanhangdienthoai]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/29/2023 11:16:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [nvarchar](50) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 4/29/2023 11:16:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [nvarchar](50) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/29/2023 11:16:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[MaNSX] [nvarchar](50) NULL,
	[TenSP] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
	[MaLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP01', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP02', N'Bình Thường')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP03', N'Tốt')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NSX01', N'Apple')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NSX02', N'SamSung')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP01', N'NXS01', N'Iphone13', 23490000, 0, 0, N'New       ', N'LSP01')
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP02', N'NSX01', N'Iphone11', 16000000, 0, 0, N'New       ', N'LSP01')
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP03', N'NSX01', N'Iphone12', 19490000, 0, 0, N'New       ', N'LSP01')
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP04', N'NSX01', N'IphoneX', 9490000, 0, 0, N'New       ', N'LSP02')
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP05', N'NSX02', N'SS Galaxy A03', 23490000, 0, 0, N'New       ', N'LSP01')
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP06', N'NSX02', N'SS Galaxy A12', 16000000, 0, 0, N'New       ', N'LSP01')
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP07', N'NSX02', N'SS Z Fold 3', 19490000, 0, 0, N'New       ', N'LSP01')
INSERT [dbo].[SanPham] ([MaSP], [MaNSX], [TenSP], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [MaLoaiSP]) VALUES (N'SP08', N'NSX02', N'SS S20 FE', 9490000, 0, 0, N'New       ', N'LSP03')
GO
USE [master]
GO
ALTER DATABASE [shopbanhangdienthoai] SET  READ_WRITE 
GO
