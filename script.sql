USE [master]
GO
/****** Object:  Database [TMS_System]    Script Date: 12.12.2024 22:16:28 ******/
CREATE DATABASE [TMS_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TMS_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TMS_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TMS_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TMS_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TMS_System] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TMS_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TMS_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TMS_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TMS_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TMS_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TMS_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [TMS_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TMS_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TMS_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TMS_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TMS_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TMS_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TMS_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TMS_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TMS_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TMS_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TMS_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TMS_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TMS_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TMS_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TMS_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TMS_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TMS_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TMS_System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TMS_System] SET  MULTI_USER 
GO
ALTER DATABASE [TMS_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TMS_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TMS_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TMS_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TMS_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TMS_System] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TMS_System] SET QUERY_STORE = ON
GO
ALTER DATABASE [TMS_System] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TMS_System]
GO
/****** Object:  Table [dbo].[AddInformation]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddInformation](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PassportSer] [int] NOT NULL,
	[PassportNum] [int] NOT NULL,
	[PolisNum] [int] NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_AddInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorization]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorization](
	[Id] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[IP] [nvarchar](50) NOT NULL,
	[UserActive] [bit] NOT NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompleteModul]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompleteModul](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ModulId] [int] NOT NULL,
	[CountOfAnswer] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[NastavnikId] [int] NOT NULL,
 CONSTRAINT [PK_CompleteModul] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompleteModulStatus]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompleteModulStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CompleteModulStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modul]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modul](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[PostId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Modul] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModulStatus]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModulStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ModulStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nastavnik]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nastavnik](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Nastavnik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderOnModul]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderOnModul](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[SoglasovantId] [int] NOT NULL,
	[DateOfStart] [date] NOT NULL,
	[DateOfEnd] [date] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_OrderOnModul] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soglasovant]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soglasovant](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MainSoglasovant] [bit] NOT NULL,
 CONSTRAINT [PK_Soglasovant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoglasovantiOfModuls]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoglasovantiOfModuls](
	[ModulId] [int] NOT NULL,
	[SoglasovantId] [int] NOT NULL,
 CONSTRAINT [PK_SoglasovantiOfModuls] PRIMARY KEY CLUSTERED 
(
	[ModulId] ASC,
	[SoglasovantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoglasovantiOfOrderOnModuls]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoglasovantiOfOrderOnModuls](
	[OrderOnModulId] [int] NOT NULL,
	[SoglasovantId] [int] NOT NULL,
 CONSTRAINT [PK_SoglasovantiOfOrderOnModuls] PRIMARY KEY CLUSTERED 
(
	[OrderOnModulId] ASC,
	[SoglasovantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12.12.2024 22:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PostId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AddInformation]  WITH CHECK ADD  CONSTRAINT [FK_AddInformation_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[AddInformation] CHECK CONSTRAINT [FK_AddInformation_User]
GO
ALTER TABLE [dbo].[CompleteModul]  WITH CHECK ADD  CONSTRAINT [FK_CompleteModul_CompleteModulStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[CompleteModulStatus] ([Id])
GO
ALTER TABLE [dbo].[CompleteModul] CHECK CONSTRAINT [FK_CompleteModul_CompleteModulStatus]
GO
ALTER TABLE [dbo].[CompleteModul]  WITH CHECK ADD  CONSTRAINT [FK_CompleteModul_Nastavnik] FOREIGN KEY([NastavnikId])
REFERENCES [dbo].[Nastavnik] ([Id])
GO
ALTER TABLE [dbo].[CompleteModul] CHECK CONSTRAINT [FK_CompleteModul_Nastavnik]
GO
ALTER TABLE [dbo].[Modul]  WITH CHECK ADD  CONSTRAINT [FK_Modul_ModulStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[ModulStatus] ([Id])
GO
ALTER TABLE [dbo].[Modul] CHECK CONSTRAINT [FK_Modul_ModulStatus]
GO
ALTER TABLE [dbo].[Modul]  WITH CHECK ADD  CONSTRAINT [FK_Modul_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Modul] CHECK CONSTRAINT [FK_Modul_User]
GO
ALTER TABLE [dbo].[Nastavnik]  WITH CHECK ADD  CONSTRAINT [FK_Nastavnik_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Nastavnik] CHECK CONSTRAINT [FK_Nastavnik_User]
GO
ALTER TABLE [dbo].[OrderOnModul]  WITH CHECK ADD  CONSTRAINT [FK_OrderOnModul_OrderStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[OrderOnModul] CHECK CONSTRAINT [FK_OrderOnModul_OrderStatus]
GO
ALTER TABLE [dbo].[OrderOnModul]  WITH CHECK ADD  CONSTRAINT [FK_OrderOnModul_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[OrderOnModul] CHECK CONSTRAINT [FK_OrderOnModul_User]
GO
ALTER TABLE [dbo].[SoglasovantiOfModuls]  WITH CHECK ADD  CONSTRAINT [FK_SoglasovantiOfModuls_Modul] FOREIGN KEY([ModulId])
REFERENCES [dbo].[Modul] ([Id])
GO
ALTER TABLE [dbo].[SoglasovantiOfModuls] CHECK CONSTRAINT [FK_SoglasovantiOfModuls_Modul]
GO
ALTER TABLE [dbo].[SoglasovantiOfModuls]  WITH CHECK ADD  CONSTRAINT [FK_SoglasovantiOfModuls_Soglasovant] FOREIGN KEY([SoglasovantId])
REFERENCES [dbo].[Soglasovant] ([Id])
GO
ALTER TABLE [dbo].[SoglasovantiOfModuls] CHECK CONSTRAINT [FK_SoglasovantiOfModuls_Soglasovant]
GO
ALTER TABLE [dbo].[SoglasovantiOfOrderOnModuls]  WITH CHECK ADD  CONSTRAINT [FK_SoglasovantiOfOrderOnModuls_OrderOnModul] FOREIGN KEY([OrderOnModulId])
REFERENCES [dbo].[OrderOnModul] ([Id])
GO
ALTER TABLE [dbo].[SoglasovantiOfOrderOnModuls] CHECK CONSTRAINT [FK_SoglasovantiOfOrderOnModuls_OrderOnModul]
GO
ALTER TABLE [dbo].[SoglasovantiOfOrderOnModuls]  WITH CHECK ADD  CONSTRAINT [FK_SoglasovantiOfOrderOnModuls_Soglasovant] FOREIGN KEY([SoglasovantId])
REFERENCES [dbo].[Soglasovant] ([Id])
GO
ALTER TABLE [dbo].[SoglasovantiOfOrderOnModuls] CHECK CONSTRAINT [FK_SoglasovantiOfOrderOnModuls_Soglasovant]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Post]
GO
USE [master]
GO
ALTER DATABASE [TMS_System] SET  READ_WRITE 
GO
