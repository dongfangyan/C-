
USE master
GO
if exists (select * from sysdatabases where name='ShoppingWebDB')
		drop database ShoppingWebDB

DECLARE @device_directory NVARCHAR(520)
SELECT @device_directory = SUBSTRING(filename, 1, CHARINDEX(N'master.mdf', LOWER(filename)) - 1)
FROM master.dbo.sysaltfiles WHERE dbid = 1 AND fileid = 1

EXECUTE (N'CREATE DATABASE ShoppingWebDB
  ON PRIMARY (NAME = N''ShoppingWebDB'', FILENAME = N''' + @device_directory + N'ShoppingWebDB.mdf'')
  LOG ON (NAME = N''ShoppingWebDB_log'',  FILENAME = N''' + @device_directory + N'ShoppingWebDB.ldf'')')




GO
ALTER DATABASE [ShoppingWebDB] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingWebDB].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [ShoppingWebDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ShoppingWebDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ShoppingWebDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ShoppingWebDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ShoppingWebDB] SET ARITHABORT OFF
GO
ALTER DATABASE [ShoppingWebDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [ShoppingWebDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ShoppingWebDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ShoppingWebDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ShoppingWebDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ShoppingWebDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ShoppingWebDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ShoppingWebDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ShoppingWebDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ShoppingWebDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ShoppingWebDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [ShoppingWebDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ShoppingWebDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ShoppingWebDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ShoppingWebDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ShoppingWebDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ShoppingWebDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ShoppingWebDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ShoppingWebDB] SET  READ_WRITE
GO
ALTER DATABASE [ShoppingWebDB] SET RECOVERY FULL
GO
ALTER DATABASE [ShoppingWebDB] SET  MULTI_USER
GO
ALTER DATABASE [ShoppingWebDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ShoppingWebDB] SET DB_CHAINING OFF
GO
USE [ShoppingWebDB]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[PassWord] [varchar](20) NOT NULL,
	[RealName] [varchar](20) NULL,
	[Sex] [varchar](2) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Zip] [varchar](50) NULL,
	[problem] [varchar](50) NULL,
	[answer] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Zip'
GO
/****** Object:  Table [dbo].[TempOrderInfo]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempOrderInfo](
	[ProductID] [varchar](10) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductTypeName] [varchar](50) NULL,
	[Num] [int] NULL,
	[Price] [money] NULL,
	[TotalMoney] [money] NULL,
 CONSTRAINT [PK_TempOrderInfo] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesNum]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesNum](
	[ProductID] [varchar](50) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[ProductTypeID] [varchar](50) NOT NULL,
	[SalesNum] [int] NULL,
 CONSTRAINT [PK_SalesNum] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计销售量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesNum', @level2type=N'COLUMN',@level2name=N'SalesNum'
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderInfo](
	[OrderID] [int] NOT NULL,
	[RealName] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[TotalMoney] [money] NOT NULL,
	[PayWay] [varchar](50) NOT NULL,
	[SendWay] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Zip] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OrderInfo_1] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态，1表示已放送，0表示未发送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderInfo', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderInfo', @level2type=N'COLUMN',@level2name=N'TotalMoney'
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[UserName] [varchar](50) NOT NULL,
	[ProductID] [varchar](50) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[ProductTypeName] [varchar](50) NOT NULL,
	[Num] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[TotalMoney] [money] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
/****** Object:  Table [dbo].[Notify]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notify](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Body] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Notify] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[PassWord] [varchar](20) NOT NULL,
	[RealName] [varchar](50) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/01/2012 07:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[Suppliers] [varchar](200) NOT NULL,
	[PublicTime] [datetime] NOT NULL,
	[InPrice] [money] NOT NULL,
	[OutPrice] [money] NOT NULL,
	[IsSpecial] [bit] NOT NULL,
	[Picture] [varchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Suppliers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'PublicTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进货价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'InPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为特价商品，是为"T",否为"F"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'IsSpecial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Description'
GO
/****** Object:  StoredProcedure [dbo].[insertOrderDetail]    Script Date: 12/01/2012 07:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertOrderDetail]
(
@orderID int,
@username varchar(50),
@productid varchar(10),
@productname varchar(50),
@producttypename varchar(50),
@price money ,
@num int ,
@totalmoney money 
)
as 
insert into OrderDetail(OrderID,UserName,ProductID ,ProductName,
ProductTypeName,Price,Num,TotalMoney)
values (@orderID,@username,@productid,@productname,@producttypename,
@price,@num,@totalmoney)
GO
/****** Object:  StoredProcedure [dbo].[insertcartinfo]    Script Date: 12/01/2012 07:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertcartinfo]
(
@username varchar(50),
@productid varchar(10),
@productname varchar(50),
@producttypename varchar(50),
@price money ,
@num int ,
@totalmoney money 
)
as 
insert into OrderDetail(UserName,ProductID,ProductName,
ProductTypeName,Price,Num,TotalMoney)
values (@username,@productid,@productname,@producttypename,
@price,@num,@totalmoney)
GO
/****** Object:  StoredProcedure [dbo].[inserorderinfo_pro]    Script Date: 12/01/2012 07:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[inserorderinfo_pro]
(
@orderid int ,@realname varchar(50),@username varchar(50),@ordertime datetime,
@TotalMoney money,@payway varchar(50),@sendway varchar(50),
@phone varchar(20),@email varchar(50),@address varchar(50),@zip varchar(50)
)
as 
insert into OrderInfo(OrderID,RealName ,UserName ,OrderDate,TotalMoney,PayWay,SendWay,Phone,Email ,Address,Zip) 
values(@orderid,@realname,@username,@ordertime,@TotalMoney,@payway,@sendway,
@phone,@email,@address,@zip)
GO
/****** Object:  StoredProcedure [dbo].[getcartinfo]    Script Date: 12/01/2012 07:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getcartinfo]
(
@username varchar(50),
@productid varchar(10) output,
@productname varchar(50) output,
@producttypename varchar(50) output,
@price money output,
@num int output,
@totalmoney money output
)
as 
select @productid=ProductID,@productname=ProductName,
@producttypename=ProductTypeName,@price=Price,@num=Num,
@totalmoney=TotalMoney from TempOrderInfo
 Where UserName=@username
GO
/****** Object:  View [dbo].[productsview]    Script Date: 12/01/2012 07:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[productsview]
AS
SELECT     dbo.Products.Name, dbo.Products.Description, dbo.Products.Suppliers, dbo.Products.PublicTime, dbo.Products.InPrice, dbo.Products.ID, 
                      dbo.Products.OutPrice, dbo.Products.Picture, dbo.Products.IsSpecial, dbo.ProductType.TypeName
FROM         dbo.Products INNER JOIN
                      dbo.ProductType ON dbo.Products.ProductTypeID = dbo.ProductType.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[29] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 202
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProductType"
            Begin Extent = 
               Top = 6
               Left = 228
               Bottom = 84
               Right = 359
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'productsview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'productsview'
GO
/****** Object:  StoredProcedure [dbo].[searchproducts]    Script Date: 12/01/2012 07:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[searchproducts]
(
@producttype varchar(50),
@productname varchar(100)
)
as 
SELECT ID,Picture,Name,InPrice,OutPrice FROM Productsview  
 WHERE (TypeName=@producttype  and Name like @productname )
GO
/****** Object:  Default [DF_OrderInfo_Status]    Script Date: 12/01/2012 07:23:38 ******/
ALTER TABLE [dbo].[OrderInfo] ADD  CONSTRAINT [DF_OrderInfo_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  ForeignKey [FK_Products_ProductType]    Script Date: 12/01/2012 07:23:38 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO


ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_Orderinfo_OrderDetail] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orderinfo] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_Orderinfo_OrderDetail]
GO

