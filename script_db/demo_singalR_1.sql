USE [master]
create database demo_signalR_1;

ALTER DATABASE [demo_signalR_1] SET  ENABLE_BROKER;
select is_broker_enabled from sys.databases where name = 'demo_signalR_1';
go

use demo_signalR_1

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 10/3/2023 6:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [varchar](50) NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[PurchasedOn] [date] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (1, N'Potato', N'Vegetable', CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (2, N'Tomato', N'Vegetable', CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (3, N'Onion', N'Vegetable', CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (4, N'The Magic of Thinking Big', N'Books', CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (5, N'Rich Dad Poor Dad', N'Books', CAST(230.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (6, N'The Secret', N'Books', CAST(270.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (7, N'TV', N'Electronics', CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (8, N'Chair', N'Furniture', CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (9, N'Table', N'Furniture', CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (10, N'Flowers', N'Decoration', CAST(500.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (1, N'Raj', CAST(302.00 AS Decimal(10, 2)), CAST(N'2022-03-06' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (2, N'Robert', CAST(495.00 AS Decimal(10, 2)), CAST(N'2022-03-07' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (3, N'Raheem', CAST(274.00 AS Decimal(10, 2)), CAST(N'2022-03-08' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (4, N'Willams', CAST(80.00 AS Decimal(10, 2)), CAST(N'2022-02-09' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (5, N'Krishna', CAST(213.00 AS Decimal(10, 2)), CAST(N'2022-02-10' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (6, N'Manohar', CAST(439.00 AS Decimal(10, 2)), CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (7, N'Ramya', CAST(300.00 AS Decimal(10, 2)), CAST(N'2022-03-13' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (8, N'Sruthi', CAST(352.00 AS Decimal(10, 2)), CAST(N'2022-03-13' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (9, N'Daniel', CAST(520.00 AS Decimal(10, 2)), CAST(N'2022-03-27' AS Date))
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (10, N'Michale', CAST(390.00 AS Decimal(10, 2)), CAST(N'2022-03-11' AS Date))
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO