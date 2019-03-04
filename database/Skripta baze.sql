CREATE DATABASE [SALONAUTOMOBILA_2019]
GO
USE [SALONAUTOMOBILA_2019]
GO
CREATE TABLE [dbo].[MODEL](
	[IDModela] [nvarchar](10) NOT NULL PRIMARY KEY,
	[NazivModela] [nvarchar](100) NOT NULL,
	[Motor] [nvarchar](100) NOT NULL,
	[Boja] [nvarchar](100) NOT NULL,
	[SifraProizvodjaca] [nvarchar](10) NOT NULL
	
)
GO
CREATE TABLE [dbo].[PROIZVODJAC](
	[IDProizvodjaca] [nvarchar](10) NOT NULL PRIMARY KEY,
	[NazivProizvodjaca] [nvarchar](100) NOT NULL,
	[Tip] [nvarchar](100) NOT NULL
	
)
GO
ALTER TABLE [dbo].[MODEL] ADD CONSTRAINT
[FK_Model_Proizvodjac] FOREIGN KEY([SifraProizvodjaca])
REFERENCES [dbo].[PROIZVODJAC] ([IDProizvodjaca])
GO