insert into Admins values('admin','admin','玫瑰')
insert into Admins values('guo','guo','郭建东')

insert into users values('guo','guo','玫瑰','女','020-87705771','guo@163.com','中国广东广州','510510','我的姓氏','郭')
insert into users values('cai','cai','茉莉','女','020-87705771','cai@163.com','中国广东广州天河','510510','我的姓氏','蔡')
insert into users values('peng','peng','茉莉','女','020-87705771','guo@163.com','中国广东广州越秀','510510','我的姓氏','彭')

insert into Notify values('暑假最新促销','电脑手机等IT产品大减价，欢迎购物',2011-06-01)
insert into Notify values('暑假最后亏本促销','名牌手机等IT产品大减价',2011-08-01)
insert into Notify values('秋季最新产品','国产电脑手机等IT产品新货，欢迎购物',2011-09-01)


insert into ProductType values('手机')
insert into ProductType values('相机')
insert into ProductType values('电脑')
insert into ProductType values('今日团购')
insert into ProductType values('品牌直销')

insert into Products values('诺基亚 5800XM','1','诺基亚 ','2008-02-30','2500.0000','2200.0000','True','~/picture/手机/诺基亚5800XM.jpg','1600万色TFT显示屏，分辨率为360×640，3.2英寸')
insert into Products values('诺基亚 N78','1','诺基亚 ','2008-12-30','3500.0000','3200.0000','True','~/picture/手机/诺基亚N78.jpg','1600万色TFT显示屏，分辨率为240×320，2.4英寸,待机时间 最长320小时 ')
insert into Products values('索尼VGN-CR33','3','索尼 ','2009-12-30','2000.0000','1800.0000','True','~/picture/笔记本电脑/索尼VGN-CR33.jpg','14.1英寸宽屏定位主流，为用户提供高性价比的产品。其采用Intel酷睿双核处理器，搭配独立显卡 ')
insert into Products values('苹果MacBook','3','苹果 ','2010-10-30','3800.0000','3200.0000','True','~/picture/笔记本电脑/苹果MacBook.jpg','13.3英寸宽屏定位高端，为用户提供超便携的产品。其采用Intel酷睿2双核处理器，搭配集成显卡。属于高端便携类。 ')
insert into Products values('联想ThinkPadSL400','3','联想 ','2011-12-30','1800.0000','1800.0000','False','~/picture/笔记本电脑/联想ThinkPadSL400.jpg','配置酷睿2处理器以及主流独立显卡或集成显卡，拥有较高的品质和可靠的性能表现 ')
insert into Products values('爱国者T60','2','爱国者 ','2008-12-30','500.0000','500.0000','False','~/picture/相机/爱国者T60.jpg','800万像素,5倍数码变焦 ')
insert into Products values('索尼W170','2','索尼 ','2009-12-30','1200.0000','1200.0000','False','~/picture/相机/索尼W170.jpg','1010万像素,卡尔·蔡司Vario-Tessar广角镜头 ')
insert into Products values('索尼爱立信 W395','1','索尼爱立信  ','2009-12-30','800.0000','800.0000','False','~/picture/手机/索尼爱立信W395.jpg','26万色TFT显示屏，分辨率为176×220，2.0英寸 ')
insert into Products values('佳能IXUS80','2','佳能 ','2011-06-30','1200.0000','2200.0000','False','~/picture/相机/佳能IXUS80.jpg','800万像素,微距：3-50cm（广角端），30-50cm（长焦端）；数码微距：3-10cm(广角） ')
insert into Products values('苹果（APPLE）iPhone 4 8G版 3G手机','1','苹果 ','2012/08/03','3200.0000','3200.0000','False','~/picture/手机/苹果iPhone4.jpg','双核 A5 芯片，全新 800 万像素摄像头和光学技术，iOS 5 和 iCloud。出色的 iPhone，如今更出色。')
insert into Products values('苹果（Apple）MacBook Pro MD102CH','3','苹果  ','2012-10-11','10800.0000','10800.0000','False','~/picture/笔记本电脑/苹果13寸宽屏.jpg','全新 Intel HD Graphics 4000 集成图形处理器性能提升高达 60%1。更强的动力为你带来比以往更平稳、更流畅的使用体验。而且它依旧高效节能，让你外出时可以享受超长的电池使用时间。 ')
insert into Products values('佳能（Canon） EOS 1D X','2','佳能 ','2012-10-30','42000.0000','42000.0000','False','~/picture/相机/佳能EOS1DX.jpg','35mm全画幅，专业级，对焦 - 61个自动对焦点与进化的自动对焦算法高效捕捉被摄体')



