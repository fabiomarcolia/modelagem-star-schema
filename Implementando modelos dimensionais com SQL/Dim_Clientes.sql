USE [OZZY_ESPM]
GO

/****** Object:  Table [dbo].[Dim_Clientes]    Script Date: 11/07/2018 12:32:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Clientes](
	[iCod_Cliente] [bigint] NOT NULL,
	[cNomeCliente] [nchar](50) NULL,
	[cEnd_Cliente] [nchar](50) NULL,
	[nNumero] [numeric](6, 0) NULL,
	[cMunicipio] [nchar](30) NULL,
	[cEstado] [nchar](30) NULL,
	[cUF] [nchar](2) NULL,
	[iCPF] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Dim_Clientes] PRIMARY KEY CLUSTERED 
(
	[iCod_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


