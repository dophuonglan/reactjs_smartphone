USE [WebShop]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [varchar](100) NOT NULL,
	[Account] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
	[Decentralization] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_Address]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Address](
	[IDCustomerAddress] [nvarchar](100) NOT NULL,
	[IDCustomer] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[isMajorAddress] [bit] NULL,
 CONSTRAINT [PK_Customer_Address] PRIMARY KEY CLUSTERED 
(
	[IDCustomerAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuGroup]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MenuGroup](
	[ID] [varchar](100) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MenuGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menus](
	[ID] [varchar](100) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[URL] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[GroupID] [varchar](100) NOT NULL,
	[Target] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IDOrderDetail] [nvarchar](100) NOT NULL,
	[ProductID] [varchar](100) NOT NULL,
	[OrderID] [varchar](100) NOT NULL,
	[PriceOrder] [decimal](18, 2) NOT NULL,
	[Promotion] [int] NULL,
	[QuantityOrder] [int] NOT NULL,
	[Shipping] [bit] NULL,
	[Payment] [bit] NULL,
	[WarrantyID] [varchar](100) NULL,
	[Color] [nvarchar](100) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IDOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[IDOrder] [varchar](50) NOT NULL,
	[IDCustomer] [varchar](100) NOT NULL,
	[NameShip] [nvarchar](250) NULL,
	[AddressShip] [nvarchar](250) NULL,
	[PhoneShip] [nvarchar](max) NULL,
	[OrderDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[StatusOrder] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriceHistory]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PriceHistory](
	[IDPriceHistory] [varchar](100) NOT NULL,
	[ProductID] [varchar](100) NOT NULL,
	[UpdateByIDPH] [varchar](100) NULL,
	[UpdataDate] [datetime] NOT NULL,
	[UpdatePrice] [decimal](18, 2) NOT NULL,
	[Promotion] [decimal](18, 2) NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_PriceHistories] PRIMARY KEY CLUSTERED 
(
	[IDPriceHistory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [varchar](100) NOT NULL,
	[IDProductCategory] [varchar](100) NULL,
	[HotFlag] [bit] NULL,
	[Specification] [nvarchar](250) NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[Promotion] [decimal](18, 2) NULL,
	[Alias] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateByID] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[HomeFlag] [bit] NULL,
	[Image] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[UpdateByID] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[ViewCount] [int] NULL,
	[OriginalQuantity] [int] NULL,
	[OriginalPrice] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[IDProductCategory] [varchar](100) NOT NULL,
	[ParentID] [varchar](100) NULL,
	[Alias] [nvarchar](250) NULL,
	[CreateBy] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Name] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[UpdateBy] [nvarchar](250) NULL,
	[UpdateDate] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[IDProductCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 3/23/2021 2:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[IDSlide] [nchar](10) NOT NULL,
	[NameSlide] [nvarchar](100) NULL,
	[ImageSlide] [nvarchar](50) NULL,
	[URLSlide] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[IDSlide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'3', N'lan@123', N'Phương Lan', N'12345678', N'0987763721', 1, N'admin')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'32bd7ef8-8caf-a533-4e13-d5f4-01e5-2842-eafd', N'tenmoi@123', N'ten moi', N'12345678', N'1122334455', 1, N'staff')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'4', N'phuoc@123', N'Phạm Thị Xuân Phước', N'123', N'0977777721', 1, N'staff')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'487d14ed-12e3-5051-b582-8cc7-9061-41ba-3417', N'mailmoi@123', N'lan', N'12345678', N'0999888777', 0, N'staff')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'593c8bb7-2205-7047-0afb-22ec-4cc5-ff9c-4203', N'a12345678@a12345678', N'a12345678', N'a12345678', N'12345678', 1, N'staff')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'6', N'huong@gmail.com', N'Nguyễn Thị Hương', N'123', N'0376665761', 1, N'staff')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'65ce8f31-5cf9-5404-3cfc-480f-2ee4-6406-ce16', N'111@gmail.com', N'nguyen ngoc lan', N'1', N'123', 0, N'customer')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'7', N'la999', N'Nguyễn Văn Tài', N'123', N'0876371888', 1, N'customer')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'814d9e43-e3f2-8ecc-4f72-0ca2-723c-1858-50d6', N'phamthixuanphuoc99@gmail.com', N'Phạm Thị Xuân Phước', N'22222222', N'1111111111', 1, N'customer')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'a58be27f-a2e8-a11c-8034-1707-1d2e-463f-b5d9', N'ooo@gmail.com', N'lan', N'12345678', N'0999900977', 1, N'staff')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'b33bc841-6419-da12-499c-730e-2a81-e157-077b', N'quynhcute@gmail.com', N'Đỗ Vũ Như Quỳnh', N'12345678', N'0988877788', 1, N'staff')
