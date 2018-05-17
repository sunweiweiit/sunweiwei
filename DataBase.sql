USE [master]
GO
/****** Object:  Database [NETtest]    Script Date: 2018/5/17/星期四 16:46:34 孙伟伟 ******/
CREATE DATABASE [NETtest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NETtest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NETtest.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NETtest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NETtest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NETtest] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NETtest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NETtest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NETtest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NETtest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NETtest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NETtest] SET ARITHABORT OFF 
GO
ALTER DATABASE [NETtest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NETtest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NETtest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NETtest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NETtest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NETtest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NETtest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NETtest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NETtest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NETtest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NETtest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NETtest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NETtest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NETtest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NETtest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NETtest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NETtest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NETtest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NETtest] SET  MULTI_USER 
GO
ALTER DATABASE [NETtest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NETtest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NETtest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NETtest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NETtest] SET DELAYED_DURABILITY = DISABLED 
GO
USE [NETtest]
GO
/****** Object:  Table [dbo].[Management_log]    Script Date: 2018/5/17/星期四 16:46:34 孙伟伟 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Management_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](50) NULL,
	[sign] [nvarchar](50) NULL,
	[operate_type] [nvarchar](50) NULL,
	[user_ip] [nvarchar](50) NULL,
	[login_time] [datetime] NULL,
 CONSTRAINT [PK_Management log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager_management]    Script Date: 2018/5/17/星期四 16:46:34 孙伟伟 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager_management](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_key] [nvarchar](50) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_role] [nvarchar](50) NULL,
	[rele_name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[image] [image] NULL,
	[type] [nchar](10) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_Administrator management] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager_role]    Script Date: 2018/5/17/星期四 16:46:34 孙伟伟 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nchar](50) NULL,
	[user_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Manager_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [NETtest] SET  READ_WRITE 
GO
