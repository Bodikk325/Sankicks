USE [master]
GO
/****** Object:  Database [Sankicks]    Script Date: 2022. 11. 21. 15:01:52 ******/
CREATE DATABASE [Sankicks]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sankicks', FILENAME = N'C:\Users\prezs\Sankicks.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sankicks_log', FILENAME = N'C:\Users\prezs\Sankicks_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Sankicks] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sankicks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sankicks] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sankicks] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sankicks] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sankicks] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sankicks] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sankicks] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Sankicks] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sankicks] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sankicks] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sankicks] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sankicks] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sankicks] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sankicks] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sankicks] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sankicks] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Sankicks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sankicks] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sankicks] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sankicks] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sankicks] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sankicks] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Sankicks] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sankicks] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sankicks] SET  MULTI_USER 
GO
ALTER DATABASE [Sankicks] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sankicks] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sankicks] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sankicks] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sankicks] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sankicks] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sankicks] SET QUERY_STORE = OFF
GO
USE [Sankicks]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2022. 11. 21. 15:01:52 ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 2022. 11. 21. 15:01:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[Date] [date] NOT NULL,
	[PostalCode] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Door] [nvarchar](500) NOT NULL,
	[Message] [nvarchar](500) NULL,
	[Order] [nvarchar](max) NOT NULL,
	[Payed] [nvarchar](50) NOT NULL,
	[Amount] [bigint] NOT NULL,
	[Delivered] [bit] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2022. 11. 21. 15:01:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[On_Stock] [int] NOT NULL,
	[Main_Image] [nvarchar](max) NULL,
	[Image1] [nvarchar](max) NULL,
	[Image2] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Sizes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220904110437_AddToDatabase', N'6.0.8')
