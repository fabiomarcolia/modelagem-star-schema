USE [OZZY_ESPM]
GO

/****** Object:  Table [dbo].[Dim_Promocoes]    Script Date: 11/07/2018 12:34:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Promocoes](
	[iCod_Promocao] [bigint] NOT NULL,
	[cPromocao] [nchar](10) NOT NULL,
	[nDesconto] [numeric](3, 0) NOT NULL,
 CONSTRAINT [PK_Dim_Promocoes] PRIMARY KEY CLUSTERED 
(
	[iCod_Promocao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


