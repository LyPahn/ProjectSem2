USE [master]
GO
/****** Object:  Database [ProjectSem2]    Script Date: 29/06/2024 16:33:54 ******/
CREATE DATABASE [ProjectSem2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectSem2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectSem2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectSem2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectSem2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectSem2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectSem2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectSem2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectSem2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectSem2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectSem2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectSem2] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectSem2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectSem2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectSem2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectSem2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectSem2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectSem2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectSem2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectSem2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectSem2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectSem2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectSem2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectSem2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectSem2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectSem2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectSem2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectSem2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectSem2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectSem2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectSem2] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectSem2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectSem2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectSem2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectSem2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectSem2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectSem2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProjectSem2] SET QUERY_STORE = OFF
GO
USE [ProjectSem2]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](50) NULL,
	[created_at] [date] NULL,
	[image] [varchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cart_items]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cart_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cart_id] [int] NOT NULL,
	[product_id] [varchar](255) NULL,
	[quantity] [int] NOT NULL,
	[size] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[carts]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cate_name] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[image] [varchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[images]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](255) NULL,
	[product_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [date] NULL,
	[price] [real] NULL,
	[user_id] [int] NOT NULL,
	[order_status_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_items]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[price] [real] NOT NULL,
	[product_id] [varchar](255) NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order_status]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [varchar](255) NOT NULL,
	[brand_id] [int] NULL,
	[category_id] [int] NULL,
	[create_date] [date] NULL,
	[description] [ntext] NULL,
	[image] [varchar](255) NULL,
	[price] [real] NOT NULL,
	[price_old] [real] NULL,
	[product_name] [nvarchar](200) NULL,
	[quantity] [int] NULL,
	[size] [bit] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[created_at] [date] NULL,
	[email] [varchar](255) NULL,
	[first_name] [nvarchar](50) NULL,
	[image] [varchar](255) NULL,
	[last_name] [nvarchar](50) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[role] [bit] NULL,
	[status] [bit] NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wishlists]    Script Date: 29/06/2024 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wishlists](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [varchar](255) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[brands] ON 

INSERT [dbo].[brands] ([id], [brand_name], [created_at], [image], [status]) VALUES (1, N'Swarovski', CAST(N'2024-06-29' AS Date), N'Swarovski.png', 1)
INSERT [dbo].[brands] ([id], [brand_name], [created_at], [image], [status]) VALUES (2, N'Pandora', CAST(N'2024-06-29' AS Date), N'Pandora.png', 1)
INSERT [dbo].[brands] ([id], [brand_name], [created_at], [image], [status]) VALUES (3, N'Tiffany & Co.', CAST(N'2024-06-29' AS Date), N'Tiffany&Co.png', 1)
INSERT [dbo].[brands] ([id], [brand_name], [created_at], [image], [status]) VALUES (4, N'Saga', CAST(N'2024-06-29' AS Date), N'Saga.png', 1)
INSERT [dbo].[brands] ([id], [brand_name], [created_at], [image], [status]) VALUES (5, N'Daniel Wellington', CAST(N'2024-06-29' AS Date), N'DanielWellington.png', 1)
SET IDENTITY_INSERT [dbo].[brands] OFF
GO
SET IDENTITY_INSERT [dbo].[carts] ON 

INSERT [dbo].[carts] ([id], [user_id]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[carts] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [cate_name], [create_date], [image], [status]) VALUES (1, N'Stone rings', CAST(N'2024-06-29' AS Date), N'img1-middle.jpg', 1)
INSERT [dbo].[categories] ([id], [cate_name], [create_date], [image], [status]) VALUES (2, N'Earrings', CAST(N'2024-06-29' AS Date), N'img2-middle.jpg', 1)
INSERT [dbo].[categories] ([id], [cate_name], [create_date], [image], [status]) VALUES (3, N' Necklace', CAST(N'2024-06-29' AS Date), N'img3-middle.jpg', 1)
INSERT [dbo].[categories] ([id], [cate_name], [create_date], [image], [status]) VALUES (4, N'Rings', CAST(N'2024-06-29' AS Date), N'img4-middle.jpg', 1)
INSERT [dbo].[categories] ([id], [cate_name], [create_date], [image], [status]) VALUES (5, N' Pearl necklace', CAST(N'2024-06-29' AS Date), N'img5-middle.jpg', 1)
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[images] ON 

INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (1, N'pa2.png', N'P01')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (2, N'pa3.png', N'P01')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (3, N'pa4.png', N'P01')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (4, N'ps5.png', N'P01')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (5, N'khuyen-tai-swarovski-constella-d (3).png', N'P02')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (6, N'khuyen-tai-swarovski-constella-d (2).png', N'P02')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (7, N'khuyen-tai-swarovski-constella-d (1).png', N'P02')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (8, N'nha-n-swarovski-dazzling-swan-ri (2).png', N'P03')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (9, N'nha-n-swarovski-dazzling-swan-ri (1).png', N'P03')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (10, N'nhan-nu-swarovski-matrix-ring-ba (4).png', N'P04')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (11, N'nhan-nu-swarovski-matrix-ring-ba (3).png', N'P04')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (12, N'nhan-nu-swarovski-matrix-ring-ba (2).png', N'P04')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (13, N'nhan-nu-swarovski-matrix-ring-ba (1).png', N'P04')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (14, N'day-chuyen-nu-swarovski-teddy-pe (4).png', N'P05')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (15, N'day-chuyen-nu-swarovski-teddy-pe (3).png', N'P05')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (16, N'day-chuyen-nu-swarovski-teddy-pe (2).png', N'P05')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (17, N'day-chuyen-nu-swarovski-teddy-pe (1).png', N'P05')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (18, N'nha-n-nu-pandora-treated-freshwa (3).png', N'P06')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (19, N'nha-n-nu-pandora-treated-freshwa (2).png', N'P06')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (20, N'nha-n-nu-pandora-treated-freshwa (1).png', N'P06')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (21, N'vong-deo-tay-nu-pandora-marvel-t (3).png', N'P07')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (22, N'vong-deo-tay-nu-pandora-marvel-t (2).png', N'P07')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (23, N'vong-deo-tay-nu-pandora-marvel-t (1).png', N'P07')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (24, N'day-chuyen-nu-pandora-timeless-c (1).png', N'P08')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (25, N'day-chuyen-nu-pandora-timeless-c.png', N'P08')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (26, N'khuyen-tai-nu-pandora-september (2).png', N'P09')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (27, N'khuyen-tai-nu-pandora-september (1).png', N'P09')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (28, N'khuyen-tai-nu-pandora-september.png', N'P09')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (29, N'nha-n-pandora-sparkling-statemen (3).png', N'P10')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (30, N'nha-n-pandora-sparkling-statemen (2).png', N'P10')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (31, N'nha-n-pandora-sparkling-statemen (1).png', N'P10')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (32, N'khuyen-tai-sokolov-94022567-bang (3).png', N'P11')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (33, N'khuyen-tai-sokolov-94022567-bang (2).png', N'P11')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (34, N'khuyen-tai-sokolov-94022567-bang (1).png', N'P11')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (35, N'hat-vong-charm-pandora-festive-b (3).png', N'p12')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (36, N'hat-vong-charm-pandora-festive-b (2).png', N'p12')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (37, N'hat-vong-charm-pandora-festive-b (1).png', N'p12')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (38, N'day-chuyen-nu-swarovski-eternal (3).png', N'P13')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (39, N'day-chuyen-nu-swarovski-eternal (2).png', N'P13')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (40, N'day-chuyen-nu-swarovski-eternal (1).png', N'P13')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (41, N'vong-deo-tay-swarovski-women-s-b (1).png', N'p14')
INSERT [dbo].[images] ([id], [image], [product_id]) VALUES (42, N'vong-deo-tay-swarovski-women-s-b.png', N'p14')
SET IDENTITY_INSERT [dbo].[images] OFF
GO
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P01', 1, 3, CAST(N'2024-06-29' AS Date), N'<p>Đồ trang sức dùng để chỉ các mặt hàng trang trí được chế tác từ kim loại quý như vàng, bạc và bạch kim, thường được trang trí bằng các loại đá quý như kim cương, ngọc bích và hồng ngọc. Những tác phẩm này không chỉ có giá trị thẩm mỹ mà còn mang ý nghĩa văn hóa, biểu tượng sâu sắc.</p>', N'pa1.png', 95, 100, N'Swarovski Dazzling Swan Necklace Multi-Colored Rose-Gold Tone Plated 5469989', 100, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P02', 1, 2, CAST(N'2024-06-29' AS Date), N'<p>Đồ trang sức dùng để chỉ các mặt hàng trang trí được chế tác từ kim loại quý như vàng, bạc và bạch kim, thường được trang trí bằng các loại đá quý như kim cương, ngọc bích và hồng ngọc. Những tác phẩm này không chỉ có giá trị thẩm mỹ mà còn mang ý nghĩa văn hóa, biểu tượng sâu sắc.</p>', N'khuyen-tai-swarovski-constella-d.png', 85, 110, N'Swarovski Constella Drop Earrings Round Cut, White, Rhodium Plated 5636717', 100, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P03', 1, 4, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'nha-n-swarovski-dazzling-swan-ri.png', 50, 70, N'Swarovski Dazzling Swan Ring Pink, Rose-Gold Tone Plated 5569924', 100, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P04', 1, 1, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'nhan-nu-swarovski-matrix-ring-ba.png', 60, 80, N'Swarovski Matrix Ring Baguette Cut, Pink, Rose Gold-Tone Plated 5647589', 100, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P05', 1, 5, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'day-chuyen-nu-swarovski-teddy-pe.png', 80, 100, N'Swarovski Teddy Pendant Bear, Pink, Rose Gold-Tone Plated 5669166', 90, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P06', 2, 4, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'nha-n-nu-pandora-treated-freshwa.png', 50, 110, N'Pandora Treated Freshwater Cultured Pearl & Pavé Ring 193158C01', 80, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P07', 2, 3, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'vong-deo-tay-nu-pandora-marvel-t.png', 250, 300, N'Pandora Marvel The Avengers Infinity Stones Chain Bracelet 562960C01', 20, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P08', 2, 5, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'day-chuyen-nu-pandora-timeless-c.png', 120, 150, N'Pandora Timeless Chuỗi Bi Đính Ngọc Trai 393176C01', 50, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P09', 2, 2, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'khuyen-tai-nu-pandora-september.png', 110, 120, N'Pandora September Crystal Birthstone Eternity Circle Stud Earrings 292334C07', 40, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P10', 2, 1, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'nha-n-pandora-sparkling-statemen.png', 50, 60, N'Pandora Sparkling Statement Halo Ring', 70, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P11', 5, 2, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'khuyen-tai-sokolov-94022567-bang.png', 60, 70, N'Sokolov 94022567', 40, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'p12', 5, 2, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'hat-vong-charm-pandora-festive-b.png', 70, 150, N'Festive Bell Dangle Charm 782376C00', 60, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'P13', 4, 3, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'day-chuyen-nu-swarovski-eternal.png', 50, 60, N'Eternal Flower Pendant Flower, Pink, Mixed Metal Finish 5642868', 40, 1, 1)
INSERT [dbo].[products] ([id], [brand_id], [category_id], [create_date], [description], [image], [price], [price_old], [product_name], [quantity], [size], [status]) VALUES (N'p14', 3, 3, CAST(N'2024-06-29' AS Date), N'<p>Jewelry refers to decorative items crafted from precious metals like gold, silver, and platinum, often adorned with gemstones such as diamonds, sapphires, and rubies. These pieces not only hold aesthetic value but also carry deep cultural and symbolic meanings.</p>', N'vong-deo-tay-swarovski-women-s-b.png', 60, 80, N'Women''s Bracelet Iconic Swan Black Crystal Rose Gold Plated 5451389/5344132', 20, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [address], [created_at], [email], [first_name], [image], [last_name], [password], [phone], [role], [status], [username]) VALUES (1, N'admin', CAST(N'2024-06-29' AS Date), N'admin@gmail.com', N'admin', N'admin.png', N'01', N'21232f297a57a5a743894a0e4a801fc3', N'123456789', 1, 1, N'admin')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  Index [UK_64t7ox312pqal3p7fg9o503c2]    Script Date: 29/06/2024 16:33:54 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_64t7ox312pqal3p7fg9o503c2] ON [dbo].[carts]
(
	[user_id] ASC
)
WHERE ([user_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FK1re40cjegsfvw58xrkdp6bac6] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FK1re40cjegsfvw58xrkdp6bac6]
GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FKpcttvuq4mxppo8sxggjtn5i2c] FOREIGN KEY([cart_id])
REFERENCES [dbo].[carts] ([id])
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FKpcttvuq4mxppo8sxggjtn5i2c]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FKb5o626f86h46m4s7ms6ginnop] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FKb5o626f86h46m4s7ms6ginnop]
GO
ALTER TABLE [dbo].[images]  WITH CHECK ADD  CONSTRAINT [FKghwsjbjo7mg3iufxruvq6iu3q] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[images] CHECK CONSTRAINT [FKghwsjbjo7mg3iufxruvq6iu3q]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKcxpcc11kb45j9kjf2qol0pmvm] FOREIGN KEY([order_status_id])
REFERENCES [dbo].[order_status] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKcxpcc11kb45j9kjf2qol0pmvm]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKh3c37jq3nrv0f2edcxk0ine72] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKh3c37jq3nrv0f2edcxk0ine72]
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD  CONSTRAINT [FKjg8ob3r0ws22krbj2xu30nhi1] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_items] CHECK CONSTRAINT [FKjg8ob3r0ws22krbj2xu30nhi1]
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD  CONSTRAINT [FKocimc7dtr037rh4ls4l95nlfi] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_items] CHECK CONSTRAINT [FKocimc7dtr037rh4ls4l95nlfi]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKa3a4mpsfdf4d2y6r8ra3sc8mv] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKa3a4mpsfdf4d2y6r8ra3sc8mv]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9]
GO
ALTER TABLE [dbo].[wishlists]  WITH CHECK ADD  CONSTRAINT [FK330pyw2el06fn5g28ypyljt16] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[wishlists] CHECK CONSTRAINT [FK330pyw2el06fn5g28ypyljt16]
GO
ALTER TABLE [dbo].[wishlists]  WITH CHECK ADD  CONSTRAINT [FKl7ao98u2bm8nijc1rv4jobcrx] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[wishlists] CHECK CONSTRAINT [FKl7ao98u2bm8nijc1rv4jobcrx]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD CHECK  (([price_old]>=(0)))
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD CHECK  (([quantity]>=(1)))
GO
USE [master]
GO
ALTER DATABASE [ProjectSem2] SET  READ_WRITE 
GO
