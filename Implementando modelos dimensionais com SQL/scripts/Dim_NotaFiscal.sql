USE [OZZY_ESPM]
GO

/****** Object:  Table [dbo].[DIM_NotaFiscal]    Script Date: 11/07/2018 12:33:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_NotaFiscal](
	[iNumero_NF] [nvarchar](20) NOT NULL,
	[dNF_DataEmissao] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_DIM_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[iNumero_NF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


