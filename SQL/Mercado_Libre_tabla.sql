USE [MercadoLibre]
GO

/****** Object:  Table [dbo].[ProductosMercadoLibre]    Script Date: 13/05/2025 3:43:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductosMercadoLibre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](500) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Type] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[Rating] [nvarchar](10) NULL,
	[Reviews] [int] NULL,
	[Sold] [int] NULL,
	[FechaExtraccion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductosMercadoLibre] ADD  DEFAULT (getdate()) FOR [FechaExtraccion]
GO

