USE [EventDB]
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[BookingNo] [varchar](50) NULL,
	[BookingDate] [date] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingApproval] [varchar](1) NULL,
	[BookingApprovalDate] [datetime] NULL,
	[BookingCompletedFlag] [varchar](1) NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingEquipment]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingEquipment](
	[BookingEquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingEquipment] PRIMARY KEY CLUSTERED 
(
	[BookingEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingFlower]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingFlower](
	[BookingFlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingFlower] PRIMARY KEY CLUSTERED 
(
	[BookingFlowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingFood]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingFood](
	[BookFoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[DishName] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingFood] PRIMARY KEY CLUSTERED 
(
	[BookFoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingLight]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingLight](
	[BookLightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightIDSelected] [int] NULL,
	[BookingID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_BookingLight] PRIMARY KEY CLUSTERED 
(
	[BookLightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingVenue]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingVenue](
	[BookingVenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueID] [int] NULL,
	[EventTypeID] [int] NULL,
	[GuestCount] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingVenue] PRIMARY KEY CLUSTERED 
(
	[BookingVenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](200) NULL,
	[StateID] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dishtypes]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishtypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dishtype] [varchar](50) NULL,
 CONSTRAINT [PK_Dishtypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [varchar](200) NULL,
	[EquipmentFilename] [varchar](200) NULL,
	[EquipmentFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[EquipmentCost] [int] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [varchar](50) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flower]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flower](
	[FlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerName] [varchar](200) NULL,
	[FlowerFilename] [varchar](200) NULL,
	[FlowerFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[FlowerCost] [int] NULL,
 CONSTRAINT [PK_Flower] PRIMARY KEY CLUSTERED 
(
	[FlowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[FoodName] [varchar](200) NULL,
	[FoodFilename] [varchar](200) NULL,
	[FoodFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[FoodCost] [int] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Light]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Light](
	[LightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightName] [varchar](200) NULL,
	[LightFilename] [varchar](200) NULL,
	[LightFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[LightCost] [int] NULL,
 CONSTRAINT [PK_Light] PRIMARY KEY CLUSTERED 
(
	[LightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [int] NULL,
	[State] [int] NULL,
	[Country] [int] NULL,
	[Mobileno] [varchar](20) NULL,
	[EmailID] [varchar](100) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](100) NULL,
	[ConfirmPassword] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Birthdate] [datetime] NULL,
	[RoleID] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Rolename] [varchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](200) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venue]    Script Date: 8/14/2023 5:20:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venue](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueName] [varchar](200) NULL,
	[VenueFilename] [varchar](200) NULL,
	[VenueFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Availabledate] [datetime] NULL,
	[Createdate] [datetime] NULL,
	[VenueCost] [int] NULL,
	[Location] [varchar](200) NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] ON 

INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (1, N'BK-2016-1', CAST(N'2016-05-14' AS Date), 1, CAST(N'2016-05-10T09:52:00.403' AS DateTime), N'A', CAST(N'2017-07-21T09:48:42.977' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (24, N'BK-2017-24', CAST(N'2017-07-18' AS Date), 1, CAST(N'2017-07-18T23:00:25.057' AS DateTime), N'C', CAST(N'2017-07-21T10:50:09.933' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (25, N'BK-2017-25', CAST(N'2017-07-20' AS Date), 1, CAST(N'2017-07-19T09:07:15.350' AS DateTime), N'R', CAST(N'2017-09-03T14:21:45.447' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (26, N'BK-2017-26', CAST(N'2017-07-22' AS Date), 1, CAST(N'2017-07-21T10:01:37.140' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (27, N'BK-2017-27', CAST(N'2017-07-24' AS Date), 1, CAST(N'2017-07-21T10:05:12.240' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (28, N'BK-2017-28', CAST(N'2017-07-27' AS Date), 1, CAST(N'2017-07-21T10:07:07.020' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (29, N'BK-2017-29', CAST(N'2017-07-27' AS Date), 1, CAST(N'2017-07-21T10:10:33.927' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (30, N'BK-2017-30', CAST(N'2017-07-29' AS Date), 1, CAST(N'2017-07-21T10:19:35.417' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (31, N'BK-2017-31', CAST(N'2017-07-22' AS Date), 1, CAST(N'2017-07-21T10:39:06.570' AS DateTime), N'R', CAST(N'2017-07-21T10:42:47.043' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (32, N'BK-2017-32', CAST(N'2017-07-28' AS Date), 1, CAST(N'2017-07-22T13:59:09.487' AS DateTime), N'A', CAST(N'2017-07-22T14:00:46.503' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (33, N'BK-2017-33', CAST(N'2017-07-24' AS Date), 1, CAST(N'2017-07-22T16:19:23.703' AS DateTime), N'A', CAST(N'2017-07-22T16:23:13.777' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (34, N'BK-2017-34', CAST(N'2017-07-30' AS Date), 1, CAST(N'2017-07-23T10:27:40.050' AS DateTime), N'A', CAST(N'2017-07-23T10:28:28.567' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (35, N'BK-2017-35', CAST(N'2017-08-03' AS Date), 1, CAST(N'2017-07-25T09:26:23.737' AS DateTime), N'A', CAST(N'2017-07-25T09:27:35.817' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (36, N'BK-2017-36', CAST(N'2017-09-13' AS Date), 1, CAST(N'2017-09-03T14:25:30.677' AS DateTime), N'A', CAST(N'2023-06-24T20:35:42.127' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (37, N'BK-2017-37', CAST(N'2017-10-22' AS Date), 1, CAST(N'2017-10-15T18:50:16.220' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (75, N'BK-2023-75', NULL, 12, CAST(N'2023-08-13T16:41:52.563' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (76, N'BK-2023-76', CAST(N'2023-08-31' AS Date), 12, CAST(N'2023-08-13T16:43:58.320' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (77, N'BK-2023-77', CAST(N'2023-08-26' AS Date), 12, CAST(N'2023-08-13T17:12:24.420' AS DateTime), N'P', NULL, N'C')
SET IDENTITY_INSERT [dbo].[BookingDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingEquipment] ON 

INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(N'2016-05-10T09:52:06.107' AS DateTime), 1)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (20, 1, 1, CAST(N'2017-07-18T23:00:31.630' AS DateTime), 24)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (21, 1, 1, CAST(N'2017-07-19T09:07:25.157' AS DateTime), 25)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (22, 1, 1, CAST(N'2017-07-21T10:01:42.500' AS DateTime), 26)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (23, 1, 1, CAST(N'2017-07-21T10:05:17.420' AS DateTime), 27)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 1, 1, CAST(N'2017-07-21T10:07:15.637' AS DateTime), 28)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 1, CAST(N'2017-07-21T10:10:38.253' AS DateTime), 29)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 1, CAST(N'2017-07-21T10:19:39.253' AS DateTime), 30)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 1, CAST(N'2017-07-21T10:39:10.200' AS DateTime), 31)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 1, CAST(N'2017-07-22T13:59:56.670' AS DateTime), 32)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 2, 1, CAST(N'2017-07-22T13:59:56.683' AS DateTime), 32)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 1, CAST(N'2017-07-22T16:19:33.043' AS DateTime), 33)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 1, CAST(N'2017-07-22T16:19:33.073' AS DateTime), 33)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 1, CAST(N'2017-07-23T10:27:45.787' AS DateTime), 34)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 1, 1, CAST(N'2017-07-25T09:26:29.890' AS DateTime), 35)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 2, 1, CAST(N'2017-07-25T09:26:30.017' AS DateTime), 35)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (35, 1, 1, CAST(N'2017-09-03T14:27:15.503' AS DateTime), 36)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (36, 1, 1, CAST(N'2017-10-15T18:53:26.603' AS DateTime), 37)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (37, 2, 1, CAST(N'2017-10-15T18:53:26.617' AS DateTime), 37)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (38, 1, 10, CAST(N'2023-06-11T09:47:50.847' AS DateTime), 38)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (39, 2, 10, CAST(N'2023-06-21T18:00:26.347' AS DateTime), 39)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (40, 2, 10, CAST(N'2023-06-22T13:22:35.830' AS DateTime), 42)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (41, 1, 10, CAST(N'2023-06-23T17:43:10.713' AS DateTime), 44)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (42, 1, 10, CAST(N'2023-06-23T18:04:47.773' AS DateTime), 50)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (43, 1, 10, CAST(N'2023-06-24T20:30:11.917' AS DateTime), 52)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (44, 2, 10, CAST(N'2023-06-24T20:37:13.470' AS DateTime), 53)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (45, 1, 10, CAST(N'2023-06-25T11:35:25.863' AS DateTime), 54)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (46, 2, 10, CAST(N'2023-06-25T11:35:25.890' AS DateTime), 54)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (47, 1, 10, CAST(N'2023-07-14T08:40:15.077' AS DateTime), 55)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (48, 2, 10, CAST(N'2023-07-14T08:44:14.933' AS DateTime), 56)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (49, 3, 10, CAST(N'2023-07-14T08:50:03.207' AS DateTime), 57)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (50, 3, 11, CAST(N'2023-07-14T08:57:41.533' AS DateTime), 59)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (51, 3, 11, CAST(N'2023-07-14T08:59:43.863' AS DateTime), 60)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (52, 1, 11, CAST(N'2023-08-10T14:03:02.837' AS DateTime), 63)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (53, 1, 11, CAST(N'2023-08-10T14:17:48.940' AS DateTime), 64)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (54, 2, 11, CAST(N'2023-08-11T10:55:45.293' AS DateTime), 65)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (55, 1, 11, CAST(N'2023-08-11T10:59:06.100' AS DateTime), 66)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (56, 2, 11, CAST(N'2023-08-11T10:59:06.110' AS DateTime), 66)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (57, 1, 11, CAST(N'2023-08-11T11:03:34.923' AS DateTime), 67)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (58, 2, 11, CAST(N'2023-08-11T11:03:34.963' AS DateTime), 67)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (59, 3, 11, CAST(N'2023-08-11T11:03:34.997' AS DateTime), 67)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (60, 3, 10, CAST(N'2023-08-11T11:09:01.387' AS DateTime), 69)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (61, 2, 10, CAST(N'2023-08-13T16:11:54.047' AS DateTime), 71)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (62, 1, 10, CAST(N'2023-08-13T16:14:20.007' AS DateTime), 72)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (63, 2, 11, CAST(N'2023-08-13T16:19:42.087' AS DateTime), 73)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (64, 3, 11, CAST(N'2023-08-13T16:25:18.970' AS DateTime), 74)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (65, 2, 12, CAST(N'2023-08-13T16:41:59.880' AS DateTime), 75)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (66, 3, 12, CAST(N'2023-08-13T16:44:06.507' AS DateTime), 76)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (67, 4, 12, CAST(N'2023-08-13T17:12:30.917' AS DateTime), 77)
SET IDENTITY_INSERT [dbo].[BookingEquipment] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingFlower] ON 

INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(N'2016-05-10T09:52:23.500' AS DateTime), 1)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (2, 1, 1, CAST(N'2017-07-18T23:00:47.720' AS DateTime), 24)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (4, 1, 1, CAST(N'2017-07-19T09:07:38.923' AS DateTime), 25)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (5, 1, 1, CAST(N'2017-07-21T10:21:14.210' AS DateTime), 30)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (6, 1, 1, CAST(N'2017-07-21T10:39:27.733' AS DateTime), 31)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (7, 1, 1, CAST(N'2017-07-22T14:00:14.283' AS DateTime), 32)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (8, 2, 1, CAST(N'2017-07-22T14:00:14.317' AS DateTime), 32)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (9, 1, 1, CAST(N'2017-07-22T16:19:58.033' AS DateTime), 33)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (10, 2, 1, CAST(N'2017-07-23T10:28:02.587' AS DateTime), 34)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (11, 1, 1, CAST(N'2017-07-25T09:26:48.337' AS DateTime), 35)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (12, 2, 1, CAST(N'2017-07-25T09:26:48.423' AS DateTime), 35)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (13, 1, 1, CAST(N'2017-09-03T14:29:12.680' AS DateTime), 36)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (14, 1, 1, CAST(N'2017-10-15T19:08:54.120' AS DateTime), 37)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (15, 2, 10, CAST(N'2023-06-11T09:48:15.300' AS DateTime), 38)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (16, 2, 10, CAST(N'2023-06-21T18:00:48.347' AS DateTime), 39)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (17, 2, 10, CAST(N'2023-06-22T13:23:01.970' AS DateTime), 42)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (18, 1, 10, CAST(N'2023-06-24T20:31:35.850' AS DateTime), 52)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (19, 1, 10, CAST(N'2023-06-24T20:37:55.213' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (20, 2, 10, CAST(N'2023-06-24T20:37:55.353' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (21, 1, 10, CAST(N'2023-06-25T11:36:09.467' AS DateTime), 54)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (22, 2, 10, CAST(N'2023-06-25T11:36:09.517' AS DateTime), 54)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (23, 2, 10, CAST(N'2023-07-14T08:47:43.907' AS DateTime), 56)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 2, 11, CAST(N'2023-07-14T08:58:02.093' AS DateTime), 59)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 2, 11, CAST(N'2023-07-14T09:00:12.323' AS DateTime), 60)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 11, CAST(N'2023-08-11T10:58:11.327' AS DateTime), 65)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 2, 11, CAST(N'2023-08-11T11:01:39.013' AS DateTime), 66)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 10, CAST(N'2023-08-11T11:11:25.477' AS DateTime), 69)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 2, 10, CAST(N'2023-08-13T16:12:25.993' AS DateTime), 71)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 10, CAST(N'2023-08-13T16:14:53.307' AS DateTime), 72)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 11, CAST(N'2023-08-13T16:20:10.133' AS DateTime), 73)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 2, 11, CAST(N'2023-08-13T16:25:48.427' AS DateTime), 74)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 1, 12, CAST(N'2023-08-13T16:44:33.457' AS DateTime), 76)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 2, 12, CAST(N'2023-08-13T17:12:56.010' AS DateTime), 77)
SET IDENTITY_INSERT [dbo].[BookingFlower] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingFood] ON 

INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (1, N'1', N'1', 1, 1, 1, CAST(N'2016-05-10T09:52:12.223' AS DateTime), 1)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (24, N'1', N'2', 1, 1, 1, CAST(N'2017-07-18T23:00:41.313' AS DateTime), 24)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (25, N'1', N'2', 1, 2, 1, CAST(N'2017-07-18T23:00:41.327' AS DateTime), 24)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (26, N'1', N'1', 1, 2, 1, CAST(N'2017-07-19T09:07:33.220' AS DateTime), 25)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (27, N'1', N'1', 1, 1, 1, CAST(N'2017-07-21T10:10:45.993' AS DateTime), 29)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (28, N'1', N'1', 1, 1, 1, CAST(N'2017-07-21T10:19:50.740' AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (29, N'1', N'1', 1, 2, 1, CAST(N'2017-07-21T10:19:50.803' AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (30, N'1', N'1', 1, 3, 1, CAST(N'2017-07-21T10:19:50.820' AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (31, N'1', N'1', 2, 1, 1, CAST(N'2017-07-21T10:39:17.557' AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (32, N'1', N'1', 2, 3, 1, CAST(N'2017-07-21T10:39:17.573' AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (33, N'1', N'1', 2, 4, 1, CAST(N'2017-07-21T10:39:17.587' AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (34, N'1', N'2', 1, 1, 1, CAST(N'2017-07-22T14:00:03.517' AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (35, N'1', N'2', 1, 2, 1, CAST(N'2017-07-22T14:00:03.533' AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (36, N'1', N'2', 1, 3, 1, CAST(N'2017-07-22T14:00:03.537' AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (37, N'2', N'1', 1, 2, 1, CAST(N'2017-07-22T16:19:43.160' AS DateTime), 33)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (38, N'2', N'1', 1, 3, 1, CAST(N'2017-07-22T16:19:43.207' AS DateTime), 33)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (39, N'1', N'2', 1, 1, 1, CAST(N'2017-07-23T10:27:52.820' AS DateTime), 34)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (40, N'1', N'2', 1, 2, 1, CAST(N'2017-07-23T10:27:52.890' AS DateTime), 34)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (41, N'2', N'1', 1, 1, 1, CAST(N'2017-07-25T09:26:37.997' AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (42, N'2', N'1', 1, 2, 1, CAST(N'2017-07-25T09:26:38.090' AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (43, N'2', N'1', 1, 3, 1, CAST(N'2017-07-25T09:26:38.097' AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (44, N'1', N'1', 1, 1, 1, CAST(N'2017-09-03T14:27:57.493' AS DateTime), 36)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (45, N'1', N'1', 1, 2, 1, CAST(N'2017-09-03T14:27:57.510' AS DateTime), 36)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (46, N'1', N'1', 1, 1, 1, CAST(N'2017-10-15T18:57:16.343' AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (47, N'1', N'1', 1, 2, 1, CAST(N'2017-10-15T18:57:16.367' AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (48, N'1', N'1', 1, 4, 1, CAST(N'2017-10-15T18:57:16.377' AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (49, N'1', N'1', 1, 1, 10, CAST(N'2023-06-11T09:48:01.693' AS DateTime), 38)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (50, N'1', N'1', 1, 1, 10, CAST(N'2023-06-21T18:00:35.627' AS DateTime), 39)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (51, N'1', N'1', 1, 1, 10, CAST(N'2023-06-22T13:22:54.977' AS DateTime), 42)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (52, N'1', N'1', 1, 2, 10, CAST(N'2023-06-22T13:22:54.990' AS DateTime), 42)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (53, N'1', N'1', 1, 4, 10, CAST(N'2023-06-22T13:22:54.997' AS DateTime), 42)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (54, N'1', N'1', 1, 10, 10, CAST(N'2023-06-24T20:30:57.017' AS DateTime), 52)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (55, N'1', N'1', 1, 11, 10, CAST(N'2023-06-24T20:30:57.077' AS DateTime), 52)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (56, N'1', N'1', 1, 10, 10, CAST(N'2023-06-24T20:37:36.687' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (57, N'1', N'1', 1, 11, 10, CAST(N'2023-06-24T20:37:36.737' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (58, N'1', N'1', 1, 12, 10, CAST(N'2023-06-24T20:37:36.773' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (59, N'1', N'1', 1, 13, 10, CAST(N'2023-06-24T20:37:36.813' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (60, N'1', N'1', 1, 14, 10, CAST(N'2023-06-24T20:37:36.857' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (61, N'1', N'1', 2, 10, 10, CAST(N'2023-06-25T11:35:51.740' AS DateTime), 54)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (62, N'1', N'1', 2, 11, 10, CAST(N'2023-06-25T11:35:51.763' AS DateTime), 54)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (63, N'1', N'1', 2, 10, 11, CAST(N'2023-07-14T08:55:18.627' AS DateTime), 58)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (64, N'1', N'1', 2, 11, 11, CAST(N'2023-07-14T08:55:18.667' AS DateTime), 58)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (65, N'1', N'1', 1, 11, 11, CAST(N'2023-07-14T08:57:49.780' AS DateTime), 59)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (66, N'1', N'1', 1, 14, 11, CAST(N'2023-07-14T08:59:54.467' AS DateTime), 60)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (67, N'1', N'1', NULL, 10, 11, CAST(N'2023-08-11T11:00:59.177' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (68, N'1', N'1', NULL, 11, 11, CAST(N'2023-08-11T11:01:12.740' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (69, N'1', N'1', NULL, 12, 11, CAST(N'2023-08-11T11:01:18.820' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (70, N'1', N'1', NULL, 13, 11, CAST(N'2023-08-11T11:01:20.257' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (71, N'1', N'1', NULL, 14, 11, CAST(N'2023-08-11T11:01:21.697' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (72, N'1', N'1', NULL, 15, 11, CAST(N'2023-08-11T11:01:22.880' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (73, N'1', N'1', NULL, 16, 11, CAST(N'2023-08-11T11:01:23.867' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (74, N'1', N'1', NULL, 17, 11, CAST(N'2023-08-11T11:01:24.637' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (75, N'1', N'1', NULL, 18, 11, CAST(N'2023-08-11T11:01:25.333' AS DateTime), 66)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (76, N'1', N'1', NULL, 10, 11, CAST(N'2023-08-11T11:06:58.777' AS DateTime), 68)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (77, N'1', N'1', NULL, 17, 10, CAST(N'2023-08-11T11:11:11.530' AS DateTime), 69)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (78, N'1', N'1', NULL, 10, 10, CAST(N'2023-08-13T16:12:05.067' AS DateTime), 71)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (79, N'1', N'1', NULL, 10, 10, CAST(N'2023-08-13T16:14:30.453' AS DateTime), 72)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (80, N'1', N'1', NULL, 10, 11, CAST(N'2023-08-13T16:19:57.667' AS DateTime), 73)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (81, N'1', N'1', NULL, 11, 11, CAST(N'2023-08-13T16:19:57.693' AS DateTime), 73)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (82, N'1', N'1', NULL, 12, 11, CAST(N'2023-08-13T16:19:57.707' AS DateTime), 73)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (83, N'1', N'1', NULL, 10, 11, CAST(N'2023-08-13T16:25:35.147' AS DateTime), 74)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (84, N'1', N'1', NULL, 11, 11, CAST(N'2023-08-13T16:25:35.170' AS DateTime), 74)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (85, N'1', N'1', NULL, 10, 12, CAST(N'2023-08-13T16:44:17.757' AS DateTime), 76)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (86, N'1', N'1', NULL, 10, 12, CAST(N'2023-08-13T17:12:42.243' AS DateTime), 77)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (87, N'1', N'1', NULL, 11, 12, CAST(N'2023-08-13T17:12:42.260' AS DateTime), 77)
SET IDENTITY_INSERT [dbo].[BookingFood] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingLight] ON 

INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (1, N'1', 1, 1, 1, CAST(N'2016-05-10T09:52:17.343' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (2, N'1', 1, 24, 1, CAST(N'2017-07-19T09:50:15.410' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (3, N'1', 1, 1, 1, CAST(N'2017-07-21T10:10:51.507' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (4, N'1', 1, 30, 1, CAST(N'2017-07-21T10:19:59.743' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (5, N'1', 1, 31, 1, CAST(N'2017-07-21T10:39:23.447' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (6, N'1', 1, 32, 1, CAST(N'2017-07-22T14:00:09.803' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (7, N'1', 2, 32, 1, CAST(N'2017-07-22T14:00:09.967' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (8, N'2', 1, 33, 1, CAST(N'2017-07-22T16:19:51.680' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (9, N'2', 1, 34, 1, CAST(N'2017-07-23T10:27:58.413' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (10, N'2', 1, 35, 1, CAST(N'2017-07-25T09:26:43.507' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (11, N'2', 2, 35, 1, CAST(N'2017-07-25T09:26:43.573' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (12, N'1', 1, 36, 1, CAST(N'2017-09-03T14:28:33.827' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (13, N'2', 1, 37, 1, CAST(N'2017-10-15T19:07:09.107' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (14, N'2', 2, 37, 1, CAST(N'2017-10-15T19:07:09.147' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (15, N'1', 1, 38, 10, CAST(N'2023-06-11T09:48:08.437' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (16, N'1', 1, 39, 10, CAST(N'2023-06-21T18:00:40.737' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (17, N'1', 1, 42, 10, CAST(N'2023-06-22T13:22:58.527' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (18, N'1', 1, 52, 10, CAST(N'2023-06-24T20:31:24.107' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (19, N'1', 1, 53, 10, CAST(N'2023-06-24T20:37:45.990' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (20, N'1', 2, 53, 10, CAST(N'2023-06-24T20:37:46.037' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (21, N'1', 1, 54, 10, CAST(N'2023-06-25T11:36:00.807' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (22, N'1', 2, 54, 10, CAST(N'2023-06-25T11:36:00.827' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (23, N'1', 1, 56, 10, CAST(N'2023-07-14T08:47:20.610' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (24, N'1', 1, 56, 10, CAST(N'2023-07-14T08:47:37.103' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (25, N'1', 2, 59, 11, CAST(N'2023-07-14T08:57:55.957' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (26, N'2', 1, 60, 11, CAST(N'2023-07-14T09:00:05.243' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (27, N'1', 1, 65, 11, CAST(N'2023-08-11T10:58:05.220' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (28, N'1', 1, 66, 11, CAST(N'2023-08-11T11:01:33.337' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (29, N'1', 1, 68, 11, CAST(N'2023-08-11T11:07:16.600' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (30, N'1', 2, 69, 10, CAST(N'2023-08-11T11:11:17.977' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (31, N'1', 1, 71, 10, CAST(N'2023-08-13T16:12:19.980' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (32, N'1', 1, 72, 10, CAST(N'2023-08-13T16:14:46.433' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (33, N'1', 1, 73, 11, CAST(N'2023-08-13T16:20:03.380' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (34, N'1', 1, 74, 11, CAST(N'2023-08-13T16:25:42.417' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (35, N'1', 2, 76, 12, CAST(N'2023-08-13T16:44:24.697' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (36, N'1', 1, 77, 12, CAST(N'2023-08-13T17:12:47.610' AS DateTime))
SET IDENTITY_INSERT [dbo].[BookingLight] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingVenue] ON 

INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (74, 6, 3, 10, 11, CAST(N'2023-08-13T16:25:13.107' AS DateTime), 74)
SET IDENTITY_INSERT [dbo].[BookingVenue] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (1, N'Kathmandu', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (2, N'Pokhara', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (3, N'Dharan', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (4, N'Biratnagar', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (5, N'Lalitpur', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (6, N'Bhaktapur', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (7, N'Janakpur', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (8, N'Dhangadi', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (9, N'Birgunj', 2)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (1, N'Nepal')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (2, N'China')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (3, N'USA')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (4, N'UK')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (5, N'Germany')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Dishtypes] ON 

INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (1, N'Newari')
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (2, N'Thakali')
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (3, N'American')
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (4, N'Nepali')
SET IDENTITY_INSERT [dbo].[Dishtypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (1, N'DJ', N'2011-10-15 - Wedding - Brito-Lopez - Flip''s Setup - 640x512x256.jpg', N'EquipmentImages/c1bf21d9-361e-400b-b706-eb2067bd6576.jpg', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 5000)
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (2, N'Speakers and Mike', N'speaker.png', N'EquipmentImages/6671822f-4a69-4aa5-a75f-a279328cf334.png', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 2000)
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (3, N'Micro', N'a9860b57-bc9a-4e2e-bdf7-d8ecb955e770.png', N'EquipmentImages/a9860b57-bc9a-4e2e-bdf7-d8ecb955e770.png', 2, CAST(N'2023-06-25T11:33:46.090' AS DateTime), 1111)
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (4, N'Firecrackers', N'4726221c-1422-414c-a8b1-4e11773ca714.jpg', N'EquipmentImages/4726221c-1422-414c-a8b1-4e11773ca714.jpg', 2, CAST(N'2023-08-13T16:58:45.527' AS DateTime), 5000)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (1, N'Marriage', N'1')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (2, N'FamilyFunction', N'2')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (3, N'Birthday Party', N'3')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (4, N'anniversary', N'4')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (5, N'FareWell Party', N'5')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (6, N'College Event', N'6')
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[Flower] ON 

INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (1, N'Orchids', N'Orchid.jpg', N'FlowerImages/70f41879-909d-45a8-a6d9-dba7bb33f0d6.jpg', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 3000)
INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (2, N'red wedding flower-bouquets', N'red-wedding-flower-bouquets-collection.jpg', N'FlowerImages/cbd90318-99e7-45c2-bddb-3a3e2089208f.jpg', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 3000)
SET IDENTITY_INSERT [dbo].[Flower] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (10, N'1', N'1', 1, N'Bara', N'3f34eb0c-a66a-4884-827e-038f198a1c3f.png', N'FoodImages/3f34eb0c-a66a-4884-827e-038f198a1c3f.png', 2, CAST(N'2023-06-23T17:04:16.843' AS DateTime), 100)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (11, N'2', N'1', 1, N'Choila', N'2f8ec231-35dc-44fc-be0b-a0c97fd182d5.jpg', N'FoodImages/2f8ec231-35dc-44fc-be0b-a0c97fd182d5.jpg', 2, CAST(N'2023-06-23T17:07:49.730' AS DateTime), 200)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (12, N'2', N'2', 2, N'Local Chicken', N'8ab6d119-6aea-449f-a8c4-3034fa06ab4f.png', N'FoodImages/8ab6d119-6aea-449f-a8c4-3034fa06ab4f.png', 2, CAST(N'2023-06-23T17:09:10.107' AS DateTime), 250)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (13, N'1', N'1', 3, N'French fries', N'3df0e172-21a5-4690-b8dd-8859e201a4f7.jpg', N'FoodImages/3df0e172-21a5-4690-b8dd-8859e201a4f7.jpg', 2, CAST(N'2023-06-23T17:09:50.620' AS DateTime), 100)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (14, N'2', N'2', 4, N'Roast Chicken', N'723b5c57-ac4e-4a80-a515-c9baccf126a4.png', N'FoodImages/723b5c57-ac4e-4a80-a515-c9baccf126a4.png', 2, CAST(N'2023-06-23T17:10:57.887' AS DateTime), 500)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (15, N'1', N'1', 4, N'Wantang', N'6b438f35-74de-4e90-8524-455a4e8dbc32.jpg', N'FoodImages/6b438f35-74de-4e90-8524-455a4e8dbc32.jpg', 2, CAST(N'2023-08-11T10:45:25.927' AS DateTime), 100)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (16, N'1', N'1', 4, N'Jeera Aalu Cauli', N'7707d002-28a1-45f2-b9db-b4f16ed5c739.png', N'FoodImages/7707d002-28a1-45f2-b9db-b4f16ed5c739.png', 2, CAST(N'2023-08-11T10:46:37.763' AS DateTime), 100)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (17, N'2', N'1', 4, N'Buff Chilly', N'7ecbe953-65d3-42c4-b877-f6962b4b3d04.jpg', N'FoodImages/7ecbe953-65d3-42c4-b877-f6962b4b3d04.jpg', 2, CAST(N'2023-08-11T10:47:31.093' AS DateTime), 500)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (18, N'1', N'1', 4, N'Badam Sadheko', N'ee2f31bc-dd57-4a1d-870f-4da778a44c49.png', N'FoodImages/ee2f31bc-dd57-4a1d-870f-4da778a44c49.png', 2, CAST(N'2023-08-11T10:48:35.993' AS DateTime), 100)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (19, N'1', N'1', 4, N'Pakauda', N'7bd13bd8-395e-4363-a087-19d030ee9997.png', N'FoodImages/7bd13bd8-395e-4363-a087-19d030ee9997.png', 2, CAST(N'2023-08-13T17:00:21.067' AS DateTime), 5000)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (20, N'2', N'1', 4, N'Small Pizza', N'cd8dc642-52cc-4706-9dc7-f0f0ac964cc4.png', N'FoodImages/cd8dc642-52cc-4706-9dc7-f0f0ac964cc4.png', 2, CAST(N'2023-08-13T17:01:22.117' AS DateTime), 500)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (21, N'1', N'1', 4, N'Mushroom Soup', N'0b75734a-1d15-4f4b-a162-7bf2022bf457.png', N'FoodImages/0b75734a-1d15-4f4b-a162-7bf2022bf457.png', 2, CAST(N'2023-08-13T17:02:34.280' AS DateTime), 400)
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[Light] ON 

INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (1, N'1', N'String Lights', N'string-lights-wedding.jpg', N'LightImages/0dfa03d5-2f9d-44f0-87ad-f07e0f0b7224.jpg', 2, CAST(N'2017-07-15T10:03:20.923' AS DateTime), 3000)
INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (2, N'2', N'Acqualina outdoor Lights', N'Acqualina-outdoor-wedding-lighting-12.jpg', N'LightImages/84a52172-2dae-43d3-ba8b-e6126ef7d248.jpg', 2, CAST(N'2017-07-15T10:03:20.923' AS DateTime), 5000)
SET IDENTITY_INSERT [dbo].[Light] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (1, N'Customer', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'Customer', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-11-11T00:00:00.000' AS DateTime), 2, CAST(N'2017-07-23T11:02:48.250' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (2, N'Admin', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'Admin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-11-11T00:00:00.000' AS DateTime), 1, CAST(N'2017-07-23T11:02:48.250' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (3, N'SuperAdmin', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'SuperAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-11-11T00:00:00.000' AS DateTime), 3, CAST(N'2017-07-23T11:02:48.250' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (4, N'Newadmin', N'Bandra', 2, 1, 1, N'9999999999', N'Newadmin@gmail.com', N'Newadmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1988-05-09T00:00:00.000' AS DateTime), 1, CAST(N'2017-07-23T11:02:48.250' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (8, N'Sai', N'sdfsdf', 5, 2, 1, N'9999999999', N'sdfsdf@gg.cin', N'Saineshwar', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-07-09T00:00:00.000' AS DateTime), 2, CAST(N'2017-07-23T11:02:48.250' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (9, N'sairock', N'pp', 1, 1, 1, N'9999999999', N'dd@gg.com', N'sairocks', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1973-07-03T00:00:00.000' AS DateTime), 2, CAST(N'2017-07-23T11:02:48.250' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (10, N'm', N'kk', 1, 1, 1, N'9818161501', N'm@gmail.com', N'mandira', N'aDgDmGOMLfK1TEND6ZoJ2g==', N'aDgDmGOMLfK1TEND6ZoJ2g==', N'F', CAST(N'2005-05-02T00:00:00.000' AS DateTime), 2, CAST(N'2023-06-09T21:20:09.983' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (11, N'Lalita', N'kathmandu', NULL, NULL, NULL, N'9888888888', N'lalita@gmail.com', N'lalita', N'aDgDmGOMLfK1TEND6ZoJ2g==', N'aDgDmGOMLfK1TEND6ZoJ2g==', N'F', CAST(N'2001-05-01T00:00:00.000' AS DateTime), 2, CAST(N'2023-07-14T08:54:24.997' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (12, N'Manish', NULL, NULL, NULL, NULL, N'8465132', N'm@gmail.com', N'manish', N'tttdoybuFsAnWJYAfwOUqg==', N'tttdoybuFsAnWJYAfwOUqg==', N'M', NULL, 2, CAST(N'2023-08-13T16:36:10.873' AS DateTime))
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (2, N'Users')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (3, N'SuperAdmin')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (4, N'Anonymous ')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (1, N'Bagmati', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (2, N'Gandaki', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (3, N'Lumbini', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (4, N'Karnali', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (5, N'Mahakali', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (6, N'Madesh Pradesh', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (7, N'Sudhar pachim', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (8, N'fff', 2)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (9, N'sds', 3)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (10, N'ed', 5)
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Venue] ON 

INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (1, N'Basundhara Banquet', N'5542df9d-6aee-4104-a39d-6ac16cc2f2dd.png', N'https://meeting.zuerich.com/sites/default/files/styles/1920_1244_focal_scale_crop/public/web_zurich_venue_gasthaus-albisguetli_pt_30745.jpg?h=1597416073', 1, CAST(N'2023-06-26T00:00:00.000' AS DateTime), CAST(N'2023-06-24T20:34:44.017' AS DateTime), 500000, N'Lainchaur')
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (2, N'Panas', N'6f6eec40-f250-482d-9be0-d91135571934.jpg', N'https://meeting.zuerich.com/sites/default/files/styles/1920_1244_focal_scale_crop/public/web_zurich_venue_gasthaus-albisguetli_pt_30745.jpg?h=1597416073', 2, NULL, CAST(N'2023-06-24T20:34:58.657' AS DateTime), 400000, N'Patan')
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (3, N'Sasa Banquet', N'86a01c21-53c2-43af-9542-634e028a482d.png', N'https://meeting.zuerich.com/sites/default/files/styles/1920_1244_focal_scale_crop/public/web_zurich_venue_gasthaus-albisguetli_pt_30745.jpg?h=1597416073', 2, NULL, CAST(N'2023-06-23T17:12:28.553' AS DateTime), 500000, N'Lalitpur')
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (4, N'Royal Bnaquet', N'b63ad83a-abe1-4041-98f8-0821b0c382a1.png', N'https://meeting.zuerich.com/sites/default/files/styles/1920_1244_focal_scale_crop/public/web_zurich_venue_gasthaus-albisguetli_pt_30745.jpg?h=1597416073', 2, NULL, CAST(N'2023-06-23T17:13:57.377' AS DateTime), 1000000, N'Smakhusi')
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (5, N'Smart Palace', N'c3fc2ae9-46d4-4ca8-aeae-289f5ab5705d.png', N'https://meeting.zuerich.com/sites/default/files/styles/1920_1244_focal_scale_crop/public/web_zurich_venue_gasthaus-albisguetli_pt_30745.jpg?h=1597416073', 2, NULL, CAST(N'2023-06-23T17:14:12.100' AS DateTime), 1500000, N'Tokha')
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (6, N'Taaj Palace', N'594d05ae-6f05-43e4-ab76-482284d75dcb.png', N'https://meeting.zuerich.com/sites/default/files/styles/1920_1244_focal_scale_crop/public/web_zurich_venue_gasthaus-albisguetli_pt_30745.jpg?h=1597416073', 2, NULL, CAST(N'2023-06-23T17:14:33.200' AS DateTime), 500000, N'Basundhara')
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (7, N'Kathmandu ', N'2cc70558-37e0-4db9-9c22-14fd48ebc687.png', N'https://meeting.zuerich.com/sites/default/files/styles/1920_1244_focal_scale_crop/public/web_zurich_venue_gasthaus-albisguetli_pt_30745.jpg?h=1597416073', 2, NULL, CAST(N'2023-06-25T11:33:17.137' AS DateTime), 5000000, N'Baluwatar')
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (9, N'Crystal ', N'99ddfadd-87e6-42bc-8905-db8a6dcfb89b.png', N'VenueImages/99ddfadd-87e6-42bc-8905-db8a6dcfb89b.png', 2, NULL, CAST(N'2023-08-13T16:53:58.663' AS DateTime), 400000, NULL)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (10, N'Vatika ', N'92ba059a-3583-474e-bcba-5fa93e00cda0.png', N'VenueImages/92ba059a-3583-474e-bcba-5fa93e00cda0.png', 2, NULL, CAST(N'2023-08-13T16:54:31.273' AS DateTime), 800000, NULL)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (11, N'Best Venue', N'4da37311-adc7-49a2-aa9c-bc40a72081c5.png', N'VenueImages/4da37311-adc7-49a2-aa9c-bc40a72081c5.png', 2, NULL, CAST(N'2023-08-13T16:55:00.720' AS DateTime), 900000, NULL)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Availabledate], [Createdate], [VenueCost], [Location]) VALUES (12, N'Samrat', N'dd8ab7ac-fd89-4a2e-a826-7aaa1ca46ff7.png', N'VenueImages/dd8ab7ac-fd89-4a2e-a826-7aaa1ca46ff7.png', 2, NULL, CAST(N'2023-08-13T16:55:30.663' AS DateTime), 700000, NULL)
SET IDENTITY_INSERT [dbo].[Venue] OFF
GO
ALTER TABLE [dbo].[Equipment] ADD  CONSTRAINT [DF_Equipment_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Flower] ADD  CONSTRAINT [DF_Flower_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Food] ADD  CONSTRAINT [DF_Food_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Light] ADD  CONSTRAINT [DF_Light_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Venue] ADD  CONSTRAINT [DF_Venue_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
