USE [master]
GO
/****** Object:  Database [DVDdb]    Script Date: 27.10.2023 3:09:34 ******/
CREATE DATABASE [DVDdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DVDdb', FILENAME = N'C:\Users\SystemX\DVDdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DVDdb_log', FILENAME = N'C:\Users\SystemX\DVDdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DVDdb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DVDdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DVDdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DVDdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DVDdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DVDdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DVDdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DVDdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DVDdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DVDdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DVDdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DVDdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DVDdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DVDdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DVDdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DVDdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DVDdb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DVDdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DVDdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DVDdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DVDdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DVDdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DVDdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DVDdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DVDdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DVDdb] SET  MULTI_USER 
GO
ALTER DATABASE [DVDdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DVDdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DVDdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DVDdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DVDdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DVDdb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DVDdb] SET QUERY_STORE = OFF
GO
USE [DVDdb]
GO
/****** Object:  Table [dbo].[merch]    Script Date: 27.10.2023 3:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[photo] [nvarchar](50) NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [text] NOT NULL,
	[publisher] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_merch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 27.10.2023 3:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_users] [int] NOT NULL,
	[id_status] [int] NOT NULL,
	[id_point] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[code] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[point]    Script Date: 27.10.2023 3:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[point](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_point] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sostav]    Script Date: 27.10.2023 3:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sostav](
	[id_orders] [int] NOT NULL,
	[id_merch] [int] NOT NULL,
	[count] [int] NULL,
 CONSTRAINT [PK_sostav] PRIMARY KEY CLUSTERED 
(
	[id_orders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 27.10.2023 3:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_user]    Script Date: 27.10.2023 3:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 27.10.2023 3:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[id_type] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[merch] ON 
GO
INSERT [dbo].[merch] ([id], [photo], [name], [description], [publisher], [price], [discount]) VALUES (1, N'/photo/disk.jpg', N'metro', N'???? ??? ???????????', N'Deep Silver', 2000, 0)
GO
INSERT [dbo].[merch] ([id], [photo], [name], [description], [publisher], [price], [discount]) VALUES (2, N'/photo/disk1.jpg', N'stalker', N'???? ??? ???? ??????????', N'GSC Game World', 500, 7)
GO
INSERT [dbo].[merch] ([id], [photo], [name], [description], [publisher], [price], [discount]) VALUES (3, N'/photo/disk2.jpg', N'diablo', N'??????????? ?? ???????????', N'Blizzard Entertainment', 6000, 0)
GO
INSERT [dbo].[merch] ([id], [photo], [name], [description], [publisher], [price], [discount]) VALUES (5, N'/photo/disk3.jpg', N'minecraft', N'???? ?????????', N'Mojang Studios', 1500, 15)
GO
INSERT [dbo].[merch] ([id], [photo], [name], [description], [publisher], [price], [discount]) VALUES (8, N'/photo/disk4.jpg', N'warcraft', N'??? ???', N'Blizzard Entertainment', 700, 0)
GO
SET IDENTITY_INSERT [dbo].[merch] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 
GO
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount]) VALUES (1, 1, 1, 1, CAST(N'2023-12-12' AS Date), 7489, 2000, 15)
GO
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount]) VALUES (2, 2, 2, 2, CAST(N'2023-12-26' AS Date), 3213, 5000, 0)
GO
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount]) VALUES (3, 3, 3, 3, CAST(N'2023-12-31' AS Date), 5434, 7500, 22)
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[point] ON 
GO
INSERT [dbo].[point] ([id], [name], [photo]) VALUES (1, N'Пункт выдачи 1', N'/photo/point.jpg')
GO
INSERT [dbo].[point] ([id], [name], [photo]) VALUES (2, N'Пункт выдачи 2', N'/photo/point2.jpg')
GO
INSERT [dbo].[point] ([id], [name], [photo]) VALUES (3, N'Пункт выдачи 3', NULL)
GO
SET IDENTITY_INSERT [dbo].[point] OFF
GO
INSERT [dbo].[sostav] ([id_orders], [id_merch], [count]) VALUES (1, 1, 1)
GO
INSERT [dbo].[sostav] ([id_orders], [id_merch], [count]) VALUES (2, 2, 1)
GO
INSERT [dbo].[sostav] ([id_orders], [id_merch], [count]) VALUES (3, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[status] ON 
GO
INSERT [dbo].[status] ([id], [status]) VALUES (1, N'новый')
GO
INSERT [dbo].[status] ([id], [status]) VALUES (2, N'доставляется')
GO
INSERT [dbo].[status] ([id], [status]) VALUES (3, N'доставлено')
GO
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[type_user] ON 
GO
INSERT [dbo].[type_user] ([id], [role]) VALUES (1, N'администратор')
GO
INSERT [dbo].[type_user] ([id], [role]) VALUES (2, N'менеджер')
GO
INSERT [dbo].[type_user] ([id], [role]) VALUES (3, N'клиент')
GO
SET IDENTITY_INSERT [dbo].[type_user] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [login], [password], [id_type]) VALUES (1, N'root', N'12345', 1)
GO
INSERT [dbo].[users] ([id], [login], [password], [id_type]) VALUES (2, N'manager', N'12345', 2)
GO
INSERT [dbo].[users] ([id], [login], [password], [id_type]) VALUES (3, N'client', N'12345', 3)
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_point] FOREIGN KEY([id_point])
REFERENCES [dbo].[point] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_point]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_status]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([id_users])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_merch] FOREIGN KEY([id_merch])
REFERENCES [dbo].[merch] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_merch]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_orders] FOREIGN KEY([id_orders])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_orders]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_type_user] FOREIGN KEY([id_type])
REFERENCES [dbo].[type_user] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_type_user]
GO
USE [master]
GO
ALTER DATABASE [DVDdb] SET  READ_WRITE 
GO
