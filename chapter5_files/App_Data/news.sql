USE master
GO
if exists (select * from sysdatabases where name='news')
		drop database news
		
		DECLARE @device_directory NVARCHAR(520)
SELECT @device_directory = SUBSTRING(filename, 1, CHARINDEX(N'master.mdf', LOWER(filename)) - 1)
FROM master.dbo.sysaltfiles WHERE dbid = 1 AND fileid = 1

EXECUTE (N'CREATE DATABASE news
  ON PRIMARY (NAME = N''news'', FILENAME = N''' + @device_directory + N'news.mdf'')
  LOG ON (NAME = N''news_log'',  FILENAME = N''' + @device_directory + N'news.ldf'')')


GO
ALTER DATABASE [news] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [news].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [news] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [news] SET ANSI_NULLS OFF
GO
ALTER DATABASE [news] SET ANSI_PADDING OFF
GO
ALTER DATABASE [news] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [news] SET ARITHABORT OFF
GO
ALTER DATABASE [news] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [news] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [news] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [news] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [news] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [news] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [news] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [news] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [news] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [news] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [news] SET  DISABLE_BROKER
GO
ALTER DATABASE [news] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [news] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [news] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [news] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [news] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [news] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [news] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [news] SET  READ_WRITE
GO
ALTER DATABASE [news] SET RECOVERY SIMPLE
GO
ALTER DATABASE [news] SET  MULTI_USER
GO
ALTER DATABASE [news] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [news] SET DB_CHAINING OFF
GO
USE [news]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/01/2012 07:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](10) NULL,
	[password] [nvarchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 12/01/2012 07:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[typeid] [int] NOT NULL,
	[typename] [nvarchar](10) NULL,
 CONSTRAINT [PK_filetype] PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[files]    Script Date: 12/01/2012 07:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[files](
	[fileid] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](50) NULL,
	[typeid] [int] NULL,
	[filecontent] [nvarchar](max) NULL,
	[publisher] [nvarchar](50) NULL,
	[publishdate] [date] NULL,
	[visitnum] [int] NULL,
 CONSTRAINT [PK_files] PRIMARY KEY CLUSTERED 
(
	[fileid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_type_type]    Script Date: 12/01/2012 07:04:54 ******/
ALTER TABLE [dbo].[type]  WITH CHECK ADD  CONSTRAINT [FK_type_type] FOREIGN KEY([typeid])
REFERENCES [dbo].[type] ([typeid])
GO
ALTER TABLE [dbo].[type] CHECK CONSTRAINT [FK_type_type]
GO
/****** Object:  ForeignKey [FK_type_files]    Script Date: 12/01/2012 07:04:54 ******/
ALTER TABLE [dbo].[files]  WITH CHECK ADD  CONSTRAINT [FK_type_files] FOREIGN KEY([typeid])
REFERENCES [dbo].[type] ([typeid])
GO
ALTER TABLE [dbo].[files] CHECK CONSTRAINT [FK_type_files]
GO
