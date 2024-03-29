USE [master]
GO
/****** Object:  Database [shoplaptop]    Script Date: 1/11/2023 8:28:01 AM ******/
CREATE DATABASE [shoplaptop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shoplaptop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\shoplaptop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shoplaptop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\shoplaptop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [shoplaptop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shoplaptop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shoplaptop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shoplaptop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shoplaptop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shoplaptop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shoplaptop] SET ARITHABORT OFF 
GO
ALTER DATABASE [shoplaptop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shoplaptop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shoplaptop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shoplaptop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shoplaptop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shoplaptop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shoplaptop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shoplaptop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shoplaptop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shoplaptop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shoplaptop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shoplaptop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shoplaptop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shoplaptop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shoplaptop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shoplaptop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shoplaptop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shoplaptop] SET RECOVERY FULL 
GO
ALTER DATABASE [shoplaptop] SET  MULTI_USER 
GO
ALTER DATABASE [shoplaptop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shoplaptop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shoplaptop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shoplaptop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [shoplaptop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [shoplaptop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'shoplaptop', N'ON'
GO
ALTER DATABASE [shoplaptop] SET QUERY_STORE = OFF
GO
USE [shoplaptop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Admin]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Admin](
	[ID] [int] NOT NULL,
	[NAME] [varchar](32) NULL,
	[username] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_tb_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Brand]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Brand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_tb_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Customers]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Birthday] [datetime] NULL,
	[Avatar] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nchar](50) NOT NULL,
	[Phone] [varchar](12) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Salt] [nchar](10) NOT NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Feedback]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Detail] [nvarchar](500) NULL,
 CONSTRAINT [PK_tb_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetail]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Price] [int] NULL,
	[OrderNumber] [int] NULL,
	[Quantity] [int] NULL,
	[Amount] [int] NULL,
	[Discount] [int] NULL,
	[TotalMoney] [int] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_OrderDetail_1] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Orders]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[Status] [int] NULL,
	[DeliveryDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[TotalMoney] [int] NULL,
	[TransactStatusId] [int] NULL,
	[Deleted] [bit] NULL,
	[Note] [nchar](100) NULL,
	[Address] [nchar](100) NULL,
	[Paid] [bit] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentID] [int] NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Image] [nvarchar](250) NULL,
	[ListImages] [xml] NULL,
	[Price] [int] NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[Warranty] [int] NOT NULL,
	[Hot] [datetime] NULL,
	[Description] [nvarchar](500) NOT NULL,
	[ViewCount] [int] NULL,
	[CateID] [int] NULL,
	[BrandID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Thumb] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[CateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Status] [bit] NOT NULL,
	[ParentID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Alias] [nchar](10) NULL,
	[Ordering] [int] NULL,
	[Published] [bit] NOT NULL,
	[Thumb] [nvarchar](250) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[CateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_ProductCategory] SET (LOCK_ESCALATION = DISABLE)
