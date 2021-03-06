USE [master]
GO

IF EXISTS(select * from sys.databases where name='AutoSalon')
	DROP DATABASE [AutoSalon]
/****** Object:  Database [AutoSalon]    Script Date: 02-Apr-19 2:34:15 AM ******/

CREATE DATABASE [AutoSalon]
 
USE [AutoSalon]
GO
/****** Object:  Table [dbo].[Komentar]    Script Date: 02-Apr-19 2:34:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Komentar](
	[Id] [bigint] NOT NULL IDENTITY,
	[Tekst] [nvarchar](max) NOT NULL,
	[IdModela] [bigint] NOT NULL,
	[IdKorisnika] [bigint] NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Komentar] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Korisnik]    Script Date: 02-Apr-19 2:34:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnik](
	[Id] [bigint] NOT NULL IDENTITY,
	[KorisnickoIme] [nvarchar](30) NOT NULL,
	[Lozinka] [nvarchar](30) NOT NULL,
	[Ime] [nvarchar](30) NOT NULL,
	[Prezime] [nvarchar](30) NOT NULL,
	[Tip] [nvarchar](15) NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Korisnik] PRIMARY KEY NONCLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Model]    Script Date: 02-Apr-19 2:34:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [bigint] NOT NULL IDENTITY,
	[NazivModela] [nvarchar](30) NOT NULL,
	[Motor] [int] NOT NULL,
	[Snaga] [int] NOT NULL,
	[MaksimalnaBrzina] [int] NOT NULL,
	[ProsecnaPotrosnja] [float] NOT NULL,
	[Slika] [nvarchar](max) NOT NULL,
	[Tip] [nvarchar](15) NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
	[ProsecnaOcena] [float] NOT NULL,
	[IdProizvodjaca] [bigint] NOT NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ocena]    Script Date: 02-Apr-19 2:34:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ocena](
	[Id] [bigint] NOT NULL IDENTITY,
	[IdModela] [bigint] NOT NULL,
	[IdKorisnika] [bigint] NOT NULL,
	[Vrednost] [int] NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Ocena] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proizvodjac]    Script Date: 02-Apr-19 2:34:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvodjac](
	[Id] [bigint] NOT NULL IDENTITY,
	[NazivProizvodjaca] [nvarchar](30) NOT NULL,
	[Tip] [nvarchar](15) NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Proizvodjac] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Komentar]  WITH CHECK ADD  CONSTRAINT [FK_Komentar_Korisnik] FOREIGN KEY([IdKorisnika])
REFERENCES [dbo].[Korisnik] ([Id])
GO
ALTER TABLE [dbo].[Komentar] CHECK CONSTRAINT [FK_Komentar_Korisnik]
GO
ALTER TABLE [dbo].[Komentar]  WITH CHECK ADD  CONSTRAINT [FK_Komentar_Model] FOREIGN KEY([IdModela])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Komentar] CHECK CONSTRAINT [FK_Komentar_Model]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Proizvodjac] FOREIGN KEY([IdProizvodjaca])
REFERENCES [dbo].[Proizvodjac] ([Id])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Proizvodjac]
GO
ALTER TABLE [dbo].[Ocena]  WITH CHECK ADD  CONSTRAINT [FK_Ocena_Korisnik] FOREIGN KEY([IdKorisnika])
REFERENCES [dbo].[Korisnik] ([Id])
GO
ALTER TABLE [dbo].[Ocena] CHECK CONSTRAINT [FK_Ocena_Korisnik]
GO
ALTER TABLE [dbo].[Ocena]  WITH CHECK ADD  CONSTRAINT [FK_Ocena_Model] FOREIGN KEY([IdModela])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Ocena] CHECK CONSTRAINT [FK_Ocena_Model]
GO
USE [master]
GO
ALTER DATABASE [AutoSalon] SET  READ_WRITE 
GO
