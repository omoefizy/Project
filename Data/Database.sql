USE [master]
GO
/****** Object:  Database [Election1]    Script Date: 11/11/2016 15:36:42 ******/
CREATE DATABASE [Election] ON  PRIMARY 
( NAME = N'Election1', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Election1.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Election1_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Election1_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Election1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Election1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Election1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Election1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Election1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Election1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Election1] SET ARITHABORT OFF
GO
ALTER DATABASE [Election1] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Election1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Election1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Election1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Election1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Election1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Election1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Election1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Election1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Election1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Election1] SET  ENABLE_BROKER
GO
ALTER DATABASE [Election1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Election1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Election1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Election1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Election1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Election1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Election1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Election1] SET  READ_WRITE
GO
ALTER DATABASE [Election1] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Election1] SET  MULTI_USER
GO
ALTER DATABASE [Election1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Election1] SET DB_CHAINING OFF
GO
USE [Election1]
GO
/****** Object:  Table [dbo].[Vote]    Script Date: 11/11/2016 15:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vote](
	[EId] [varchar](50) NULL,
	[ETopic] [varchar](50) NULL,
	[EC1] [varchar](50) NULL,
	[EC2] [varchar](50) NULL,
	[EC3] [varchar](50) NULL,
	[EC4] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Vote] ([EId], [ETopic], [EC1], [EC2], [EC3], [EC4]) VALUES (N'1', N'Who will be your TeamLeader', N'3', N'4', N'4', N'0')
INSERT [dbo].[Vote] ([EId], [ETopic], [EC1], [EC2], [EC3], [EC4]) VALUES (N'2', N'Next Prime Minister ', N'0', N'1', N'0', N'0')
INSERT [dbo].[Vote] ([EId], [ETopic], [EC1], [EC2], [EC3], [EC4]) VALUES (N'3', N'My Wish', N'2', N'0', N'0', N'0')
INSERT [dbo].[Vote] ([EId], [ETopic], [EC1], [EC2], [EC3], [EC4]) VALUES (N'4', N'ccwjgfdhjg', N'0', N'0', N'0', N'0')
INSERT [dbo].[Vote] ([EId], [ETopic], [EC1], [EC2], [EC3], [EC4]) VALUES (N'5', N'bgfjgh', N'1', N'0', N'0', N'0')
/****** Object:  Table [dbo].[Staff_Details]    Script Date: 11/11/2016 15:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Details](
	[Staff_ID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Staff_Details] ([Staff_ID], [Name], [Department], [Username], [Password]) VALUES (N'10001', N'admin', N'sales', N'admin', N'admin')
/****** Object:  Table [dbo].[Election]    Script Date: 11/11/2016 15:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Election](
	[EId] [varchar](50) NULL,
	[ETopic] [varchar](1000) NULL,
	[ECNo] [varchar](50) NULL,
	[EC1] [varchar](50) NULL,
	[EC2] [varchar](50) NULL,
	[EC3] [varchar](50) NULL,
	[EC4] [varchar](50) NULL,
	[EndDate] [varchar](50) NULL,
	[Result] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Election] ([EId], [ETopic], [ECNo], [EC1], [EC2], [EC3], [EC4], [EndDate], [Result]) VALUES (N'1', N'Who will be your TeamLeader', N'3', N'Aakash', N'Pratik', N'Mit', N'', N'07-09-2014', N'Pratik Mit ')
INSERT [dbo].[Election] ([EId], [ETopic], [ECNo], [EC1], [EC2], [EC3], [EC4], [EndDate], [Result]) VALUES (N'2', N'Next Prime Minister ', N'2', N'Rahul Gandhi', N'Narendra Modi', NULL, NULL, N'09-09-2014', N'Narendra Modi ')
INSERT [dbo].[Election] ([EId], [ETopic], [ECNo], [EC1], [EC2], [EC3], [EC4], [EndDate], [Result]) VALUES (N'3', N'My Wish', N'3', N'ABC', N'PQR', N'XYZ', N'', N'13-03-2015', N'ABC ')
INSERT [dbo].[Election] ([EId], [ETopic], [ECNo], [EC1], [EC2], [EC3], [EC4], [EndDate], [Result]) VALUES (N'4', N'ccwjgfdhjg', N'3', N'amish vora', N'PQR', N'XYZ', N'', N'28-04-15', NULL)
INSERT [dbo].[Election] ([EId], [ETopic], [ECNo], [EC1], [EC2], [EC3], [EC4], [EndDate], [Result]) VALUES (N'5', N'bgfjgh', N'3', N'ABC', N'PQR', N'XYZ', N'', N'17-03-15', N'ABC ')
/****** Object:  Table [dbo].[Details]    Script Date: 11/11/2016 15:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Details](
	[UserId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Details] ([UserId], [Name], [Pass], [Mobile], [Address], [Email]) VALUES (N'1001', N'Amish', N'User', N'9076613215', N'Gorgaon', N'voramish7018@gmail.com')
INSERT [dbo].[Details] ([UserId], [Name], [Pass], [Mobile], [Address], [Email]) VALUES (N'1002', N'Rohit', N'User', N'9076613216', N'Goregon', N'vora@gmail.com')
INSERT [dbo].[Details] ([UserId], [Name], [Pass], [Mobile], [Address], [Email]) VALUES (N'1003', N'sd', N'Admin', N'sdf', N'sd', N'voramish7018@gmail.com')
/****** Object:  Table [dbo].[Candi]    Script Date: 11/11/2016 15:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candi](
	[Name] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Mobile] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[Descp] [varchar](50) NULL,
	[School] [varchar](50) NULL,
	[Dept] [varchar](50) NULL,
	[Mat_No] [varchar](50) NULL,
	[Level] [varchar](50) NULL,
	[Country] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Candi] ([Name], [Address], [Mobile], [Image], [Descp], [School], [Dept], [Mat_No], [Level], [Country]) VALUES (N'amish vora', N'Goregaon', N'9076613214', N'images\2.jpg', N'dfsnfjsdfsdnfjsdfsdnjfsdfnsdlfsdlfsdfsd', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Candi] ([Name], [Address], [Mobile], [Image], [Descp], [School], [Dept], [Mat_No], [Level], [Country]) VALUES (N'Mary', N'Mumbai', N'7123456789', N'images\Maruti Celerio.jpg', N'ddfd fffe', N'holy cross convent scholl', N'Sales', N'122', N'2', N'India')
INSERT [dbo].[Candi] ([Name], [Address], [Mobile], [Image], [Descp], [School], [Dept], [Mat_No], [Level], [Country]) VALUES (N'xyz', N'mumbai', N'7123456789', N'images\Maruti Celerio.jpg', N'good', N'holy cross convent school', N'IT', N'123', N'1', N'India')
/****** Object:  Table [dbo].[Answer]    Script Date: 11/11/2016 15:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Answer](
	[UserId] [varchar](50) NULL,
	[EId] [varchar](50) NULL,
	[Ans] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Answer] ([UserId], [EId], [Ans]) VALUES (N'1', N'1', N'2')
INSERT [dbo].[Answer] ([UserId], [EId], [Ans]) VALUES (N'2', N'2', N'2')
INSERT [dbo].[Answer] ([UserId], [EId], [Ans]) VALUES (N'1001', N'3', N'1')
INSERT [dbo].[Answer] ([UserId], [EId], [Ans]) VALUES (N'1002', N'3', N'1')
INSERT [dbo].[Answer] ([UserId], [EId], [Ans]) VALUES (N'1001', N'5', N'1')