GO
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'e9b848c8-d066-4358-819b-0a3a6c01fa07', CAST(N'2022-10-02' AS Date), N'1224', N'Zichy Jenő utca 41.', N'2/12', N'Mi a helyzet fiúk?', N'JORDAN 1 HIGH UNIVERSITY BLUE: 36EU
JORDAN 1 HIGH GYM RED: 42EU
DUNK PANDA: 43EU
', N'Kártya', 838200, 0)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'abc922ab-2dc4-4006-9729-0ca72efe0f0b', CAST(N'2022-10-03' AS Date), N'2142', N'Kérő utca 20', N'1/14', N'Hellokabelloka', N'DUNK PANDA: 42EU
', N'Kártya', 190500, 0)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'ffe1a899-35fb-4b65-9d26-0faf2223eb2e', CAST(N'2022-10-14' AS Date), N'1235', N'Kérő utca 20', N'2/10', N'Sanki vok helloka belloka', N'JORDAN 1 HIGH GYM RED: 42EU
', N'card', 80000, 0)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'75cd369c-9206-44ff-b29c-4008eb544134', CAST(N'2022-10-17' AS Date), N'1024', N'Wesselényi utca 30.', N'2/10', NULL, N'JORDAN 1 HIGH MIDNIGHT NAVY: 42EU
', N'card', 150000, 0)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'eca2cf34-f60b-403e-9dd7-45d07b5aa229', CAST(N'2022-10-04' AS Date), N'1000', N'Váci utca 30', N'2/10', N'Menjetek az anyátokba bele mindannyian', N'JORDAN 1 HIGH UNIVERSITY BLUE: 36EU
JORDAN 1 HIGH GYM RED: 43EU
', N'Kártya', 635000, 1)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'83aa1bbb-8fd7-443c-97f2-533def0a1a7a', CAST(N'2022-10-17' AS Date), N'1000', N'Csalogány utca 2.', N'1/12', NULL, N'JORDAN 1 HIGH TRAVIS SCOTT: 40EU
', N'shipping', 1100000, 0)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'8d265ef8-2eac-411f-9de7-6416a15b68ee', CAST(N'2022-10-02' AS Date), N'1025', N'Váci utca 30', N'2/12', N'Sanki vok helloka belloka', N'JORDAN 1 HIGH PROTOTYPE: 42EU
', N'Kártya', 107950, 1)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'1dababaa-73a0-4f95-ac7d-99b33c5788c6', CAST(N'2022-10-17' AS Date), N'1000', N'Váci utca 30', N'6/39', NULL, N'JORDAN 1 HIGH GYM RED: 42EU
', N'shipping', 80000, 0)
INSERT [dbo].[Orders] ([Id], [Date], [PostalCode], [Address], [Door], [Message], [Order], [Payed], [Amount], [Delivered]) VALUES (N'810826da-b84f-4dcf-9894-fa837675a39f', CAST(N'2022-10-02' AS Date), N'1112', N'Kérő utca 20', N'6/39', NULL, N'JORDAN 1 HIGH UNIVERSITY BLUE: 36EU
', N'Kártya', 533400, 0)
GO
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'b5faae85-f187-4f3c-9e02-07ca75314d1c', N'JORDAN 1 HIGH PROTOTYPE', 120000, N'Egyedi megjelenés, megjelenési dátuma: 2021 októbere', 53, N'../../../assets/J1_Prototype.png', N'../../assets/J1_Prototype_Bottom.png', N'../../assets/J1_Prototype_Side.png', N'Shoe', N'Nike', N'Jordan 1 High', N'{"41EU":80000, "42EU":85000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'931c13ba-e8a4-4301-8237-3122fce45907', N'JORDAN 1 HIGH MIDNIGHT NAVY', 90000, N'Egyedi megjelenés a sötétkék éjszakai színekben', 4, N'../../../assets/J1_MidnightNavy.png', N'../../../assets/J1_MidnightNavy_Side.png', N'../../../assets/J1_MidnightNavy_Bottom.png', N'Shoe', N'Nike', N'Jordan 1 High', N'{"41EU":150000, "42EU":150000, "43EU":160000, "40EU" : 150000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'33eb71df-3783-491c-98e7-3a1c49e4a0be', N'JORDAN 1 HIGH GYM RED', 90000, N'Perfect a gymbe és máshova, tökéletes kezdő Jordan 1', 10, N'../../../assets/J1_GymRed.png', N'../../assets/J1_GymRed_Bottom.png', N'../../assets/J1_GymRed_Side.jpg', N'Shoe', N'Nike', N'Jordan 1 High', N'{"41EU":76000, "42EU":80000, "43EU":80000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'e3ba67b4-2a16-454b-a6ab-510ffdf148a0', N'YEEZY BELUGA 2', 120000, N'Kanye West az Isten. ezt mindenki tudja', 0, N'../../../assets/Yeezy_Beluga2.png', N'../../../assets/Yeezy_Beluga2_Bottom.png', N'../../../assets/Yeezy_Beluga2_Side.png', N'Shoe', N'Adidas', N'Yeezy', N'{"41EU":150000, "42EU":150000, "43EU":160000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'2de48a7a-46af-4422-a952-5c70805810fe', N'JORDAN 1 HIGH UNIVERSITY BLUE', 320000, N'Ikonikus darab, nagyon kevés található belőle', 2, N'../../../assets/J1_UniversityBlue.png', N'../../../assets/J1_UniversityBlue_Bottom.png', N'../../../assets/J1_UniversityBlue_Side.png', N'Shoe', N'Nike', N'Jordan 1 High', N'{"35EU": 410000, "36EU":420000, "40EU":500000, "41EU":500000, "42EU":550000, "43EU":500000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'97039213-a910-4a1f-8214-6aa090f55097', N'JORDAN 1 HIGH TRAVIS SCOTT', 500000, N'Egyik legdrágább Jordan 1, egyedi megjelenési', 5, N'../../../assets/travis.png', N'../../assets/travis_also.png', N'../../assets/travis_oldal.jpg', N'Shoe', N'Nike', N'Jordan 1 High', N'{"39EU": 500000, "40EU":550000, "44EU":780000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'254ec803-d33c-4741-82c5-bca6f5940470', N'DUNK PANDA', 90000, N'Nagyon sok van belőle az utcákon, ezért nem is drága annyira', 2, N'../../../assets/Dunk_Panda.png', N'../../assets/Dunk_Panda_Bottom.png', N'../../assets/Dunk_Panda_Side.png', N'Shoe', N'Nike', N'Dunk', N'{"41EU":150000, "42EU":150000, "43EU":160000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'72539b12-5061-4b1f-ba25-c333938da6db', N'VAPORWAFFLE', 120000, N'Különleges modell, nagyon kevés található belőle', 2, N'../../../assets/Vaporwaffle.png', N'../../assets/Vaporwaffle_Side.png', N'../../assets/Vaporwaffle_Bottom.png', N'Shoe', N'Nike', N'Vaporwaffle', N'{"44EU":400000, "45EU":440000}')
INSERT [dbo].[Products] ([ID], [Name], [Price], [Description], [On_Stock], [Main_Image], [Image1], [Image2], [Type], [Company], [Model], [Sizes]) VALUES (N'6e2f82b8-b586-495c-8837-fd1cdbdc3bd5', N'NIKE AIR FORCE 1', 70000, N'Legtipikusabb sneaker az utcákon, legtöbbet eladott modell', 150, N'../../../assets/AirForce1.png', N'../../../assets/AirForce1_Side.png', N'../../../assets/AirForce1_Bottom.png', N'Shoe', N'Nike', N'Air Force 1', N'{"36EU":90000,"37EU":90000,"38EU":90000,"39EU":90000,"41EU":90000, "42EU":90000, "43EU":90000, "40EU" : 90000,"43EU":90000}')
GO
USE [master]
GO
ALTER DATABASE [Sankicks] SET  READ_WRITE 
GO
