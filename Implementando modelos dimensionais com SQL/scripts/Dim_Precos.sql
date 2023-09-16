USE [OZZY_ESPM]
GO

/****** Object:  Table [dbo].[dim_Precos]    Script Date: 11/07/2018 12:34:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_Precos](
	[iCod_Busca] [bigint] NOT NULL,
	[iCod_Produto] [int] NOT NULL,
	[ncSabor] [nchar](20) NOT NULL,
	[ncEmbalagem] [nchar](15) NOT NULL,
	[nCusto] [numeric](18, 2) NOT NULL,
	[dDt_Atualizacao] [smalldatetime] NOT NULL,
	[dVigencia] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_dim_Precos] PRIMARY KEY CLUSTERED 
(
	[iCod_Produto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