INSERT [dbo].[Customer] ([ID], [Account], [Name], [Password], [Phone], [Status], [Decentralization]) VALUES (N'e6313499-cca4-a959-7083-8b8e-3066-3cf6-11fe', N'dophuonglan0299@gmail.com', N'Đỗ Thị Phương Lan', N'1', N'0396072861', 1, N'customer')
INSERT [dbo].[Customer_Address] ([IDCustomerAddress], [IDCustomer], [Address], [isMajorAddress]) VALUES (N'1', N'3', N'125 Tô Ký, Phường Tân Chánh Hiệp, Quận 12, TP HCM', 0)
INSERT [dbo].[Customer_Address] ([IDCustomerAddress], [IDCustomer], [Address], [isMajorAddress]) VALUES (N'145b836a-ff46-01d6-ec52-10a8-060b-11b8-e8c7', N'814d9e43-e3f2-8ecc-4f72-0ca2-723c-1858-50d6', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', 1)
INSERT [dbo].[Customer_Address] ([IDCustomerAddress], [IDCustomer], [Address], [isMajorAddress]) VALUES (N'2', N'3', N'124 Tô Ký, Phường Tân Chánh Hiệp, Quận 12, TP HCM', 0)
INSERT [dbo].[Customer_Address] ([IDCustomerAddress], [IDCustomer], [Address], [isMajorAddress]) VALUES (N'30222105-a46f-b093-6dca-05bd-d578-e68b-2695', N'3', N'111/12 Tô Ký', 1)
INSERT [dbo].[Customer_Address] ([IDCustomerAddress], [IDCustomer], [Address], [isMajorAddress]) VALUES (N'7fcd84c5-933c-8d6e-569b-3ed8-4d45-bb42-b5ee', N'e6313499-cca4-a959-7083-8b8e-3066-3cf6-11fe', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', 1)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'15d48f58-8584-1331-8a12-0a56-737b-f502-be7f', N'e9f6dcc8-4674-f3cc-a9aa-65c4-e9a8-124d-c30d', N'195a0519-3b05-d2fd-7a87-efc4-ecde-4708-b4bc', CAST(34990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'3506b9be-0a8b-918e-1562-b2ca-b7d6-403e-a6ce', N'9937214f-e35a-ac01-6032-4b09-1556-c5ac-6711', N'e0b1ffc9-4187-a833-a29b-9ae7-57eb-d28b-b1d4', CAST(40990000.00 AS Decimal(18, 2)), NULL, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'3951132f-f1cb-42d6-c0ff-bdb3-3368-5cfe-f486', N'0b172296-1021-a9e4-d76b-363e-fef9-129f-4d5f', N'009842af-8228-772e-7316-4dfa-59b9-d105-ec97', CAST(27600000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'40184270-8309-29c8-6148-5c9c-396b-4aa2-523e', N'098803e2-59fd-2cfe-7280-065f-e753-f79b-d32c', N'b9967e66-d9b7-7bc1-e5ef-a58a-2b89-4f97-5e2c', CAST(3790000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'42bc86c1-9707-d91d-3e7e-6c53-840b-ad58-56aa', N'e9f6dcc8-4674-f3cc-a9aa-65c4-e9a8-124d-c30d', N'1d5c28c2-c32f-0eed-48b0-c474-d2d6-a0b2-2cb1', CAST(34990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'4b135d32-bdb7-9137-e61b-7e51-8dc7-eca5-9759', N'43c989c2-188a-a910-f436-4824-a0e6-48b3-409e', N'62863379-38c6-edf3-281a-cc41-4d60-fbca-7e54', CAST(10790000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'5a7f9202-f471-7a9e-9f1a-5a02-74b3-d110-5e4f', N'9937214f-e35a-ac01-6032-4b09-1556-c5ac-6711', N'be41acba-e4af-b090-9837-183a-6f53-8ce3-73f6', CAST(40990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'678a3d33-d915-38e7-924d-4b0e-efee-2b5f-4e30', N'9937214f-e35a-ac01-6032-4b09-1556-c5ac-6711', N'a4def5df-fa94-c4c0-2f96-5036-e223-c287-3146', CAST(40990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'6d9f728e-2d8f-d4c1-8d2a-9899-f7fb-790a-b5d7', N'8dd61025-7c65-5646-798f-96e0-5eaa-9ba9-450f', N'9eeb2358-4d79-d857-093c-607f-ff41-e618-1e99', CAST(27000000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'8d0699bb-6658-def6-13e4-6988-eebc-36b6-e101', N'8dd61025-7c65-5646-798f-96e0-5eaa-9ba9-450f', N'bf6ede7d-9580-d4a0-c353-bee9-5b15-08f0-0810', CAST(27000000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'90495bb5-22cc-67dd-2abd-f4c4-e995-ee87-6d2f', N'a05d3b13-1fbd-0d5c-aaa3-a20a-d59c-92bd-0d28', N'9eeb2358-4d79-d857-093c-607f-ff41-e618-1e99', CAST(19990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'99ece40d-62c7-c5f7-ce22-5e7a-330f-9966-1657', N'e9f6dcc8-4674-f3cc-a9aa-65c4-e9a8-124d-c30d', N'df04dc69-6c9f-7ad9-06a6-326f-a2c9-08d9-c6be', CAST(34990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'a2b800aa-be8c-eaca-54dc-f4fb-2a04-a2a8-f9fa', N'9937214f-e35a-ac01-6032-4b09-1556-c5ac-6711', N'1df5a47d-52a0-79cc-6ab0-1781-dd04-7f34-d49d', CAST(40990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'b2a7159b-e818-674f-39c4-da29-7612-91f7-3605', N'0b172296-1021-a9e4-d76b-363e-fef9-129f-4d5f', N'6ee4c13d-186c-4fda-0cd6-9871-2cba-a231-a6eb', CAST(27600000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'c3d32977-923a-d6da-be82-f114-4096-4f23-580a', N'9937214f-e35a-ac01-6032-4b09-1556-c5ac-6711', N'a10053bf-efa9-7c12-a3a3-a707-72db-9581-2935', CAST(40990000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'd08f16b5-2610-79a3-bb1c-0809-cff3-9c80-f34a', N'43c989c2-188a-a910-f436-4824-a0e6-48b3-409e', N'7a37c33b-95a1-96a2-b50b-011f-05ed-0da3-ac36', CAST(10790000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetail] ([IDOrderDetail], [ProductID], [OrderID], [PriceOrder], [Promotion], [QuantityOrder], [Shipping], [Payment], [WarrantyID], [Color]) VALUES (N'fcee9a58-e4fa-5d17-da2a-c8a7-8ea9-554a-bd65', N'098803e2-59fd-2cfe-7280-065f-e753-f79b-d32c', N'13cc2ffc-ef8d-bdda-2b6e-2c58-2b17-671b-eea8', CAST(3790000.00 AS Decimal(18, 2)), NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'009842af-8228-772e-7316-4dfa-59b9-d105-ec97', N'3', N'Phương Lan', N'70/27 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', N'0987763721', CAST(N'2020-12-09 13:14:45.317' AS DateTime), CAST(N'2020-12-09 13:14:45.317' AS DateTime), N'Hoàn tất')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'195a0519-3b05-d2fd-7a87-efc4-ecde-4708-b4bc', N'814d9e43-e3f2-8ecc-4f72-0ca2-723c-1858-50d6', N'Phạm Thị Xuân Phước', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', N'1111111111', CAST(N'2020-12-10 21:34:07.050' AS DateTime), CAST(N'2020-12-10 21:34:07.050' AS DateTime), N'Hoàn tất')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'1d5c28c2-c32f-0eed-48b0-c474-d2d6-a0b2-2cb1', N'3', N'Phương Lan', N'124 Tô Ký, Phường Tân Chánh Hiệp, Quận 12, TP HCM', N'0987763721', CAST(N'2020-12-09 10:23:19.497' AS DateTime), CAST(N'2020-12-09 10:23:19.497' AS DateTime), N'Đang chờ xác nhận')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'1df5a47d-52a0-79cc-6ab0-1781-dd04-7f34-d49d', N'3', N'Phương Lan', N'111/12 Tô Ký', N'0987763721', CAST(N'2020-12-13 14:00:30.747' AS DateTime), CAST(N'2020-12-13 14:00:30.747' AS DateTime), N'Đang chờ xác nhận')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'62863379-38c6-edf3-281a-cc41-4d60-fbca-7e54', N'3', N'Đỗ Thị Phương Lan', N'124 Tô Ký, Phường Tân Chánh Hiệp, Quận 12, TP HCM', N'0987763721', CAST(N'2020-11-14 16:36:01.123' AS DateTime), CAST(N'2020-11-14 16:36:01.123' AS DateTime), N'Đang chờ xác nhận')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'6ee4c13d-186c-4fda-0cd6-9871-2cba-a231-a6eb', N'3', N'Phước', N'124 Tô Ký, Phường Tân Chánh Hiệp, Quận 12, TP HCM', N'1123456788', CAST(N'2020-11-14 15:32:54.007' AS DateTime), CAST(N'2020-11-14 15:32:54.007' AS DateTime), N'Từ chối')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'7a37c33b-95a1-96a2-b50b-011f-05ed-0da3-ac36', N'3', N'Đỗ Thị Phương Lan', N'126 Tô Ký, Phường Tân Chánh Hiệp, Quận 12, TP HCM', N'0987763721', CAST(N'2020-11-14 16:45:17.950' AS DateTime), CAST(N'2020-11-14 16:45:17.950' AS DateTime), N'Đã hủy')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'9eeb2358-4d79-d857-093c-607f-ff41-e618-1e99', N'e6313499-cca4-a959-7083-8b8e-3066-3cf6-11fe', N'Huy', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', N'0396072861', CAST(N'2020-11-16 15:46:52.280' AS DateTime), CAST(N'2020-11-16 15:46:52.280' AS DateTime), N'Hoàn tất')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'a10053bf-efa9-7c12-a3a3-a707-72db-9581-2935', N'814d9e43-e3f2-8ecc-4f72-0ca2-723c-1858-50d6', N'Phạm Thị Xuân Phước', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', N'1111111111', CAST(N'2020-12-10 23:42:12.370' AS DateTime), CAST(N'2020-12-10 23:42:12.370' AS DateTime), N'Đang chờ xác nhận')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'a4def5df-fa94-c4c0-2f96-5036-e223-c287-3146', N'3', N'Phương Lan', N'111/12 Tô Ký', N'0987763721', CAST(N'2020-12-11 10:20:29.863' AS DateTime), CAST(N'2020-12-11 10:20:29.863' AS DateTime), N'Đang chờ xác nhận')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'be41acba-e4af-b090-9837-183a-6f53-8ce3-73f6', N'814d9e43-e3f2-8ecc-4f72-0ca2-723c-1858-50d6', N'Phạm Thị Xuân Phước', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', N'1111111111', CAST(N'2020-12-10 21:28:59.880' AS DateTime), CAST(N'2020-12-10 21:28:59.880' AS DateTime), N'Đang chờ xác nhận')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'bf6ede7d-9580-d4a0-c353-bee9-5b15-08f0-0810', N'3', N'Đỗ Thị Phương Lan', N'124 Tô Ký, Phường Tân Chánh Hiệp, Quận 12, TP HCM', N'0987763721', CAST(N'2020-11-14 16:17:33.677' AS DateTime), CAST(N'2020-11-14 16:17:33.677' AS DateTime), N'Từ chối')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'df04dc69-6c9f-7ad9-06a6-326f-a2c9-08d9-c6be', N'814d9e43-e3f2-8ecc-4f72-0ca2-723c-1858-50d6', N'Phạm Thị Xuân Phước', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', N'1111111111', CAST(N'2020-12-09 10:22:34.990' AS DateTime), CAST(N'2020-12-09 10:22:34.990' AS DateTime), N'Đang chờ xác nhận')
INSERT [dbo].[Orders] ([IDOrder], [IDCustomer], [NameShip], [AddressShip], [PhoneShip], [OrderDate], [CreateDate], [StatusOrder]) VALUES (N'e0b1ffc9-4187-a833-a29b-9ae7-57eb-d28b-b1d4', N'814d9e43-e3f2-8ecc-4f72-0ca2-723c-1858-50d6', N'Phạm Thị Xuân Phước', N'70/21 Tô Ký, Tân Chánh Hiệp, Quận 12, TPHCM', N'1111111111', CAST(N'2020-12-09 10:19:04.737' AS DateTime), CAST(N'2020-12-09 10:19:04.737' AS DateTime), N'Hoàn tất')
INSERT [dbo].[PriceHistory] ([IDPriceHistory], [ProductID], [UpdateByIDPH], [UpdataDate], [UpdatePrice], [Promotion], [isDelete]) VALUES (N'2ed89e09-b4d5-f306-eb34-ee37-a839-8e2b-7ceb', N'be5d34ee-ab5d-0c48-c198-1cd6-b83e-e2a6-e9ea', N'3', CAST(N'2020-12-10 10:17:11.500' AS DateTime), CAST(15890000.00 AS Decimal(18, 2)), NULL, 1)
INSERT [dbo].[PriceHistory] ([IDPriceHistory], [ProductID], [UpdateByIDPH], [UpdataDate], [UpdatePrice], [Promotion], [isDelete]) VALUES (N'd595c520-974f-7281-2166-f341-5ebe-ab9d-dfde', N'0b172296-1021-a9e4-d76b-363e-fef9-129f-4d5f', N'4', CAST(N'2020-12-10 10:20:00.667' AS DateTime), CAST(28600000.00 AS Decimal(18, 2)), NULL, 0)
INSERT [dbo].[PriceHistory] ([IDPriceHistory], [ProductID], [UpdateByIDPH], [UpdataDate], [UpdatePrice], [Promotion], [isDelete]) VALUES (N'e376a7f0-7db5-1b20-6352-a46a-5c82-8453-5fd6', N'be5d34ee-ab5d-0c48-c198-1cd6-b83e-e2a6-e9ea', N'6', CAST(N'2020-12-05 19:49:43.300' AS DateTime), CAST(14890000.00 AS Decimal(18, 2)), NULL, 0)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'0b172296-1021-a9e4-d76b-363e-fef9-129f-4d5f', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(28600000.00 AS Decimal(18, 2)), 49, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'Sang trọng, chụp ảnh đẹp', NULL, NULL, N'public\uploads\IMAGE-1606831524010.png', NULL, NULL, N'iPhone 12 mini', 1, N'3', CAST(N'2020-12-10 10:20:00.670' AS DateTime), NULL, 50, 24000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'2ca503bc-1741-8bd9-3ea4-a2e4-f506-bed4-7889', N'null', NULL, NULL, CAST(1.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, N'undefined', CAST(N'2020-12-10 18:00:13.427' AS DateTime), N'a', NULL, NULL, N'public\uploads\IMAGE-1607598016226.png', NULL, NULL, N'aa', 1, NULL, NULL, NULL, 1, 1, 0)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'43c989c2-188a-a910-f436-4824-a0e6-48b3-409e', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(15790000.00 AS Decimal(18, 2)), 28, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'iPhone 8 plus quốc tế mới trần, đã kích hoạt có hiệu năng cực tốt so với giá thành. iPhone 8 plus mới đã kích hoạt có số lần sạc ít, pin tốt. Khi mua khách hàng sẽ được tặng kèm sạc cáp Titan chính hãng bảo hành 1 đổi 1 trong 24 tháng. Hỗ trợ bảo hành mở rộng sản phẩm 1 đổi 1 trong 1 năm.', NULL, NULL, N'public\uploads\IMAGE-1606831451121.png', NULL, NULL, N'iPhone 8 Plus 256Gb', 1, N'3', CAST(N'2020-12-01 21:04:11.167' AS DateTime), NULL, 30, 8000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'8541a44c-4951-3462-5da6-07da-2b54-e52f-6062', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(10000000.00 AS Decimal(18, 2)), 111, NULL, NULL, NULL, N'undefined', CAST(N'2020-12-10 21:08:21.270' AS DateTime), N'a', NULL, NULL, N'public\uploads\IMAGE-1607609303541.png', NULL, NULL, N'Iphone', 1, NULL, NULL, NULL, 111, 18898999, 0)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'8dd61025-7c65-5646-798f-96e0-5eaa-9ba9-450f', N'74e58f1c-2539-dce5-aabb-6e7c-6cd1-1326-6f92', NULL, NULL, CAST(27000000.00 AS Decimal(18, 2)), 47, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'Màn hình 2K+ Dynamic AMOLED 2X tràn viền hoàn hảo, thiết kế thời thượng', NULL, NULL, N'public\uploads\IMAGE-1606831701923.png', NULL, NULL, N'Samsung Galaxy Note 20 Ultra', 1, N'3', CAST(N'2020-12-01 21:08:21.937' AS DateTime), NULL, 50, 20000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'8fc0104e-f351-83a3-565f-4767-4669-8774-b90f', N'null', NULL, NULL, CAST(1.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, N'undefined', CAST(N'2020-12-10 17:51:01.900' AS DateTime), N'a', NULL, NULL, NULL, NULL, NULL, N'a', 1, NULL, NULL, NULL, 1, 1, 0)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'98a11520-572f-0059-aa0c-d2c5-b2c9-8dfd-42bb', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(6990000.00 AS Decimal(18, 2)), 50, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'iPhone 7 plus quốc tế mới trần, đã kích hoạt. có hiệu năng cực tốt so với giá thành. iPhone 7 plus mới đã kích hoạt đa số còn bảo hành Apple Care, số lần sạc ít, pin tốt. Khi mua khách hàng sẽ được tặng kèm sạc cáp Titan chính hãng bảo hành 1 đổi 1 trong 24 tháng. Hỗ trợ bảo hành mở rộng sản phẩm 1 đổi 1 trong 1 năm.', NULL, NULL, N'public\uploads\IMAGE-1606831483206.png', NULL, NULL, N'iPhone 7 Plus 32Gb', 1, N'3', CAST(N'2020-12-01 21:04:43.230' AS DateTime), NULL, 50, 4000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'9937214f-e35a-ac01-6032-4b09-1556-c5ac-6711', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(40990000.00 AS Decimal(18, 2)), 44, NULL, NULL, NULL, NULL, CAST(N'2020-11-20 09:16:17.303' AS DateTime), N'iPhone 12 Pro 512GB Chính Hãng VN/A mới 100%, nguyên Seal, Chưa kích hoạt. Bảo hành 12 tháng 1 đổi 1 tại các trung tâm bảo hành của apple ở Việt Nam. Hỗ trợ phần mềm trọn đời máy tại tất cả các trung tâm bảo hành của shop trên toàn quốc. Máy gồm: Hộp, cáp, sách hướng dẫn.', NULL, NULL, N'public\uploads\IMAGE-1606831556217.png', NULL, NULL, N'iPhone 12 Pro 512GB', 1, N'3', CAST(N'2020-12-01 21:05:56.247' AS DateTime), NULL, 50, 30990000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'a05d3b13-1fbd-0d5c-aaa3-a20a-d59c-92bd-0d28', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(19990000.00 AS Decimal(18, 2)), 28, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB.', NULL, NULL, N'public\uploads\IMAGE-1606831636653.png', NULL, NULL, N'iPhone 11 64GB', 1, N'3', CAST(N'2020-12-01 21:07:16.660' AS DateTime), NULL, 30, 13000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'be5d34ee-ab5d-0c48-c198-1cd6-b83e-e2a6-e9ea', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(15890000.00 AS Decimal(18, 2)), 50, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'Đã kích hoạt, kèm sạc, cable chính hãng', NULL, NULL, N'public\uploads\IMAGE-1606831119479.png', NULL, NULL, N'iPhone Xs Max 64GB', 1, N'3', CAST(N'2020-12-10 10:17:11.417' AS DateTime), NULL, 50, 13000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'bf28988c-099b-7fd8-061e-0f38-adef-2c61-35ed', N'74e58f1c-2539-dce5-aabb-6e7c-6cd1-1326-6f92', NULL, NULL, CAST(2890000.00 AS Decimal(18, 2)), 50, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'Pin trâu, máy khoẻ chụp ảnh đẹp', NULL, NULL, N'public\uploads\IMAGE-1606831727022.png', NULL, NULL, N'Samsung Galaxy A11', 1, N'3', CAST(N'2020-12-01 21:08:47.077' AS DateTime), NULL, 50, 2100000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'cc6709b3-e671-cbd4-91dc-44ee-6a38-a122-ef3a', N'undefined', NULL, NULL, CAST(4790000.00 AS Decimal(18, 2)), 15, NULL, NULL, NULL, N'undefined', CAST(N'2020-12-10 13:49:44.383' AS DateTime), N'Xiaomi Redmi Note 9 là mẫu smartphone tầm trung, cân bằng giữa các yếu tố thiết kế, camera và hiệu năng, đáp ứng mượt mà hầu hết các nhu cầu từ cơ bản đến nâng cao của người dùng.c', NULL, NULL, N'public\uploads\IMAGE-1607582987605.png', NULL, NULL, N'Điện thoại Xiaomi Redmi Note 9', 1, N'3', CAST(N'2020-12-10 14:27:37.953' AS DateTime), NULL, 15, 4500000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'e9f0068e-9b2f-5c5b-b32e-5137-5a7e-33f9-2a40', N'aa075b1b-944a-cc0e-50ab-6bb5-0d89-b57d-e0ad', NULL, NULL, CAST(4190000.00 AS Decimal(18, 2)), 15, NULL, NULL, NULL, N'undefined', CAST(N'2020-11-30 10:08:55.690' AS DateTime), N'Realme C15 sở hữu thiết kế bằng nhựa cao cấp, kích thước lớn vừa phải cùng các góc cạnh được bo tròn mềm mại cho cảm giác cầm nắm khá thoải mái cũng như dễ cho vào ví hay túi quần.', NULL, NULL, N'public\uploads\IMAGE-1606705735424.png', NULL, NULL, N'Realme C15 4GB-64GB ', 1, NULL, NULL, NULL, 15, 4000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'e9f6dcc8-4674-f3cc-a9aa-65c4-e9a8-124d-c30d', N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', NULL, NULL, CAST(34990000.00 AS Decimal(18, 2)), 27, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'iPhone 12 Pro 256GB Chính Hãng VN/A mới 100%, nguyên Seal, Chưa kích hoạt. Bảo hành 12 tháng 1 đổi 1 tại các trung tâm bảo hành của apple ở Việt Nam. Hỗ trợ phần mềm trọn đời máy tại tất cả các trung tâm bảo hành của Di Động Thông Minh trên toàn quốc. Máy gồm: Hộp, cáp, sách hướng dẫn.', NULL, NULL, N'public\uploads\IMAGE-1606831588403.png', NULL, NULL, N'iPhone 12 Pro 256GB', 1, N'3', CAST(N'2020-12-01 21:06:28.420' AS DateTime), NULL, 30, 27000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'ed28ec5e-a4da-3202-ee77-4d19-5690-7f32-907d', N'80eeac35-e356-4904-4ade-1623-d031-7cfc-5cbe', NULL, NULL, CAST(7190000.00 AS Decimal(18, 2)), 50, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:43:50.387' AS DateTime), N'Tháng 9/2020, OPPO tiếp tục cho ra mắt dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18W với tên gọi OPPO A93.', NULL, NULL, N'public\uploads\IMAGE-1606831750245.png', NULL, NULL, N'OPPO A93', 1, N'3', CAST(N'2020-12-01 21:09:10.283' AS DateTime), NULL, 50, 5000000, 1)
INSERT [dbo].[Product] ([IDProduct], [IDProductCategory], [HotFlag], [Specification], [Price], [Quantity], [Promotion], [Alias], [Content], [CreateByID], [CreateDate], [Description], [DisplayOrder], [HomeFlag], [Image], [MetaDescription], [MetaKeyword], [Name], [Status], [UpdateByID], [UpdateDate], [ViewCount], [OriginalQuantity], [OriginalPrice], [Active]) VALUES (N'r', N'9a5e9709-d946-6f4d-4658-f9dd-cc63-c392-cd7d', NULL, NULL, CAST(3790000.00 AS Decimal(18, 2)), 47, NULL, NULL, NULL, NULL, CAST(N'2020-11-14 14:45:49.410' AS DateTime), N'Nhanh như một cơn gió, sức hot của Redmi Note 9 Pro chưa có dấu hiệu hạ nhiệt thì Xiaomi Redmi 9 vừa bất ngờ ra mắt sớm. Thiết bị mang một thiết kế mới, thời trang và nhỏ gọn, phần cứng được nâng cấp cùng thời lượng pin ấn tượng, đặc biệt đi kèm một mức giá bán không thể nào hấp dẫn hơn.', NULL, NULL, N'public\uploads\IMAGE-1606831671985.png', NULL, NULL, N'Xiaomi Redmi 9 ', 1, N'3', CAST(N'2020-12-01 21:07:52.037' AS DateTime), NULL, 50, 2000000, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, NULL, N'Điện thoại', 0, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'451d3eee-43cb-7abd-0d4f-8d89-0d62-af87-7d14', N'aa075b1b-944a-cc0e-50ab-6bb5-0d89-b57d-e0ad', NULL, NULL, NULL, N'p', 1, NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'4dbb35d7-e382-8b15-95fb-ce4a-7135-8c26-159e', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Iphone', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'74e58f1c-2539-dce5-aabb-6e7c-6cd1-1326-6f92', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Samsung', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'80eeac35-e356-4904-4ade-1623-d031-7cfc-5cbe', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'OPPO', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'93acdeba-c723-f995-fc85-6d69-da4e-13aa-720a', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Vsmart', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'9a5e9709-d946-6f4d-4658-f9dd-cc63-c392-cd7d', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Xiaomi chính hãng', 0, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'aa075b1b-944a-cc0e-50ab-6bb5-0d89-b57d-e0ad', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Realme', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'c972110a-19d3-5310-fd4f-31f8-ac6c-1cfc-430e', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Vivo', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'd3594793-c193-f5a1-fe61-f2c3-6494-28c1-fc2d', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Nokia', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'd3b12670-aec2-338f-b72d-5e05-a30e-ff86-a93e', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Huawei', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'db9f436a-7a34-faa1-69f3-25bd-8082-cdea-40c0', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Masstel', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'dd7960b3-76c0-c376-5f08-9837-99ef-ffc9-090b', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Itel', 1, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([IDProductCategory], [ParentID], [Alias], [CreateBy], [CreateDate], [Name], [Status], [UpdateBy], [UpdateDate], [Active]) VALUES (N'e3aa4586-b553-037c-64ca-3358-82ab-53a0-7ba6', N'10178710-a0d8-7e0e-1472-f4ee-fcc5-1600-91b2', NULL, NULL, NULL, N'Energizer', 1, NULL, NULL, 1)
