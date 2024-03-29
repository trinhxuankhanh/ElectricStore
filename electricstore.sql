USE [ElectricStore]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 6/17/2019 10:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id_cart] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[id_product] [int] NULL,
	[quanlity] [int] NULL,
	[total_money] [float] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[id_cart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/17/2019 10:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id_categories] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id_categories] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 6/17/2019 10:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[username] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [nvarchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[address] [nvarchar](100) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 6/17/2019 10:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id_image] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](50) NULL,
 CONSTRAINT [PK_image] PRIMARY KEY CLUSTERED 
(
	[id_image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[price]    Script Date: 6/17/2019 10:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[price](
	[id_price] [int] IDENTITY(1,1) NOT NULL,
	[default_price] [float] NULL,
	[promotion_price] [float] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_price] PRIMARY KEY CLUSTERED 
(
	[id_price] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producer]    Script Date: 6/17/2019 10:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producer](
	[id_producer] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_producer] PRIMARY KEY CLUSTERED 
(
	[id_producer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/17/2019 10:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id_product] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[discription] [nvarchar](max) NULL,
	[action] [bit] NULL,
	[id_image] [int] NULL,
	[id_price] [int] NULL,
	[id_producer] [int] NULL,
	[id_categories] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 6/17/2019 10:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[role] [varchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id_categories], [name]) VALUES (1, N'Sound devices')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (2, N'Video game consoles')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (3, N'Cell/Mobile/Wireless phones')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (4, N'Home security system')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (5, N'Cameras')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (6, N'Home theater system')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (7, N'TVs')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (8, N'Computers')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (9, N'Games/Movies/Music')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (10, N'Accessories')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (11, N'Office')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (12, N'Home appliances')
INSERT [dbo].[categories] ([id_categories], [name]) VALUES (25, N'SSDm2')
SET IDENTITY_INSERT [dbo].[categories] OFF
INSERT [dbo].[customer] ([username], [fullname], [phone], [email], [birthday], [address]) VALUES (N'chi', N'Nguyễn Đắc Chí', N'1234567890', N'chi@gmail.com', CAST(N'1999-01-01' AS Date), N'123 Miếu Bông')
INSERT [dbo].[customer] ([username], [fullname], [phone], [email], [birthday], [address]) VALUES (N'ha', N'Nguyễn Sơn Hà', N'1234567890', N'ha@gmail.com', CAST(N'1999-01-01' AS Date), N'123 Xa Lắm')
INSERT [dbo].[customer] ([username], [fullname], [phone], [email], [birthday], [address]) VALUES (N'tai', N'Nguyễn Công Tài', N'1234567890', N'tai@gmail.com', CAST(N'1999-01-01' AS Date), N'123 Nguyễn Trãi')
INSERT [dbo].[customer] ([username], [fullname], [phone], [email], [birthday], [address]) VALUES (N'xuaankhanhs', N'Trịnh Xuân Khánh', N'0906430747', N'xuaankhanhs@gmail.com', CAST(N'1999-05-06' AS Date), N'226 Bùi Tấn Diên')
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([id_image], [link]) VALUES (1, N'Images/Laptop.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (2, N'Images/1_VR.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (3, N'Images/1-2-iphone-png-picture-png-clipart.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (4, N'Images/2-2-iphone-png-picture.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (5, N'Images/3_Iron.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (6, N'Images/38_Printers.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (7, N'Images/4_VR.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (8, N'Images/4-2-iphone-png-picture-png-image.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (9, N'Images/43_Refrigerator.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (10, N'Images/43_Washing_Machine.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (11, N'Images/434_Refrigerator.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (12, N'Images/435_Refrigerator.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (13, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (14, N'Images/6-video-camera-png-image.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (15, N'Images/74_Headphones.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (16, N'Images/83_Spekers.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (17, N'Images/938_Sony_Laptops.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (18, N'Images/bag2.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (19, N'Images/Black_Vacuum_Cleaner_PNG_Clipart-629.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (20, N'Images/Camera.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (21, N'Images/Canon_Camera.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (24, N'Images/cruzer-force-usb.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (25, N'Images/Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (26, N'Images/Hand-Blender-Mixer-PNG-Image1.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (27, N'Images/Home_Theaters.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (28, N'Images/if_call_322424.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (29, N'Images/1329080.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (30, N'Images/images.jpg')
INSERT [dbo].[image] ([id_image], [link]) VALUES (31, N'Images/Nikon_Camera.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (32, N'Images/Orbit_Watch.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (33, N'Images/Philips_Trimmers.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (34, N'Images/SanDisk-USB-Flash-Pen-Drive-PNG-image.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (35, N'Images/Sony_Headphones.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (36, N'Images/Website_Logo.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (37, N'Images/y37-high-figure.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (38, N'Images/Canon-EF.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (39, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (40, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (41, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (42, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (43, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (44, N'Images/9985.jpg')
INSERT [dbo].[image] ([id_image], [link]) VALUES (45, N'Images/9985.jpg')
INSERT [dbo].[image] ([id_image], [link]) VALUES (46, N'Images/9985.jpg')
INSERT [dbo].[image] ([id_image], [link]) VALUES (47, N'Images/9985.jpg')
INSERT [dbo].[image] ([id_image], [link]) VALUES (48, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (50, N'Images/53_Drone.png')
INSERT [dbo].[image] ([id_image], [link]) VALUES (51, N'Images/25383.jpg')
SET IDENTITY_INSERT [dbo].[image] OFF
SET IDENTITY_INSERT [dbo].[price] ON 

INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (1, 25.63, 24.34, CAST(N'2019-01-04' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (2, 50.31, 49.41, CAST(N'2019-01-12' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (3, 31.340000152587891, 30.989999771118164, CAST(N'2018-05-15' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (4, 1049.93, 1042.97, CAST(N'2019-01-13' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (5, 35.31, 28.71, CAST(N'2019-01-14' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (6, 122.47, 120.45, CAST(N'2019-01-15' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (7, 559.23, 449.12, CAST(N'2019-01-16' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (8, 259.81, 239.59, CAST(N'2019-01-17' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (9, 402.3, 399, CAST(N'2019-05-01' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (10, 18, 16, CAST(N'2019-01-05' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (11, 134.16, 133.89, CAST(N'2019-01-06' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (12, 15, 14.92, CAST(N'2019-01-07' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (13, 2, 1.89, CAST(N'2019-01-08' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (14, 9, 8.49, CAST(N'2019-01-09' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (15, 192.45, 184.78, CAST(N'2019-01-10' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (16, 642.45, 636.21, CAST(N'2019-01-11' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (17, 33, 2, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (18, 33, 2, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (19, 33, 2, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (20, 33, 2, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (21, 99999.8984375, 2, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (22, 99999, 2, CAST(N'2019-05-11' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (23, 33, 2, CAST(N'2019-05-11' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (24, 33, 2, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (25, 33, 2, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (26, 33, 2, CAST(N'2019-05-20' AS Date))
INSERT [dbo].[price] ([id_price], [default_price], [promotion_price], [date]) VALUES (30, 30, 20, CAST(N'2019-05-15' AS Date))
SET IDENTITY_INSERT [dbo].[price] OFF
SET IDENTITY_INSERT [dbo].[producer] ON 

INSERT [dbo].[producer] ([id_producer], [name]) VALUES (1, N'Apple macbook')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (2, N'Images/1_VR.png')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (3, N'Hp')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (4, N'DESTEK')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (5, N'Samsung')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (6, N'Russell Hobbs')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (7, N'LG')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (8, N'DJI')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (9, N'Sony')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (10, N'DESTEK')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (11, N'Vivo')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (12, N'SanDisk')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (13, N'Samsung')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (14, N'Elgento')
INSERT [dbo].[producer] ([id_producer], [name]) VALUES (15, N'IPhone')
SET IDENTITY_INSERT [dbo].[producer] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (1, N'Apple macbook pro 13in', N'intel dual-core i52.4Ghz, 4GB Ram, 500GB HDD, intel HD graphics, OS X Silver 2011', 1, 1, 15, 1, 8)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (2, N'Philips QT4000 ', N'Experience Men''s Stubble Trimmer ', 1, 33, 1, 10, 12)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (3, N'Vivo Xshot', N'5.2 inch 4G Android 4.2 Quad Core 2.3GHz RAM 2GB ROM 16GB', 1, 37, 9, 11, 3)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (4, N'SanDisk Cruzer Force 64 GB ', N'USB Flash Drive USB 2.0', 1, 24, 10, 12, 11)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (5, N'Canon EF', N'75-300mm f/4.0-5.6 III Lens', 1, 38, 11, 2, 5)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (6, N'PZJ® Galaxy Backpack', N'Unisex Galaxy Pattern Canvas', 1, 18, 12, 13, 11)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (7, N'Elgento E12009 Hand Blender', N'170 W - White', 1, 26, 14, 14, 12)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (8, N'Canon EOS 200D', N'Camera with EF-S 18 - 55 mm f/4-5.6 IS', 1, 21, 16, 2, 5)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (9, N'HP Envy 4527', N'All-in-One Printer, Instant Ink Compatible with 4 Months Trial', 1, 6, 2, 3, 11)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (10, N'DESTEK V4 VR', N'Headset, 103° FOV, Eye Protected HD Virtual Reality Headset w/ Touch Button/Trigger for iPhone', 1, 2, 3, 4, 2)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (11, N'Samsung RS7567BHCSL', N'H-series Side by Side Fridge Freezer With Ice And Water Dispenser Inox Steel Doors', 1, 11, 4, 5, 12)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (12, N'Russell Hobbs Steamglide Professional', N'2600 W Steam Iron 21370 - Blue and Black', 1, 5, 5, 6, 12)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (13, N'SSD SamSung 860 Evo', N'500GB mSata 2242', 1, 51, 30, 5, 25)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (20, N'SSD SamSung 860', N'very good', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (22, N'Ram ddr4', N'very good', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[product] ([id_product], [name], [discription], [action], [id_image], [id_price], [id_producer], [id_categories]) VALUES (23, N'Ram ddr3', N'very good', 1, 51, 30, 13, 25)
SET IDENTITY_INSERT [dbo].[product] OFF
INSERT [dbo].[user] ([username], [password], [role]) VALUES (N'', NULL, NULL)
INSERT [dbo].[user] ([username], [password], [role]) VALUES (N'chi', N'123', N'user')
INSERT [dbo].[user] ([username], [password], [role]) VALUES (N'ha', N'123', N'user')
INSERT [dbo].[user] ([username], [password], [role]) VALUES (N'tai', N'123', N'manager')
INSERT [dbo].[user] ([username], [password], [role]) VALUES (N'tai@gmail.com', N'123', N'manager')
INSERT [dbo].[user] ([username], [password], [role]) VALUES (N'xuaankhanhs', N'khanh561999', N'manager')
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_customer] FOREIGN KEY([username])
REFERENCES [dbo].[customer] ([username])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_customer]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_product] FOREIGN KEY([id_product])
REFERENCES [dbo].[product] ([id_product])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_product]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_user] FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_user]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_categories] FOREIGN KEY([id_categories])
REFERENCES [dbo].[categories] ([id_categories])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_categories]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_image] FOREIGN KEY([id_image])
REFERENCES [dbo].[image] ([id_image])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_image]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_price] FOREIGN KEY([id_price])
REFERENCES [dbo].[price] ([id_price])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_price]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_producer] FOREIGN KEY([id_producer])
REFERENCES [dbo].[producer] ([id_producer])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_producer]
GO
