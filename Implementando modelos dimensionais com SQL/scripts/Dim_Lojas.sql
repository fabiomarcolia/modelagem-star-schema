USE [OZZY_ESPM]
GO

/****** Object:  Table [dbo].[Dim_Loja]    Script Date: 11/07/2018 12:33:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Loja](
	[iCod_Loja] [int] NOT NULL,
	[cNomeLoja] [nchar](30) NOT NULL,
	[nTamanho] [numeric](18, 0) NOT NULL,
	[nQT_Funcionarios] [numeric](18, 0) NOT NULL,
	[nCEP] [numeric](8, 0) NULL,
	[cEndereco] [nchar](50) NULL,
	[nNumero] [numeric](6, 0) NULL,
	[cMunicipio] [nchar](30) NULL,
	[cEstado] [nchar](30) NULL,
	[cUF] [nchar](2) NULL,
	[cResponsavel] [nchar](10) NULL,
 CONSTRAINT [PK_Dim_Loja] PRIMARY KEY CLUSTERED 
(
	[iCod_Loja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


