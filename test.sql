USE [test]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 2017/12/16 14:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[AllAmount] [int] NOT NULL,
	[Available] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017/12/16 14:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [char](11) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([id], [BookName], [Author], [AllAmount], [Available]) VALUES (1, N'工科数学分析', N'科学出版社', 50, 50)
INSERT [dbo].[Books] ([id], [BookName], [Author], [AllAmount], [Available]) VALUES (2, N'C语言程序分析', N'谭永强', 50, 50)
INSERT [dbo].[Books] ([id], [BookName], [Author], [AllAmount], [Available]) VALUES (3, N'自由在高处', N'熊培云', 50, 50)
INSERT [dbo].[Books] ([id], [BookName], [Author], [AllAmount], [Available]) VALUES (4, N'C#从入门到入土', N'嘻嘻出版社', 50, 50)
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [UserName], [Password], [Phone]) VALUES (1, N'william', N'123456', N'18950157498')
INSERT [dbo].[Users] ([id], [UserName], [Password], [Phone]) VALUES (2, N'xiaoming', N'111111', N'11111111111')
SET IDENTITY_INSERT [dbo].[Users] OFF
