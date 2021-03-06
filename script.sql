USE [Test22]
GO
/****** Object:  Table [dbo].[ChiTiet]    Script Date: 6/21/2022 3:56:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet](
	[mahd] [int] NOT NULL,
	[malich] [char](7) NOT NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC,
	[malich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/21/2022 3:56:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayMua] [date] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/21/2022 3:56:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[matkhau] [varchar](10) NULL,
	[diachi] [nvarchar](100) NULL,
	[dienthoai] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 6/21/2022 3:56:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[malich] [char](7) NOT NULL,
	[maphim] [int] NULL,
	[ngay] [date] NULL,
	[gio] [varchar](5) NULL,
	[gia] [decimal](18, 0) NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[malich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 6/21/2022 3:56:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[maphim] [int] NOT NULL,
	[tenphim] [nvarchar](30) NULL,
	[daodien] [nvarchar](30) NULL,
	[hinh] [varchar](50) NULL,
	[ngaychieu] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maphim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([makh], [hoten], [matkhau], [diachi], [dienthoai]) VALUES (1, N'nam', N'123', N'12a 34 kp3', N'0192133111')
INSERT [dbo].[KhachHang] ([makh], [hoten], [matkhau], [diachi], [dienthoai]) VALUES (2, N'nam1', N'123', N'12a 34 kp33', N'1111111')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F1X1   ', 1, CAST(N'2022-03-25' AS Date), N'10:20', CAST(70 AS Decimal(18, 0)), 0)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F1X2   ', 1, CAST(N'2022-03-26' AS Date), N'13:00', CAST(70 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F1X3   ', 1, CAST(N'2022-03-27' AS Date), N'18:30', CAST(90 AS Decimal(18, 0)), 0)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F2X1   ', 2, CAST(N'2022-04-01' AS Date), N'18:30', CAST(90 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F2X2   ', 2, CAST(N'2022-04-01' AS Date), N'20:00', CAST(105 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F3X1   ', 3, CAST(N'2022-03-25' AS Date), N'18:30', CAST(90 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F3X2   ', 3, CAST(N'2022-03-26' AS Date), N'20:00', CAST(105 AS Decimal(18, 0)), 100)
GO
INSERT [dbo].[Phim] ([maphim], [tenphim], [daodien], [hinh], [ngaychieu]) VALUES (1, N'Thành phố mất tích', N'Aaron Nee, Adam
Nee', N'/Content/img/img1.jpg', CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Phim] ([maphim], [tenphim], [daodien], [hinh], [ngaychieu]) VALUES (2, N'MORBIUS', N'Daniel
Espinosa', N'/Content/img/img2.jpg', CAST(N'2022-08-10' AS Date))
INSERT [dbo].[Phim] ([maphim], [tenphim], [daodien], [hinh], [ngaychieu]) VALUES (3, N'Những kẻ xấu xa', N'Pierre
Perifel', N'/Content/img/img3.jpg', CAST(N'2022-03-25' AS Date))
GO
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD FOREIGN KEY([mahd])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD FOREIGN KEY([malich])
REFERENCES [dbo].[LichChieu] ([malich])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([makh])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([maphim])
REFERENCES [dbo].[Phim] ([maphim])
GO
