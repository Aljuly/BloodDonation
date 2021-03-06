USE [BloodDonationDB]
GO
/****** Object:  Table [dbo].[BloodType]    Script Date: 04.05.2018 17:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BloodType](
	[Kod] [int] NOT NULL,
	[BloodType] [char](4) NOT NULL,
 CONSTRAINT [PK_BloodType] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Donor]    Script Date: 04.05.2018 17:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Donor](
	[Kod] [int] NOT NULL,
	[DonorID] [char](10) NOT NULL,
	[FirstName] [nvarchar](15) NULL,
	[LastName] [nvarchar](15) NULL,
	[Address] [nvarchar](20) NULL,
	[City] [nvarchar](20) NULL,
	[ContactPhone] [nvarchar](10) NULL,
	[DateOfBirth] [date] NULL,
	[Gernder] [char](1) NULL,
	[BloodType] [int] NOT NULL,
	[ICNumber] [nvarchar](14) NOT NULL,
 CONSTRAINT [PK_Donor] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 04.05.2018 17:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hospital](
	[Kod] [int] NOT NULL,
	[HospitalID] [char](10) NOT NULL,
	[HospitalName] [nvarchar](20) NULL,
	[HospitalAddress] [nvarchar](20) NULL,
	[HospitalRegion] [nvarchar](20) NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IncomingTransaction]    Script Date: 04.05.2018 17:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IncomingTransaction](
	[Kod] [int] NOT NULL,
	[IncomingID] [char](10) NOT NULL,
	[DonorKod] [int] NOT NULL,
	[BloodType] [int] NOT NULL,
	[Quantity] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_IncomingTransaction] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OutgoingTransaction]    Script Date: 04.05.2018 17:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OutgoingTransaction](
	[Kod] [int] NOT NULL,
	[OutgoingID] [char](10) NOT NULL,
	[Quantity] [float] NOT NULL,
	[IncomingKod] [int] NOT NULL,
	[BloodType] [int] NOT NULL,
	[HospitalKod] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_OutgoingTransaction] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 04.05.2018 17:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[kod] [int] NOT NULL,
	[StaffID] [char](7) NOT NULL,
	[HospitalKod] [int] NOT NULL,
	[Address] [nvarchar](20) NULL,
	[City] [nvarchar](20) NULL,
	[FirstName] [nvarchar](15) NULL,
	[LastName] [nvarchar](15) NULL,
	[ContactPhone] [nvarchar](10) NULL,
	[Gender] [char](1) NOT NULL,
	[ICNumber] [nvarchar](50) NULL,
	[Role] [char](1) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Donor]  WITH CHECK ADD  CONSTRAINT [FK_Donor_BloodType] FOREIGN KEY([BloodType])
REFERENCES [dbo].[BloodType] ([Kod])
GO
ALTER TABLE [dbo].[Donor] CHECK CONSTRAINT [FK_Donor_BloodType]
GO
ALTER TABLE [dbo].[IncomingTransaction]  WITH CHECK ADD  CONSTRAINT [FK_IncomingTransaction_BloodType] FOREIGN KEY([BloodType])
REFERENCES [dbo].[BloodType] ([Kod])
GO
ALTER TABLE [dbo].[IncomingTransaction] CHECK CONSTRAINT [FK_IncomingTransaction_BloodType]
GO
ALTER TABLE [dbo].[IncomingTransaction]  WITH CHECK ADD  CONSTRAINT [FK_IncomingTransaction_Donor] FOREIGN KEY([DonorKod])
REFERENCES [dbo].[Donor] ([Kod])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IncomingTransaction] CHECK CONSTRAINT [FK_IncomingTransaction_Donor]
GO
ALTER TABLE [dbo].[OutgoingTransaction]  WITH CHECK ADD  CONSTRAINT [FK_OutgoingTransaction_BloodType] FOREIGN KEY([BloodType])
REFERENCES [dbo].[BloodType] ([Kod])
GO
ALTER TABLE [dbo].[OutgoingTransaction] CHECK CONSTRAINT [FK_OutgoingTransaction_BloodType]
GO
ALTER TABLE [dbo].[OutgoingTransaction]  WITH CHECK ADD  CONSTRAINT [FK_OutgoingTransaction_Hospital] FOREIGN KEY([HospitalKod])
REFERENCES [dbo].[Hospital] ([Kod])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OutgoingTransaction] CHECK CONSTRAINT [FK_OutgoingTransaction_Hospital]
GO
ALTER TABLE [dbo].[OutgoingTransaction]  WITH CHECK ADD  CONSTRAINT [FK_OutgoingTransaction_IncomingTransaction] FOREIGN KEY([IncomingKod])
REFERENCES [dbo].[IncomingTransaction] ([Kod])
GO
ALTER TABLE [dbo].[OutgoingTransaction] CHECK CONSTRAINT [FK_OutgoingTransaction_IncomingTransaction]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Hospital] FOREIGN KEY([HospitalKod])
REFERENCES [dbo].[Hospital] ([Kod])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Hospital]
GO
