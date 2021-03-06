USE [master]
GO
/****** Object:  Database [Excell-On]    Script Date: 8/30/2021 8:45:58 PM ******/
CREATE DATABASE [Excell-On]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Excell-On', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Excell-On.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Excell-On_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Excell-On_log.ldf' , SIZE = 335872KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Excell-On] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Excell-On].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Excell-On] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Excell-On] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Excell-On] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Excell-On] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Excell-On] SET ARITHABORT OFF 
GO
ALTER DATABASE [Excell-On] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Excell-On] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Excell-On] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Excell-On] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Excell-On] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Excell-On] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Excell-On] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Excell-On] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Excell-On] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Excell-On] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Excell-On] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Excell-On] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Excell-On] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Excell-On] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Excell-On] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Excell-On] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Excell-On] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Excell-On] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Excell-On] SET  MULTI_USER 
GO
ALTER DATABASE [Excell-On] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Excell-On] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Excell-On] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Excell-On] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Excell-On] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Excell-On] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Excell-On] SET QUERY_STORE = OFF
GO
USE [Excell-On]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Name] [varchar](255) NULL,
	[Company_Phone] [varchar](255) NULL,
	[Company_Address] [varchar](255) NULL,
	[Company_Email] [varchar](255) NULL,
	[Company_Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [varchar](255) NULL,
	[Customer_Phone] [varchar](255) NULL,
	[Customer_Email] [varchar](255) NULL,
	[Customer_UserName] [varchar](255) NULL,
	[Customer_Password] [varchar](255) NULL,
	[CompanyId] [int] NULL,
	[Customer_Comment] [text] NULL,
	[Customer_Avatar] [text] NULL,
	[Customer_Gender] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image_link] [text] NULL,
	[ServiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyCompany]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyCompany](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) NULL,
	[Image] [text] NULL,
	[Description] [varchar](max) NULL,
	[Address] [varchar](255) NULL,
	[TaxIdentificationNumber] [varchar](255) NULL,
	[MyMission] [ntext] NULL,
	[MyVision] [ntext] NULL,
	[MyTarget] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetail_DateStart] [datetime] NULL,
	[OrderDetail_DateEnd] [datetime] NULL,
	[OrderDetail_Status] [int] NULL,
	[OrderDetail_NumberOfPeople] [int] NULL,
	[ServiceId] [int] NULL,
	[OrdersId] [int] NULL,
 CONSTRAINT [PK__OrderDet__3214EC07E231B99A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_DateCreate] [varchar](50) NULL,
	[Order_Description] [text] NULL,
	[Order_TotalCost] [float] NULL,
	[Order_Status] [int] NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK__Orders__3214EC07AA0285C3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Permission_Name] [varchar](255) NULL,
	[Parent_id] [int] NULL,
	[Key_code] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionRole]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PermissionId] [int] NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/30/2021 8:45:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Name] [varchar](255) NULL,
	[Role_Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 8/30/2021 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Service_Name] [varchar](255) NULL,
	[Service_Price] [float] NULL,
	[Service_Description] [text] NULL,
	[Service_SaleStatus] [int] NULL,
	[Service_Image] [text] NULL,
	[Service_PriceSale] [float] NULL,
 CONSTRAINT [PK__Service__3214EC07433C3329] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 8/30/2021 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Staff_UserName] [varchar](255) NULL,
	[Staff_Password] [varchar](255) NULL,
	[Staff_Email] [varchar](255) NULL,
	[Staff_Gender] [int] NULL,
	[Staff_Age] [int] NULL,
	[Staff_Status] [int] NULL,
	[Staff_Phone] [varchar](50) NULL,
	[Staff_Address] [varchar](255) NULL,
	[Staff_Avatar] [text] NULL,
	[Staff_FullName] [varchar](255) NULL,
	[Staff_AboutMe] [text] NULL,
	[ServiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_OrderDetail]    Script Date: 8/30/2021 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date_Start] [datetime] NULL,
	[Date_End] [datetime] NULL,
	[Staff_Id] [int] NULL,
	[OrderDetail_Id] [int] NULL,
 CONSTRAINT [PK__Staff_Or__3214EC07959F77E3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInFo]    Script Date: 8/30/2021 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInFo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [varchar](255) NULL,
	[User_Password] [varchar](255) NULL,
	[User_Email] [varchar](255) NULL,
	[User_Gender] [int] NULL,
	[User_Age] [int] NULL,
	[User_Phone] [varchar](50) NULL,
	[User_Address] [varchar](255) NULL,
	[User_Avatar] [text] NULL,
	[User_FullName] [varchar](255) NULL,
	[User_AboutMe] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 8/30/2021 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (43, N'Company 1', N'0388659966', N'Ton That Thuyet - Ha Noi', N'fptaptech@gmail.com', N'Nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (44, N'Company 2', N'000000002', N'CG-HN', N'company2@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (45, N'Company 3', N'000000003', N'CG-HN', N'company3@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (46, N'Company 4', N'000000004', N'CG-HN', N'company4@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (47, N'Company 5', N'000000005', N'CG-HN', N'company5@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (48, N'Company 6', N'000000006', N'CG-HN', N'company6@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (49, N'Company 7', N'000000007', N'CG-HN', N'company7@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (50, N'Company 8', N'000000008', N'CG-HN', N'company8@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (51, N'Company 9', N'000000009', N'CG-HN', N'company9@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (52, N'Company 10', N'0000000010', N'CG-HN', N'company10@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (53, N'Company 11', N'0000000011', N'CG-HN', N'company11@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (54, N'Company 12', N'0000000012', N'CG-HN', N'company12@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (55, N'Company 13', N'0000000013', N'CG-HN', N'company13@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (56, N'Company 14', N'0000000014', N'CG-HN', N'company14@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (57, N'Company 15', N'0000000015', N'CG-HN', N'company15@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (68, N'Fpt_Aptech', N'0912387271', N'8-Ton That Thuyet - Ha Noi', N'Fpt_Aptech@gmail.com', NULL)
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (69, N'Good_Chicken', N'0971285449', N'Hai Ba Trung - Ha Noi', N'goodchicken@gmail.com', NULL)
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (70, N'Long Thanh', N'0981722996', N'Dong Da - Ha Noi', N'nhualongthanh@gmail.com', NULL)
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (72, N'asd', N'dasdasd', N'asdasd', N'asdasd@gmail.com', N' asdsada')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (30, N'Customer 2', N'123123123', N'huyducle1109@gmail.com', N'customer1', N'$2a$11$KT5f8wxolNdHch9ptCte0ugPf5aLCdi6GU6FQF7UZ53q9HmhqzJwu', 43, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/a10.jfif', 1)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (31, N'Customer 2', N'000000002', N'dothivanlinh@fpt.edu.vn', N'customer2', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 44, N'Great. I have hired many services here and am completely satisfied with the work and professionalism of the staff at Excel On. The price is also very reasonable', N'/Public/Image/user2.png', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (32, N'Customer 3', N'000000003', N'hauphan040@gmail.com', N'customer3', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 45, N'If you are a busy person, come here. I think this is the best solution for you to save time and money for your company.', N'/Public/Image/user4.png', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (33, N'Customer 4', N'000000004', N'maithanhhuyen@gmail.com', N'customer4', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 46, N'If you are a busy person, come here. I think this is the best solution for you to save time and money for your company.', N'/Public/Image/user5.png', 1)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (34, N'Customer 5', N'000000005', N'phamngocquynh@gmail.com', N'customer5', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 47, N'Great. I have hired many services here and am completely satisfied with the work and professionalism of the staff at Excel On. The price is also very reasonable', N'/Public/Image/user6.png', 1)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (35, N'Customer 6', N'000000006', N'buithuha@gmail.com', N'customer6', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 48, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (12).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (36, N'Customer 7', N'000000007', N'nguyenvantuan@gmail.com', N'customer7', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 49, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (4).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (37, N'Customer 8', N'000000008', N'leminhhieu@gmail.com', N'customer8', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 50, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (3).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (38, N'Customer 9', N'000000009', N'nguyenthanhhuyen@gmail.com', N'customer9', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 51, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (7).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (39, N'Customer 10', N'0000000010', N'leminhhai@gmail.com', N'customer10', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 52, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (8).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (40, N'Customer 11', N'0000000011', N'customer.11@gmail.com', N'customer11', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 53, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (9).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (41, N'Customer 12', N'0000000012', N'customer.12@gmail.com', N'customer12', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 54, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (11).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (42, N'Customer 13', N'0000000013', N'customer.13@gmail.com', N'customer13', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 55, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (13).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (43, N'Customer 14', N'0000000014', N'customer.14@gmail.com', N'customer14', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 56, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (14).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (44, N'Customer 15', N'0000000015', N'customer.15@gmail.com', N'customer15', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', 57, N'We are very pleased with the service here. You can have excellent employees without having to spend time searching and recruiting. It''s economical and flexible', N'/Public/Image/th (15).jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (61, N'Nguyen Trung Quan', N'0938417229', N'nguyentrungquan@gmail.com', N'nguyentrungquan', N'$2a$11$wgdEne51wxncXGpJHRNJnejV7hN3ILhmdQ3WsyzGkcatRJ2NK5/Yq', 68, NULL, N'/Public/Image/a17.jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (62, N'Phan Khanh Linh', N'0754112356', N'phankhanhlinh@gmail.com', N'phankhanhlinh', N'$2a$11$e52ZWXk4swEnBFNNbopEg.Ew2pMdeotXtvaUv5joZ0UN/9oq6QNTO', 69, NULL, N'/Public/Image/a19.jfif', 1)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (63, N'Do Manh Cuong', N'0456284778', N'domanhcuong@gmail.com', N'domanhcuong', N'$2a$11$5ua0eUOEYmiMPasUz74P4ugTONHpJCJrQmTTZiY4hEjY1ELZJKHz2', 70, NULL, N'/Public/Image/a17.jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (64, N'Pham Duc Manh', N'0123458812', N'phamducmanh@gmail.com', N'phamducmanh', N'$2a$11$AXKckjy2oFsT4MQlE52GGu5EGomFvCLx799FSNdQGtpF7K12R3zKq', 72, NULL, N'/Public/Image/a10.jfif', 0)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (65, N'TEST2', N'TEST2', N'ASDASD2', NULL, NULL, NULL, N'ASDASD2', NULL, 1)
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar], [Customer_Gender]) VALUES (66, N'test_customer_2', N'0938417229', N'123456789@gmail.com', N'123456789', N'$2a$11$nlqPSjInm57ZZFSAUzKtCO9UC.XSoK3mc3ok5dKFuJJD.DiBOcZRe', NULL, NULL, N'/Public/Image/a19.jfif', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (21, N'/Public/Image/about.jpg', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (22, N'/Public/Image/about2.jpg', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (23, N'/Public/Image/blog1.jpg', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (24, N'/Public/Image/blog2.jpg', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (25, N'/Public/Image/blog3.jpg', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (26, N'/Public/Image/s1.jpg', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (27, N'/Public/Image/s2.jpg', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (34, N'/Public/Image/g1.jpg', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (35, N'/Public/Image/g2.jpg', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (36, N'/Public/Image/g3.png', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (37, N'/Public/Image/g4.jpg', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (38, N'/Public/Image/g5.jfif', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (39, N'/Public/Image/g6.jpg', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (52, N'/Public/Image/a11.jfif', 1)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[MyCompany] ON 

INSERT [dbo].[MyCompany] ([Id], [Title], [Image], [Description], [Address], [TaxIdentificationNumber], [MyMission], [MyVision], [MyTarget]) VALUES (1, N'Few Words About Us!', N'/Public/Image/95-telemarketing.jpg', N'Excell-on Consulting Services (ECS) helps organizations develop innovative business and commerce strategies and solutions. These solutions allow their (organizations, say clients of Excell-on Consulting Services) customers to capitalize on new technologies to create innovative products and services for the economy. Their consulting team stays focused on defining, optimizing, and aligning their client’s business and IT strategies.', N'So 8 - Ton That Thuyet - Ha Noi -Viet Nam', N'152422asqwe', N'Creating useful solutions for companies in today''s 4.0 era and more...', N'We strive to be one of the best quality service companies in Vietnam.', N'Excell-on has segregated themselves into various branches based on the various services that they offer to their clients, so as to meet the requirements of organizations i.e., of their clients.')
SET IDENTITY_INSERT [dbo].[MyCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (27, CAST(N'2021-08-05T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 3, 10, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (28, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-12T00:00:00.000' AS DateTime), 3, 20, 1, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (29, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 2, 3, 1, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (30, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 2, 5, 2, 4)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (31, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 2, 4, 1, 5)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (32, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 2, 6, 3, 6)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (33, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 2, 6, 3, 7)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (38, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 2, 2, 1, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (39, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 2, 2, 2, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (40, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 2, 2, 3, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (41, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 7, 2, 13)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (42, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 6, 3, 13)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (47, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 10, 1, 21)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (48, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 15, 1, 22)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (49, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 10, 1, 23)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (50, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 10, 1, 24)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (51, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 5, 1, 25)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (52, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 5, 2, 25)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (53, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 5, 3, 25)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (87, CAST(N'2021-08-17T00:00:00.000' AS DateTime), CAST(N'2021-08-18T00:00:00.000' AS DateTime), 2, 5, 1, 26)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (88, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-19T00:00:00.000' AS DateTime), 2, 10, 2, 27)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (89, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 2, 10, 1, 62)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (90, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 2, 10, 1, 63)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (91, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 2, 17, 1, 64)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (92, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 2, 11, 3, 65)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (93, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 2, 15, 2, 66)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (98, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime), 2, 6, 1, 71)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (105, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 2, 15, 2, 78)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (106, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 2, 8, 2, 79)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (107, CAST(N'2021-08-26T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 3, 12, 3, 80)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (108, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 2, 9, 3, 81)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (109, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 0, 10, 1, 82)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (110, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 0, 10, 2, 82)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (111, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 0, 10, 3, 82)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (112, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 0, 5, 1, 83)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (113, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 0, 5, 2, 83)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (114, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 0, 5, 3, 83)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (115, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 0, 7, 1, 84)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (116, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 0, 8, 1, 85)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (117, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 0, 8, 3, 85)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (118, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 0, 5, 1, 86)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (120, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 0, 5, 1, 87)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (133, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 0, 15, 3, 87)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (134, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 0, 10, 1, 88)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (135, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 0, 10, 1, 89)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (137, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 2, 15, 2, 90)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (138, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 2, 10, 3, 90)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (139, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 3, 7, 1, 91)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (141, CAST(N'2021-09-10T00:00:00.000' AS DateTime), CAST(N'2021-09-12T00:00:00.000' AS DateTime), 3, 8, 3, 93)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (1, N'August/03/2021', N'abc', 0, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (2, N'August/03/2021', N'abc', 831600, 3, 31)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (3, N'August/04/2021', N'abc', 133650, 2, 32)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (4, N'August/04/2021', N'abc', 118800, 2, 33)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (5, N'August/05/2021', N'abc', 17820, 2, 34)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (6, N'August/06/2021', N'abc', 65340, 2, 35)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (7, N'August/06/2021', N'abc', 66000, 2, 36)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (12, N'August/10/2021', N'abc', 23000, 2, 38)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (13, N'August/14/2021', N'abc', 74250, 2, 39)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (21, N'August/15/2021', N'abc', 0, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (22, N'August/15/2021', N'abc', 67500, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (23, N'August/15/2021', N'abc', 45000, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (24, N'August/15/2021', N'abc', 0, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (25, N'August/16/2021', N'abc', 79200, 2, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (26, N'August/16/2021', N'abc', 30000, 2, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (27, N'August/17/2021', N'abc', 90000, 2, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (62, N'August/19/2021', N'Test cusomer new', 87300, 2, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (63, N'August/19/2021', N'Customer 2 Description', 43650, 2, 31)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (64, N'August/20/2021', N'asdasd', 222615, 2, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (65, N'August/21/2021', N'no', 117370, 2, 39)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (66, N'August/21/2021', N'asdad ads sgfadawd', 180000, 2, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (71, N'August/22/2021', N'nothing', 27000, 2, 39)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (78, N'August/23/2021', N'No', 180000, 2, 61)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (79, N'August/23/2021', N'No', 96000, 2, 62)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (80, N'August/23/2021', N'', 132000, 3, 39)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (81, N'August/23/2021', N'nothing', 192060, 2, 63)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (82, N'August/23/2021', N'', 160000, 0, 63)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (83, N'August/23/2021', N'dadas', 77600, 0, 63)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (84, N'August/23/2021', N'', 63000, 0, 63)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (85, N'August/23/2021', N'', 80000, 0, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (86, N'August/23/2021', N'sadasdsa', 22500, 0, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (87, N'August/23/2021', N'2', 287550, 0, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (88, N'August/24/2021', N'2', 90000, 0, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (89, N'August/30/2021', N'', 45000, 0, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (90, N'August/30/2021', N'', 420825, 2, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (91, N'August/30/2021', N'', 31185, 3, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (92, N'August/30/2021', N'', 0, 3, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (93, N'August/30/2021', N'', 82240, 3, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (94, N'August/30/2021', N'', 0, 0, 64)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (95, N'August/30/2021', N'abc', 0, 0, 64)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (1, N'Customer', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (2, N'Customer_List', 1, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (3, N'Customer_Add', 1, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (4, N'Customer_Edit', 1, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (5, N'Customer_Delete', 1, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (6, N'Company', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (7, N'Company_List', 6, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (8, N'Company_Add', 6, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (9, N'Company_Edit', 6, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (10, N'Company_Delete', 6, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (11, N'Service', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (12, N'Service_List', 11, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (13, N'Service_Add', 11, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (14, N'Service_Edit', 11, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (15, N'Service_Delete', 11, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (16, N'OrderDetail', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (17, N'OrderDetail_List', 16, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (18, N'OrderDetail_Assign', 16, N'Assign')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (19, N'Staff', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (20, N'Staff_List', 19, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (21, N'Staff_Add', 19, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (22, N'Staff_Edit', 19, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (23, N'Staff_Delete', 19, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (24, N'Staff_Status', 19, N'Status')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (25, N'Image', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (26, N'Image_List', 25, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (28, N'Order', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (29, N'Order_List', 28, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (30, N'Order_Activate', 28, N'Activate')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (31, N'Order_Complete', 28, N'Complete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (32, N'Order_Delete', 28, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (33, N'OrderDetail_Activate', 16, N'Activate')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (34, N'OrderDetail_Delete', 16, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (35, N'OrderDetail_Reset', 16, N'Reset')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (36, N'Order_Reset', 28, N'Reset')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (37, N'Order_Create', 28, N'Create')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (38, N'Home', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (39, N'Home_Dashboard', 38, N'Dashboard')
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionRole] ON 

INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (83, 12, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (84, 13, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (85, 14, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (86, 15, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (87, 24, 17)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (92, 17, 18)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (98, 20, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (99, 21, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (100, 22, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (101, 23, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (102, 24, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (131, 2, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (132, 3, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (133, 4, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (134, 5, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (135, 7, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (136, 8, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (137, 9, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (138, 10, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (139, 12, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (140, 13, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (141, 14, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (142, 15, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (143, 17, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (144, 18, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (145, 33, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (146, 34, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (147, 35, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (148, 20, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (149, 21, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (150, 22, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (151, 23, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (152, 24, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (153, 26, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (154, 29, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (155, 30, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (156, 31, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (157, 32, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (158, 36, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (160, 20, 17)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (161, 2, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (162, 3, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (163, 4, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (164, 5, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (165, 7, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (166, 8, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (167, 9, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (168, 10, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (169, 12, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (170, 13, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (171, 14, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (172, 15, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (173, 17, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (174, 18, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (175, 33, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (176, 34, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (177, 35, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (178, 20, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (179, 21, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (180, 22, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (181, 23, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (182, 24, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (183, 26, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (184, 29, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (185, 30, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (186, 31, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (187, 32, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (188, 36, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (189, 2, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (190, 3, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (191, 4, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (192, 5, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (193, 7, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (194, 8, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (195, 9, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (196, 10, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (197, 12, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (198, 13, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (199, 14, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (200, 15, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (201, 17, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (202, 18, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (203, 33, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (204, 34, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (205, 35, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (206, 20, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (207, 21, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (208, 22, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (209, 23, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (210, 24, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (211, 26, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (212, 29, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (213, 30, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (214, 31, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (215, 32, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (216, 36, 22)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (217, 29, 18)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (218, 37, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (219, 39, 13)
GO
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (220, 39, 21)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (221, 39, 22)
SET IDENTITY_INSERT [dbo].[PermissionRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (13, N'Admin', N'nothing')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (15, N'HR department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (16, N'Service department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (17, N'Training department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (18, N'Auditor department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (19, N'Internet security department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (21, N'CEO', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (22, N'Manager', N'None')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Service_Name], [Service_Price], [Service_Description], [Service_SaleStatus], [Service_Image], [Service_PriceSale]) VALUES (1, N'In-bounds', 4500, N'The In-bound service is a service in which one can only receive the calls from the customers. These call centers provide 24 hours service to all customers. The primary goal of these call centers are to receive product orders, help customers both technically and non-technically, to find dealer location.', 1, N'/Public/Image/a11.jfif', 4300)
INSERT [dbo].[Service] ([Id], [Service_Name], [Service_Price], [Service_Description], [Service_SaleStatus], [Service_Image], [Service_PriceSale]) VALUES (2, N'Out-bound', 6000, N'The Out-bound service is a service in which the employees of Excell-on call the customers for product promotions, for checking with the customer satisfaction on the services they provide, and for the telemarketing. Outbound Call Centers depends on the technological solutions, extensive experience, quality assurance programs and commitment to customer service excellence that further ensures maximum results from the direct marketing efforts for its success.', 1, N'/Public/Image/istockphoto-490176010-1024x1024.jpg', 5700)
INSERT [dbo].[Service] ([Id], [Service_Name], [Service_Price], [Service_Description], [Service_SaleStatus], [Service_Image], [Service_PriceSale]) VALUES (3, N'Tele Marketing', 5500, N'The Tele Marketing service is a service which is purely for the promotion of marketing or sales of the products and services.', 1, N'/Public/Image/95-telemarketing.jpg', 5300)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188022, N'nv1', N'$2a$11$63mdbtLOi2t6isk5wxnlPOMG236d/OojSjCO2WcbqKlTkUN7S5t76', N'nv1@gmail.com', 0, 22, 0, N'0962129668', N'Cau Giay - Ha Noi', N'/Public/Image/user3.png', N'Nguyen Van 1', N'I’m a master coach, best-selling author and a passionate speaker. I’m the founder of the first women-only hedge fund, special counsellor in many corporations across the globe. I’ve found balance between work and life, now I’m a totally happy person, loving mother, inspiring speaker and writer, and firm investor, but it didn’t come easily. I''ve gone though hundreds of failures and complicated situations. You can use my previous experience in order not to fall into the same trap.
', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188023, N'nv2', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv2@gmail.com', 0, 21, 1, N'000000002', N'HN', N'/Public/Image/user2.png', N'Nguyen Van 2', N'In 2008, I wrote my first book Success Yourself, and it was a real success, forgive me the wordiness. My upcoming book Inflated Expectations: Free Yourself from Your Past, Live Your Present and Get the Future You Want is the guidebook for how to treat disappointment on the emotional, mental, behavioral and spiritual levels.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188024, N'nv3', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv3@gmail.com', 0, 21, 1, N'000000003', N'HN', N'/Public/Image/user4.png', N'Nguyen Van 3', N'Today, I support ordinary people in answering the questions: “Who Am I, What do I want, and How do I get it?” I am a master coach combining life coaching with the principles of behavior psychology. I''m totally passionate about supporting people out of suffering and limitation and into fulfillment. ', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188025, N'nv4', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv4@gmail.com', 1, 21, 1, N'000000004', N'HN', N'/Public/Image/user5.png', N'Nguyen Van 4', N'My current passion for coaching appeared when I was 26 and met my first life coach, Hendrick. I thought I was just going to get some proper advice about the troubles I was having with my ex-boyfriend and questions I had about my stuck career, but I ended up seeing and studying with Hendrick for over 5 years.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188026, N'nv5', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv5@gmail.com', 1, 21, 1, N'000000005', N'HN', N'/Public/Image/user6.png', N'Nguyen Van 5', N'I was born in Kansas, and like little Ellie, I always dreamed that a hurricane would take me somewhere to another country. And once I really ended up in another country - in China, studying at a business school. There I began to travel a lot around Asia in my free time and then moved to work in Munich.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188027, N'nv6', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv6@gmail.com', 0, 21, 1, N'000000006', N'HN', N'/Public/Image/th (12).jfif', N'Nguyen Van 6', N'I discovered the world of low-cost airlines and began to fly somewhere and see the world every weekend. Being somewhere in the 15th country, I realized that I had enough experience and knowledge to share with others - and so this blog appeared. Here you will find useful tips, my travel experiences, life hacks and the usual daily thoughts about everything that surrounds me.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188028, N'nv7', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv7@gmail.com', 0, 21, 0, N'000000007', N'HN', N'/Public/Image/th (4).jfif', N'Nguyen Van 7', N'I’m a master coach, best-selling author and a passionate speaker. I’m the founder of the first women-only hedge fund, special counsellor in many corporations across the globe. I’ve found balance between work and life, now I’m a totally happy person, loving mother, inspiring speaker and writer, and firm investor, but it didn’t come easily. I''ve gone though hundreds of failures and complicated situations. You can use my previous experience in order not to fall into the same trap.
', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188029, N'nv8', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv8@gmail.com', 0, 21, 0, N'000000008', N'HN', N'/Public/Image/th (3).jfif', N'Nguyen Van 8', N'I am a skilled artist helping you create really beautiful and meaningful things in your niche. My works are aesthetically pleasing in every shape and pattern.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188030, N'nv9', N'$2a$11$5gtwUkD9pVEiQfpARodG5.0wUIflhJt1cdZeplGEGKLSI5Nnq/Msm', N'nv9@gmail.com', 0, 21, 0, N'000000009', N'HN', N'/Public/Image/th (7).jfif', N'Nguyen Van 9', N'My name is Patrick Jameson and I am a skilled artist presenting unique projects. I work both with businesses and individuals, and always find a non-standard approach to the task.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188031, N'nv10', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv10@gmail.com', 0, 21, 0, N'0000000010', N'HN', N'/Public/Image/th (8).jfif', N'Nguyen Van 10', N'I work with commercial projects of any scale and with private requests. I use the latest tools and creative approaches that help solve a specific business or personal issue.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188032, N'nv11', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv11@gmail.com', 0, 21, 0, N'0000000011', N'HN', N'/Public/Image/th (9).jfif', N'Nguyen Van 11', N'I''ll be happy to join creative teams to work on young-eyed commercial or social projects. If you think we can create something great together, contact me in any convenient way to discuss the possible cooperation.', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188033, N'nv12', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv12@gmail.com', 0, 21, 0, N'0000000012', N'HN', N'/Public/Image/th (11).jfif', N'Nguyen Van 12', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188034, N'nv13', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv13@gmail.com', 0, 21, 0, N'0000000013', N'HN', N'/Public/Image/th (13).jfif', N'Nguyen Van 13', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188035, N'nv14', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv14@gmail.com', 0, 21, 0, N'0000000014', N'HN', N'/Public/Image/th (14).jfif', N'Nguyen Van 14', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188036, N'nv15', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv15@gmail.com', 0, 21, 0, N'0000000015', N'HN', N'/Public/Image/th (15).jfif', N'Nguyen Van 15', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188037, N'nv16', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv16@gmail.com', 0, 21, 0, N'0000000016', N'HN', N'/Public/Image/th.jfif', N'Nguyen Van 16', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188038, N'nv17', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv17@gmail.com', 0, 21, 0, N'0000000017', N'HN', N'/Public/Image/user1.png', N'Nguyen Van 17', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188039, N'nv18', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv18@gmail.com', 0, 21, 0, N'0000000018', N'HN', N'/Public/Image/th (3).jfif', N'Nguyen Van 18', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188040, N'nv19', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv19@gmail.com', 0, 21, 0, N'0000000019', N'HN', N'/Public/Image/th (12).jfif', N'Nguyen Van 19', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188041, N'nv20', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv20@gmail.com', 0, 21, 0, N'0000000020', N'HN', N'/Public/Image/th (15).jfif', N'Nguyen Van 20', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188042, N'nv21', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv21@gmail.com', 0, 21, 0, N'0000000021', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 21', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188043, N'nv22', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv22@gmail.com', 0, 21, 0, N'0000000022', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 22', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188044, N'nv23', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv23@gmail.com', 0, 21, 0, N'0000000023', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 23', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188045, N'nv24', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv24@gmail.com', 0, 21, 0, N'0000000024', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 24', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188046, N'nv25', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv25@gmail.com', 0, 21, 0, N'0000000025', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 25', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188047, N'nv26', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv26@gmail.com', 0, 21, 0, N'0000000026', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 26', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188048, N'nv27', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv27@gmail.com', 0, 21, 0, N'0000000027', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 27', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188049, N'nv28', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv28@gmail.com', 0, 21, 0, N'0000000028', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 28', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188050, N'nv29', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv29@gmail.com', 0, 21, 0, N'0000000029', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 29', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188051, N'nv30', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv30@gmail.com', 0, 21, 0, N'0000000030', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 30', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188052, N'nv30', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv30@gmail.com', 1, 21, 1, N'0000000030', N'HN', N'/Public/Image/avt.png', N'Do thi 30', N'I''ll be happy to join creative teams to work on young-eyed commercial or social projects. If you think we can create something great together, contact me in any convenient way to discuss the possible cooperation.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188053, N'nv31', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv31@gmail.com', 1, 21, 1, N'0000000031', N'HN', N'/Public/Image/avt.png', N'Do thi 31', N'I work with commercial projects of any scale and with private requests. I use the latest tools and creative approaches that help solve a specific business or personal issue.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188054, N'nv32', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv32@gmail.com', 1, 21, 1, N'0000000032', N'HN', N'/Public/Image/avt.png', N'Do thi 32', N' Hi everyone, I am a skilled artist presenting unique projects. I work both with businesses and individuals, and always find a non-standard approach to the task.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188055, N'nv33', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv33@gmail.com', 1, 21, 1, N'0000000033', N'HN', N'/Public/Image/avt.png', N'Do thi 33', N'I am a skilled artist helping you create really beautiful and meaningful things in your niche. My works are aesthetically pleasing in every shape and pattern.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188056, N'nv34', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv34@gmail.com', 1, 21, 1, N'0000000034', N'HN', N'/Public/Image/avt.png', N'Do thi 34', N'I was born in Kansas, and like little Ellie, I always dreamed that a hurricane would take me somewhere to another country. And once I really ended up in another country - in China, studying at a business school. There I began to travel a lot around Asia in my free time and then moved to work in Munich.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188057, N'nv35', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv35@gmail.com', 1, 21, 1, N'0000000035', N'HN', N'/Public/Image/avt.png', N'Do thi 35', N'I discovered the world of low-cost airlines and began to fly somewhere and see the world every weekend. Being somewhere in the 15th country, I realized that I had enough experience and knowledge to share with others - and so this blog appeared. Here you will find useful tips, my travel experiences, life hacks and the usual daily thoughts about everything that surrounds me.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188058, N'nv36', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv36@gmail.com', 1, 21, 1, N'0000000036', N'HN', N'/Public/Image/avt.png', N'Do thi 36', N'I’m a master coach, best-selling author and a passionate speaker. I’m the founder of the first women-only hedge fund, special counsellor in many corporations across the globe. I’ve found balance between work and life, now I’m a totally happy person, loving mother, inspiring speaker and writer, and firm investor, but it didn’t come easily. I''ve gone though hundreds of failures and complicated situations. You can use my previous experience in order not to fall into the same trap.
', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188059, N'nv37', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv37@gmail.com', 1, 21, 1, N'0000000037', N'HN', N'/Public/Image/avt.png', N'Do thi 37', N'We are a licensed lizard breeder. We know for sure that with proper care, lizards can be great unpretentious pets. Our goal is to popularize lizards as pets, sell popular species of lizards and advise on reptile care.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188060, N'nv38', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv38@gmail.com', 1, 21, 0, N'0000000038', N'HN', N'/Public/Image/avt.png', N'Do thi 38', N'I''ll be happy to join creative teams to work on young-eyed commercial or social projects. If you think we can create something great together, contact me in any convenient way to discuss the possible cooperation.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188061, N'nv39', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv39@gmail.com', 1, 21, 0, N'0000000039', N'HN', N'/Public/Image/avt.png', N'Do thi 39', N'I work with commercial projects of any scale and with private requests. I use the latest tools and creative approaches that help solve a specific business or personal issue.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188062, N'nv40', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv40@gmail.com', 1, 21, 0, N'0000000040', N'HN', N'/Public/Image/avt.png', N'Do thi 40', N'I am a skilled artist helping you create really beautiful and meaningful things in your niche. My works are aesthetically pleasing in every shape and pattern.', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188063, N'nv41', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv41@gmail.com', 1, 21, 0, N'0000000041', N'HN', N'/Public/Image/avt.png', N'Do thi 41', N'I’m a master coach, best-selling author and a passionate speaker. I’m the founder of the first women-only hedge fund, special counsellor in many corporations across the globe. I’ve found balance between work and life, now I’m a totally happy person, loving mother, inspiring speaker and writer, and firm investor, but it didn’t come easily. I''ve gone though hundreds of failures and complicated situations. You can use my previous experience in order not to fall into the same trap.
', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188064, N'nv42', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv42@gmail.com', 1, 21, 0, N'0000000042', N'HN', N'/Public/Image/avt.png', N'Do thi 42', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188065, N'nv43', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv43@gmail.com', 1, 21, 0, N'0000000043', N'HN', N'/Public/Image/avt.png', N'Do thi 43', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188066, N'nv44', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv44@gmail.com', 1, 21, 0, N'0000000044', N'HN', N'/Public/Image/avt.png', N'Do thi 44', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188067, N'nv45', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv45@gmail.com', 1, 21, 0, N'0000000045', N'HN', N'/Public/Image/avt.png', N'Do thi 45', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188068, N'nv46', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv46@gmail.com', 1, 21, 0, N'0000000046', N'HN', N'/Public/Image/avt.png', N'Do thi 46', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188069, N'nv47', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv47@gmail.com', 1, 21, 0, N'0000000047', N'HN', N'/Public/Image/avt.png', N'Do thi 47', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188070, N'nv48', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv48@gmail.com', 1, 21, 0, N'0000000048', N'HN', N'/Public/Image/avt.png', N'Do thi 48', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188071, N'nv49', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv49@gmail.com', 1, 21, 0, N'0000000049', N'HN', N'/Public/Image/avt.png', N'Do thi 49', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188072, N'nv50', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv50@gmail.com', 1, 21, 0, N'0000000050', N'HN', N'/Public/Image/avt.png', N'Do thi 50', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188073, N'nv51', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv51@gmail.com', 1, 21, 0, N'0000000051', N'HN', N'/Public/Image/avt.png', N'Do thi 51', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188074, N'nv52', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv52@gmail.com', 1, 21, 0, N'0000000052', N'HN', N'/Public/Image/avt.png', N'Do thi 52', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188075, N'nv53', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv53@gmail.com', 1, 21, 0, N'0000000053', N'HN', N'/Public/Image/avt.png', N'Do thi 53', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188076, N'nv54', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv54@gmail.com', 1, 21, 0, N'0000000054', N'HN', N'/Public/Image/avt.png', N'Do thi 54', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188077, N'nv55', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv55@gmail.com', 1, 21, 0, N'0000000055', N'HN', N'/Public/Image/avt.png', N'Do thi 55', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188078, N'nv56', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv56@gmail.com', 1, 21, 0, N'0000000056', N'HN', N'/Public/Image/avt.png', N'Do thi 56', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188079, N'nv57', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv57@gmail.com', 1, 21, 0, N'0000000057', N'HN', N'/Public/Image/avt.png', N'Do thi 57', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188080, N'nv58', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv58@gmail.com', 1, 21, 0, N'0000000058', N'HN', N'/Public/Image/avt.png', N'Do thi 58', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188081, N'nv59', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv59@gmail.com', 1, 21, 0, N'0000000059', N'HN', N'/Public/Image/avt.png', N'Do thi 59', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188082, N'nv60', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv60@gmail.com', 1, 21, 0, N'0000000060', N'HN', N'/Public/Image/avt.png', N'Do thi 60', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188083, N'nv60', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv60@gmail.com', 1, 21, 1, N'0000000060', N'HN', N'/Public/Image/1761894.png', N'Tran thi 60', N'I’m a master coach, best-selling author and a passionate speaker. I’m the founder of the first women-only hedge fund, special counsellor in many corporations across the globe. I’ve found balance between work and life, now I’m a totally happy person, loving mother, inspiring speaker and writer, and firm investor, but it didn’t come easily. I''ve gone though hundreds of failures and complicated situations. You can use my previous experience in order not to fall into the same trap.
', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188084, N'nv61', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv61@gmail.com', 1, 21, 1, N'0000000061', N'HN', N'/Public/Image/1761894.png', N'Tran thi 61', N'I discovered the world of low-cost airlines and began to fly somewhere and see the world every weekend. Being somewhere in the 15th country, I realized that I had enough experience and knowledge to share with others - and so this blog appeared. Here you will find useful tips, my travel experiences, life hacks and the usual daily thoughts about everything that surrounds me.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188085, N'nv62', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv62@gmail.com', 1, 21, 1, N'0000000062', N'HN', N'/Public/Image/1761894.png', N'Tran thi 62', N'Today, I support ordinary people in answering the questions: “Who Am I, What do I want, and How do I get it?” I am a master coach combining life coaching with the principles of behavior psychology. I''m totally passionate about supporting people out of suffering and limitation and into fulfillment. ', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188086, N'nv63', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv63@gmail.com', 1, 21, 1, N'0000000063', N'HN', N'/Public/Image/1761894.png', N'Tran thi 63', N'My current passion for coaching appeared when I was 26 and met my first life coach, Hendrick. I thought I was just going to get some proper advice about the troubles I was having with my ex-boyfriend and questions I had about my stuck career, but I ended up seeing and studying with Hendrick for over 5 years.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188087, N'nv64', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv64@gmail.com', 1, 21, 1, N'0000000064', N'HN', N'/Public/Image/1761894.png', N'Tran thi 64', N'I was born in Kansas, and like little Ellie, I always dreamed that a hurricane would take me somewhere to another country. And once I really ended up in another country - in China, studying at a business school. There I began to travel a lot around Asia in my free time and then moved to work in Munich.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188088, N'nv65', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv65@gmail.com', 1, 21, 1, N'0000000065', N'HN', N'/Public/Image/1761894.png', N'Tran thi 65', N'I am a skilled artist helping you create really beautiful and meaningful things in your niche. My works are aesthetically pleasing in every shape and pattern.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188089, N'nv66', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv66@gmail.com', 1, 21, 1, N'0000000066', N'HN', N'/Public/Image/1761894.png', N'Tran thi 66', N'We are a licensed lizard breeder. We know for sure that with proper care, lizards can be great unpretentious pets. Our goal is to popularize lizards as pets, sell popular species of lizards and advise on reptile care.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188090, N'nv67', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv67@gmail.com', 1, 21, 1, N'0000000067', N'HN', N'/Public/Image/1761894.png', N'Tran thi 67', N'I''ll be happy to join creative teams to work on young-eyed commercial or social projects. If you think we can create something great together, contact me in any convenient way to discuss the possible cooperation.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188091, N'nv68', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv68@gmail.com', 1, 21, 1, N'0000000068', N'HN', N'/Public/Image/1761894.png', N'Tran thi 68', N'Passionate marketing professional with 4+ years of experience driving conversion rates and increasing revenue. Currently employed as a Lead Marketing Specialist at Yolex Inc.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188092, N'nv69', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv69@gmail.com', 1, 21, 0, N'0000000069', N'HN', N'/Public/Image/1761894.png', N'Tran thi 69', N'I''ll be happy to join creative teams to work on young-eyed commercial or social projects. If you think we can create something great together, contact me in any convenient way to discuss the possible cooperation.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188093, N'nv70', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv70@gmail.com', 1, 21, 0, N'0000000070', N'HN', N'/Public/Image/1761894.png', N'Tran thi 70', N'I work with commercial projects of any scale and with private requests. I use the latest tools and creative approaches that help solve a specific business or personal issue.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188094, N'nv71', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv71@gmail.com', 1, 21, 0, N'0000000071', N'HN', N'/Public/Image/1761894.png', N'Tran thi 71', N' Hi everyone, I am a skilled artist presenting unique projects. I work both with businesses and individuals, and always find a non-standard approach to the task.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188095, N'nv72', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv72@gmail.com', 1, 21, 0, N'0000000072', N'HN', N'/Public/Image/1761894.png', N'Tran thi 72', N'I was born in Kansas, and like little Ellie, I always dreamed that a hurricane would take me somewhere to another country. And once I really ended up in another country - in China, studying at a business school. There I began to travel a lot around Asia in my free time and then moved to work in Munich.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188096, N'nv73', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv73@gmail.com', 1, 21, 0, N'0000000073', N'HN', N'/Public/Image/1761894.png', N'Tran thi 73', N'I am a skilled artist helping you create really beautiful and meaningful things in your niche. My works are aesthetically pleasing in every shape and pattern.', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188097, N'nv74', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv74@gmail.com', 1, 21, 0, N'0000000074', N'HN', N'/Public/Image/1761894.png', N'Tran thi 74', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188098, N'nv75', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv75@gmail.com', 1, 21, 0, N'0000000075', N'HN', N'/Public/Image/1761894.png', N'Tran thi 75', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188099, N'nv76', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv76@gmail.com', 1, 21, 0, N'0000000076', N'HN', N'/Public/Image/1761894.png', N'Tran thi 76', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188100, N'nv77', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv77@gmail.com', 1, 21, 0, N'0000000077', N'HN', N'/Public/Image/1761894.png', N'Tran thi 77', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188101, N'nv78', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv78@gmail.com', 1, 21, 0, N'0000000078', N'HN', N'/Public/Image/1761894.png', N'Tran thi 78', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188102, N'nv79', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv79@gmail.com', 1, 21, 0, N'0000000079', N'HN', N'/Public/Image/1761894.png', N'Tran thi 79', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188103, N'nv80', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv80@gmail.com', 1, 21, 0, N'0000000080', N'HN', N'/Public/Image/1761894.png', N'Tran thi 80', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188104, N'nv81', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv81@gmail.com', 1, 21, 0, N'0000000081', N'HN', N'/Public/Image/1761894.png', N'Tran thi 81', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188105, N'nv82', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv82@gmail.com', 1, 21, 0, N'0000000082', N'HN', N'/Public/Image/1761894.png', N'Tran thi 82', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188106, N'nv83', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv83@gmail.com', 1, 21, 0, N'0000000083', N'HN', N'/Public/Image/1761894.png', N'Tran thi 83', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188107, N'nv84', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv84@gmail.com', 1, 21, 0, N'0000000084', N'HN', N'/Public/Image/1761894.png', N'Tran thi 84', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188108, N'nv85', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv85@gmail.com', 1, 21, 0, N'0000000085', N'HN', N'/Public/Image/1761894.png', N'Tran thi 85', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188109, N'nv86', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv86@gmail.com', 1, 21, 0, N'0000000086', N'HN', N'/Public/Image/1761894.png', N'Tran thi 86', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188110, N'nv87', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv87@gmail.com', 1, 21, 0, N'0000000087', N'HN', N'/Public/Image/1761894.png', N'Tran thi 87', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188111, N'nv88', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv88@gmail.com', 1, 21, 0, N'0000000088', N'HN', N'/Public/Image/1761894.png', N'Tran thi 88', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188112, N'nv89', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv89@gmail.com', 1, 21, 0, N'0000000089', N'HN', N'/Public/Image/1761894.png', N'Tran thi 89', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188113, N'nv90', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv90@gmail.com', 1, 21, 0, N'0000000090', N'HN', N'/Public/Image/1761894.png', N'Tran thi 90', N'nothing', 3)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff_OrderDetail] ON 

INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (31, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 188022, 29)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (32, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 188023, 29)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (33, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 188024, 29)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (34, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188052, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (35, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188053, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (36, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188054, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (37, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188055, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (38, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188056, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (39, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188025, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (40, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188026, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (41, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188027, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (42, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188028, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (49, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188089, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (50, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188090, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (51, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188091, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (52, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188092, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (53, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188093, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (54, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188094, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (103, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188086, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (104, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188087, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (105, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188088, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (106, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188095, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (107, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188096, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (108, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188097, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (119, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188057, 39)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (120, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188058, 39)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (121, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188083, 40)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (122, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188084, 40)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (123, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188059, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (124, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188060, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (125, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188061, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (126, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188062, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (127, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188063, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (128, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188064, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (129, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188065, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (130, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188085, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (131, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188098, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (132, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188099, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (133, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188100, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (134, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188101, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (135, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188102, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (234, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188032, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (235, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188033, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (236, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188034, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (237, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188035, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (238, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188036, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (239, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188066, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (240, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188067, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (241, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188068, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (242, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188069, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (243, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188070, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (244, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188103, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (245, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188104, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (246, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188105, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (247, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188106, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (248, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188107, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (430, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188029, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (431, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188030, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (432, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188031, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (433, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188037, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (434, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188038, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (435, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188039, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (436, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188040, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (437, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188041, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (438, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188042, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (439, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-22T00:00:00.000' AS DateTime), 188043, 89)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (443, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188028, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (446, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188034, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (449, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188044, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (450, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188045, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (451, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188046, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (452, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188047, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (453, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188048, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (454, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188049, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (455, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188050, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (456, CAST(N'2021-08-22T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188051, 90)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (457, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188025, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (458, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188026, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (459, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188027, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (460, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188029, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (461, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188030, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (462, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188031, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (463, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188032, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (464, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188033, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (465, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188035, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (466, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188036, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (467, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188037, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (468, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188038, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (469, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188039, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (470, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188040, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (471, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188041, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (472, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188042, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (473, CAST(N'2021-08-23T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188043, 91)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (474, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188089, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (475, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188090, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (476, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188091, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (477, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188092, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (478, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188093, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (479, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188094, 92)
GO
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (480, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188086, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (481, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188087, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (482, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188088, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (483, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188095, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (484, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188096, 92)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (485, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188052, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (486, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188053, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (487, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188054, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (488, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188055, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (489, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188056, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (490, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188057, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (491, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188058, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (492, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188059, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (493, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188060, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (494, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188061, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (495, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188062, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (496, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188063, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (497, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188064, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (498, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188065, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (499, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-23T00:00:00.000' AS DateTime), 188066, 93)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (520, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime), 188046, 98)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (521, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime), 188047, 98)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (522, CAST(N'2021-08-17T00:00:00.000' AS DateTime), CAST(N'2021-08-18T00:00:00.000' AS DateTime), 188022, 87)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (523, CAST(N'2021-08-17T00:00:00.000' AS DateTime), CAST(N'2021-08-18T00:00:00.000' AS DateTime), 188023, 87)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (524, CAST(N'2021-08-17T00:00:00.000' AS DateTime), CAST(N'2021-08-18T00:00:00.000' AS DateTime), 188024, 87)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (525, CAST(N'2021-08-17T00:00:00.000' AS DateTime), CAST(N'2021-08-18T00:00:00.000' AS DateTime), 188025, 87)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (526, CAST(N'2021-08-17T00:00:00.000' AS DateTime), CAST(N'2021-08-18T00:00:00.000' AS DateTime), 188026, 87)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (527, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime), 188048, 98)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (532, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime), 188045, 98)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (533, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime), 188049, 98)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (534, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-25T00:00:00.000' AS DateTime), 188051, 98)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (590, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188052, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (591, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188053, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (592, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188054, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (593, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188055, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (594, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188056, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (595, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188057, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (596, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188058, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (597, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188059, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (598, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188060, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (599, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188061, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (600, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188062, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (601, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188063, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (602, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188064, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (603, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188065, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (604, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188066, 105)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (605, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188071, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (606, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188072, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (607, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188073, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (608, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188074, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (609, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188075, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (610, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188076, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (611, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188077, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (612, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-26T00:00:00.000' AS DateTime), 188078, 106)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (625, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188108, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (626, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188109, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (627, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188110, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (628, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188111, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (629, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188112, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (630, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188113, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (631, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188083, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (632, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188084, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (633, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime), 188085, 108)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (634, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188022, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (635, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188023, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (636, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188024, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (637, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188025, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (638, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188026, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (639, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188027, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (640, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188028, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (641, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188032, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (642, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188033, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (643, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188034, 109)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (644, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188079, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (645, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188080, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (646, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188081, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (647, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188082, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (648, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188052, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (649, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188053, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (650, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188054, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (651, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188055, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (652, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188056, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (653, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188059, 110)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (654, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188085, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (655, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188086, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (656, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188087, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (657, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188088, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (658, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188089, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (659, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188090, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (660, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188091, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (661, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188092, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (662, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188093, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (663, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 188094, 111)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (664, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188029, 112)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (665, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188030, 112)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (666, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188031, 112)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (667, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188035, 112)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (668, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188036, 112)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (669, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188060, 113)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (670, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188061, 113)
GO
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (671, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188062, 113)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (672, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188063, 113)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (673, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188064, 113)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (674, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188095, 114)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (675, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188096, 114)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (676, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188097, 114)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (677, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188098, 114)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (678, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188099, 114)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (679, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188022, 115)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (680, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188023, 115)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (681, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188024, 115)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (682, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188025, 115)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (683, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188026, 115)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (684, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188027, 115)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (685, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188028, 115)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (686, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188032, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (687, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188033, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (688, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188034, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (689, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188037, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (690, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188038, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (691, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188039, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (692, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188040, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (693, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188041, 116)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (694, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188085, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (695, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188086, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (696, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188087, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (697, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188088, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (698, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188089, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (699, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188090, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (700, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188091, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (701, CAST(N'2021-09-03T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188092, 117)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (707, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188044, 118)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (708, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188046, 118)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (709, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188048, 118)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (710, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188049, 118)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (711, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-05T00:00:00.000' AS DateTime), 188050, 118)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (722, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188042, 120)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (723, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188043, 120)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (724, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188045, 120)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (725, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188047, 120)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (726, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), 188051, 120)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (918, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188089, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (919, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188090, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (920, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188091, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (921, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188092, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (922, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188093, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (923, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188094, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (924, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188086, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (925, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188087, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (926, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188088, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (927, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188095, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (928, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188096, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (929, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188097, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (930, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188083, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (931, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188084, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (932, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-11T00:00:00.000' AS DateTime), 188085, 133)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (933, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188025, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (934, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188026, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (935, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188027, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (936, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188028, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (937, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188029, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (938, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188030, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (939, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188031, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (940, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188032, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (941, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188033, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (942, CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime), 188034, 134)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (943, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188022, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (944, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188023, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (945, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188024, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (946, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188025, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (947, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188026, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (948, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188027, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (949, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188028, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (950, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188032, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (951, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188033, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (952, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), 188034, 135)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (996, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188054, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (997, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188057, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (998, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188060, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (999, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188061, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1000, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188062, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1001, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188063, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1002, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188064, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1003, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188065, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1004, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188066, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1005, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188067, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1006, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188068, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1007, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188069, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1008, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188070, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1009, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188071, 137)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (1010, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), 188072, 137)
SET IDENTITY_INSERT [dbo].[Staff_OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInFo] ON 

INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (4, N'huyduc', N'$2a$11$wOoG8NiT4GJlO1l0Lg7nuuqGLJDM.tRqlyCuh03o1wFnN3rHCdTAy', N'huyducle1109@gmail.com', 0, 20, N'0961503893', N'CG-HN', N'/Public/Image/OIP.jfif', N'Le Huy Duc', N'nothing.........................................................................')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (5, N'CEO', N'$2a$11$SNEkb5fXx0TUKGKQvPjDo.KJpjxf6UfM9flZfxRB6V.i/rDcDJfni', N'hauphan040@gmail.com', 1, 20, N'0384896044', N'CG-HN', N'/Public/Image/user5.png', N'Phan Thi Hau', N'none')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (6, N'Manager', N'$2a$11$.SLGn4vOouxI.ftf8Hbei.PxEhZY6R72JLO0YWiK.7dXjPexRR5oi', N'Manager123@gmail.com', 1, 23, N'0988776655', N'HBT - HN', N'/Public/Image/a17.jfif', N'Nguyen Thu Huyen', N'nothing')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (11, N'nguyenkhanhlinh', N'$2a$11$jYV2a8tanL5KOpLgmkkO1u7/6YZgFFwOq1PK2sea45iwkpNdKMxcO', N'khanhlinh123@gmail.com', 1, 20, N'0982129658', N'Hai Ba Trung - Ha Noi', N'/Public/Image/a19.jfif', N'Nguyen Khanh Linh', N'Nothing')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (12, N'tranvannam', N'$2a$11$ISQ/EtnbzTfPV0MFZ5JHeu.X/0f31pvR3.qbiSUUP2EU3Yrmf5LLW', N'tranvannam@gmail.com', 0, 23, N'0948139586', N'Tay Ho - Ha Noi', N'/Public/Image/th (13).jfif', N'Tran Van Nam', N'nothing')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (13, N'nguyenthanhhuyen', N'$2a$11$ZX96bov8pzekIBPeDmNM9.NpopPf9WSZUWXobZIb.hN1Ku19bhTs2', N'nguyenthanhhuyen@gmail.com', 1, 27, N'0813152588', N'Cau Giay - Ha Noi', N'/Public/Image/th (6).jfif', N'Nguyen Thanh Huyen', N'nothing')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (14, N'lemanhcuong', N'$2a$11$O3p8e0OiUQ5Qs2TkMMJdRejIZDaHrc5nyLYCF/HF9SCkHFCbgJPR2', N'lemanhcuong@gmail.com', 0, 25, N'0966123436', N'Dong Da - Ha Noi', N'/Public/Image/a10.jfif', N'Le Manh Cuong', N'nothing')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (15, N'phamducmanh', N'$2a$11$rchwyIsaK.ZUtGMZPRGP4urnM04iGdGrBYPKheV2.Z5OPVKGV3yDy', N'phamducmanh@gmail.com', 0, 21, N'09213142102', N'Tay Ho - Ha Noi', N'/Public/Image/a4.jfif', N'Pham Duc Manh', N'abcdeeeeeeeeeeeeeeeeeeeeeeeeeeee')
SET IDENTITY_INSERT [dbo].[UserInFo] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (3, 4, 13)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (16, 5, 21)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (17, 6, 22)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (19, 12, 16)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (20, 13, 18)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (21, 14, 17)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (26, 11, 15)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (27, 15, 16)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Customer_Avatar]  DEFAULT ('~/Public/Image/avt.png') FOR [Customer_Avatar]
GO
ALTER TABLE [dbo].[UserInFo] ADD  CONSTRAINT [DF_UserInFo_User_Avatar]  DEFAULT ('~/Public/Image/avt.png') FOR [User_Avatar]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__6319B466] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__6319B466]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Servi__6225902D] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Servi__6225902D]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Customer__5F492382] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Customer__5F492382]
GO
ALTER TABLE [dbo].[PermissionRole]  WITH CHECK ADD FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
GO
ALTER TABLE [dbo].[PermissionRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[Staff_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__Staff_Ord__Order__7720AD13] FOREIGN KEY([OrderDetail_Id])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[Staff_OrderDetail] CHECK CONSTRAINT [FK__Staff_Ord__Order__7720AD13]
GO
ALTER TABLE [dbo].[Staff_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__Staff_Ord__Staff__762C88DA] FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Id])
GO
ALTER TABLE [dbo].[Staff_OrderDetail] CHECK CONSTRAINT [FK__Staff_Ord__Staff__762C88DA]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[UserInFo] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Excell-On] SET  READ_WRITE 
GO