GO
/****** Object:  Table [dbo].[tb_Roles]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Slide]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Sort] [int] NULL,
	[Link] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tb_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_TransactStatus]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TransactStatus](
	[TransactStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 1/11/2023 8:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Address] [nchar](10) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[Active] [bit] NULL,
	[Phone] [nvarchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Salt] [nchar](10) NULL,
 CONSTRAINT [PK_tb_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Customers] ON 

INSERT [dbo].[tb_Customers] ([CustomerId], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (14, N'Nguyễn Quốc Khánh', NULL, NULL, N'Ho Chi Minh', N'nqkdeveloper@gmail.com                            ', N'0392697777', CAST(N'2022-12-09T12:18:14.960' AS DateTime), N'558c3368ac0574dfb8275e7c1991c487', N'&rn#~     ', NULL, 1)
SET IDENTITY_INSERT [dbo].[tb_Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] ON 

INSERT [dbo].[tb_OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [OrderNumber], [Quantity], [Amount], [Discount], [TotalMoney], [CreateDate]) VALUES (14, 21, 1, 1000777, NULL, NULL, 1, NULL, 1000777, CAST(N'2023-01-09T01:50:39.210' AS DateTime))
INSERT [dbo].[tb_OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [OrderNumber], [Quantity], [Amount], [Discount], [TotalMoney], [CreateDate]) VALUES (15, 22, 1, 1000777, NULL, NULL, 5, NULL, 5003885, CAST(N'2023-01-09T12:42:24.807' AS DateTime))
INSERT [dbo].[tb_OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [OrderNumber], [Quantity], [Amount], [Discount], [TotalMoney], [CreateDate]) VALUES (16, 23, 7, 47190000, NULL, NULL, 1, NULL, 140730000, CAST(N'2023-01-10T23:59:43.987' AS DateTime))
INSERT [dbo].[tb_OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [OrderNumber], [Quantity], [Amount], [Discount], [TotalMoney], [CreateDate]) VALUES (17, 23, 4, 18590000, NULL, NULL, 1, NULL, 140730000, CAST(N'2023-01-10T23:59:44.007' AS DateTime))
INSERT [dbo].[tb_OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Price], [OrderNumber], [Quantity], [Amount], [Discount], [TotalMoney], [CreateDate]) VALUES (18, 23, 6, 14990000, NULL, NULL, 5, NULL, 140730000, CAST(N'2023-01-10T23:59:44.007' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Orders] ON 

INSERT [dbo].[tb_Orders] ([Id], [OrderDate], [Status], [DeliveryDate], [CustomerId], [TotalMoney], [TransactStatusId], [Deleted], [Note], [Address], [Paid], [PaymentDate], [PaymentID], [ShipDate]) VALUES (21, CAST(N'2023-01-09T01:50:39.057' AS DateTime), NULL, NULL, 14, 1000777, 1, NULL, NULL, N'Ho Chi Minh                                                                                         ', NULL, NULL, NULL, CAST(N'2023-01-09T12:47:08.897' AS DateTime))
INSERT [dbo].[tb_Orders] ([Id], [OrderDate], [Status], [DeliveryDate], [CustomerId], [TotalMoney], [TransactStatusId], [Deleted], [Note], [Address], [Paid], [PaymentDate], [PaymentID], [ShipDate]) VALUES (22, CAST(N'2023-01-09T12:42:24.577' AS DateTime), NULL, NULL, 14, 5003885, 2, NULL, NULL, N'Ho Chi Minh                                                                                         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_Orders] ([Id], [OrderDate], [Status], [DeliveryDate], [CustomerId], [TotalMoney], [TransactStatusId], [Deleted], [Note], [Address], [Paid], [PaymentDate], [PaymentID], [ShipDate]) VALUES (23, CAST(N'2023-01-10T23:59:43.847' AS DateTime), NULL, NULL, 14, 140730000, 3, NULL, NULL, N'Ho Chi Minh                                                                                         ', NULL, NULL, NULL, CAST(N'2023-01-11T00:07:54.813' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (1, N'MacBook Pro 14 M1  Core GPU', NULL, NULL, NULL, 1000777, NULL, 1565, 0, NULL, N'MacBook Air M1 Apple is thinnest and lightest notebook yet - now dramatically transformed with the powerful Apple M1 chip. Get a jump in CPU and graphics performance, and up to 18 hours of battery life.', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'macbook-pro-14-m1-core-gpu.jpeg', N'macbook-pro-14-m1-core-gpu', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (3, N'Case Asus TUF Gamming', NULL, NULL, NULL, 4560000, NULL, 3475, 0, NULL, N'Compact, mid-size ASUS TUF Gaming GT301 ATX case design, tempered glass side panels, perforated honeycomb front panel, 120mm AURA addressable RGB fan, headphone hook and kit mount 360mm heatsink.', NULL, 2, NULL, NULL, NULL, NULL, NULL, N'case-asus-tuf-gamming.png', N'case-asus-tuf-gamming', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (4, N'ASUS Vivobook OLED', NULL, NULL, NULL, 18590000, NULL, 2345, 0, NULL, N'Asus VivoBook A515EA OLED i5 (L12032W) laptop outstanding performance comes from Intel Gen 11 processor surrounded by a luxurious, modern outer shell, good for studying, working in the office or watching movies. Listen to entertainment music every day.', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'asus-vivobook-oled.jpg', N'asus-vivobook-oled', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (5, N'Dell Inspiron 15', NULL, NULL, NULL, 14290000, NULL, 5467, 0, NULL, N'Dell Inspiron 15 3511 i5 laptop (P112F001DBL) not only wears a sophisticated and luxurious beauty, but also possesses powerful performance from Intel is 11th generation Core i5 chip, all experiences from work to entertainment. Yours will become more interesting', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'dell-inspiron-15.jpg', N'dell-inspiron-15', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (6, N'Laptop Acer Aspire 7', NULL, NULL, NULL, 14990000, NULL, 2367, 0, NULL, N'The Aspire 7 Gaming Laptop A715 42G R4XX R5 (NH.QAYSV.008) possesses strong performance and powerful design, making it the ideal companion on any journey.', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'laptop-acer-aspire-7.jpg', N'laptop-acer-aspire-7', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (7, N'Asus Gaming ROG', NULL, NULL, NULL, 47190000, NULL, 0, 0, NULL, N'Asus Gaming ROG Flow Z13 GZ301Z i7 (LD110W) is one of the super products worth buying in its price range because it is the perfect combination between the thinnest, most portable gaming laptop and the most powerful Windows tablet.', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'asus-gaming-rog.jpg', N'asus-gaming-rog', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (8, N'HP Envy X360 Convert', NULL, NULL, NULL, 25390000, NULL, 4567, 0, NULL, N'Experience enhanced productivity with powerful AMD chips and a stylish, eye-catching design from the HP Envy x360 Convert 13 ay1056AU R7 (601Q8PA) laptop, always ready to go. ready to face any difficult challenges with you.', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'hp-envy-x360-convert.jpg', N'hp-envy-x360-convert', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (9, N'Laptop Lenovo Ideapad', NULL, NULL, NULL, 13890000, NULL, 111, 0, NULL, N'Laptop Lenovo Ideapad 3 15IAU7 i3 (82RK005LVN) will be an effective companion for students, students or office workers with elegant, modern appearance and powerful performance from Intel Gen 12 chip. advanced.', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'laptop-lenovo-ideapad.jpg', N'laptop-lenovo-ideapad', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (10, N'Laptop Acer TravelMate', 1, NULL, NULL, 5490000, NULL, 2367, 0, NULL, N'Laptop Acer TravelMate B3 TMB311 31 C2HB (NX.VNFSV.006) aimed at the study-office laptop segment, serving the basic needs of laptops, with compact size and sufficient performance, is the choice Good choice for students, students.', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'laptop-acer-travelmate.jpg', N'laptop-acer-travelmate', NULL)
INSERT [dbo].[tb_Product] ([ProductId], [Name], [Status], [Image], [ListImages], [Price], [PromotionPrice], [Quantity], [Warranty], [Hot], [Description], [ViewCount], [CateID], [BrandID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Thumb], [Alias], [Discount]) VALUES (11, N'Laptop MSI Gaming', 1, NULL, NULL, 23690000, NULL, 3412, 0, NULL, N'Possessing a unique and powerful appearance suitable for every gamer, the MSI Gaming GF63 Thin 11UD i7 11800H (648VN) laptop is equipped with the 11th generation Intel chip with outstanding performance when accompanied by a video card. leave the RTX 3050 Ti Max-Q ready to fight any popular game or graphic design intensively', NULL, 1, NULL, NULL, NULL, NULL, NULL, N'laptop-msi-gaming.jpg', N'laptop-msi-gaming', NULL)
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([CateId], [Name], [Status], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Alias], [Ordering], [Published], [Thumb], [Title], [Description]) VALUES (1, N'Laptop', 1, NULL, NULL, NULL, NULL, NULL, N'laptop    ', 1, 1, N'laptop.jpg', NULL, NULL)
INSERT [dbo].[tb_ProductCategory] ([CateId], [Name], [Status], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Alias], [Ordering], [Published], [Thumb], [Title], [Description]) VALUES (2, N'Case PC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[tb_ProductCategory] ([CateId], [Name], [Status], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Alias], [Ordering], [Published], [Thumb], [Title], [Description]) VALUES (3, N'PC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[tb_ProductCategory] ([CateId], [Name], [Status], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Alias], [Ordering], [Published], [Thumb], [Title], [Description]) VALUES (4, N'Screen ', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[tb_ProductCategory] ([CateId], [Name], [Status], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Alias], [Ordering], [Published], [Thumb], [Title], [Description]) VALUES (5, N'Keyboard', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[tb_ProductCategory] ([CateId], [Name], [Status], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Alias], [Ordering], [Published], [Thumb], [Title], [Description]) VALUES (6, N'Mouse', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[tb_ProductCategory] ([CateId], [Name], [Status], [ParentID], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Alias], [Ordering], [Published], [Thumb], [Title], [Description]) VALUES (7, N'Headphone', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Roles] ON 

INSERT [dbo].[tb_Roles] ([RoleID], [RoleName], [Description]) VALUES (1, N'Admin', N'Administrator')
INSERT [dbo].[tb_Roles] ([RoleID], [RoleName], [Description]) VALUES (2, N'Customer', N'Khách Hàng')
SET IDENTITY_INSERT [dbo].[tb_Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_TransactStatus] ON 

INSERT [dbo].[tb_TransactStatus] ([TransactStatusId], [Status], [Description]) VALUES (1, N'Awaiting confirmation', N'Awaiting confirmation')
INSERT [dbo].[tb_TransactStatus] ([TransactStatusId], [Status], [Description]) VALUES (2, N'Delivery in progress', N'Delivery in progress')
INSERT [dbo].[tb_TransactStatus] ([TransactStatusId], [Status], [Description]) VALUES (3, N'Delivery successful', N'Delivery successful')
SET IDENTITY_INSERT [dbo].[tb_TransactStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_User] ON 

INSERT [dbo].[tb_User] ([ID], [FullName], [Username], [Password], [Address], [RoleID], [LastLogin], [CreateDate], [Active], [Phone], [Email], [Salt]) VALUES (3, N'Nguyễn Quốc Khánh', NULL, NULL, NULL, 1, NULL, NULL, NULL, N'0392697777', N'20521452@gm.uit.edu.vn', NULL)
INSERT [dbo].[tb_User] ([ID], [FullName], [Username], [Password], [Address], [RoleID], [LastLogin], [CreateDate], [Active], [Phone], [Email], [Salt]) VALUES (4, N'Nguyễn Quốc Khánh', NULL, N'123456', NULL, 1, NULL, NULL, NULL, N'0392697777', N'khanh1234ptdtnttn@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[tb_User] OFF
GO
ALTER TABLE [dbo].[tb_Admin] ADD  CONSTRAINT [DF_tb_Admin_NAME]  DEFAULT ('Admin') FOR [NAME]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Warranty]  DEFAULT ((0)) FOR [Warranty]
GO
ALTER TABLE [dbo].[tb_ProductCategory] ADD  CONSTRAINT [DF_tb_ProductCategory_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_ProductCategory] ADD  CONSTRAINT [DF_tb_ProductCategory_Published]  DEFAULT ((0)) FOR [Published]
GO
ALTER TABLE [dbo].[tb_Admin]  WITH CHECK ADD  CONSTRAINT [FK_tb_Admin_tb_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tb_Roles] ([RoleID])
GO
ALTER TABLE [dbo].[tb_Admin] CHECK CONSTRAINT [FK_tb_Admin_tb_Roles]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetail_tb_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tb_Orders] ([Id])
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_tb_OrderDetail_tb_Orders]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetail_tb_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([ProductId])
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_tb_OrderDetail_tb_Product]
GO
ALTER TABLE [dbo].[tb_Orders]  WITH CHECK ADD  CONSTRAINT [FK_tb_Orders_tb_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[tb_Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[tb_Orders] CHECK CONSTRAINT [FK_tb_Orders_tb_Customers]
GO
ALTER TABLE [dbo].[tb_Orders]  WITH CHECK ADD  CONSTRAINT [FK_tb_Orders_tb_TransactStatus1] FOREIGN KEY([TransactStatusId])
REFERENCES [dbo].[tb_TransactStatus] ([TransactStatusId])
GO
ALTER TABLE [dbo].[tb_Orders] CHECK CONSTRAINT [FK_tb_Orders_tb_TransactStatus1]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[tb_Brand] ([ID])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_Brand]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_ProductCategory] FOREIGN KEY([CateID])
REFERENCES [dbo].[tb_ProductCategory] ([CateId])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_ProductCategory]
GO
ALTER TABLE [dbo].[tb_User]  WITH CHECK ADD  CONSTRAINT [FK_tb_User_tb_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tb_Roles] ([RoleID])
GO
ALTER TABLE [dbo].[tb_User] CHECK CONSTRAINT [FK_tb_User_tb_Roles]
GO
USE [master]
GO
ALTER DATABASE [shoplaptop] SET  READ_WRITE 
GO
