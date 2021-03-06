USE [StudentDB]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/26/2018 06:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Departmentid] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Departmentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/26/2018 06:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Studentid] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](100) NOT NULL,
	[Lastname] [nvarchar](80) NOT NULL,
	[Gender] [nvarchar](6) NOT NULL,
	[Birthdate] [datetime] NOT NULL,
	[Departmentid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Studentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Student__Departm__7F60ED59]    Script Date: 11/26/2018 06:24:53 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Departmentid])
REFERENCES [dbo].[Department] ([Departmentid])
GO
