USE [OZZY_ESPM]
GO

/****** Object:  Table [dbo].[DIM_Empregados]    Script Date: 11/07/2018 12:33:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_Empregados](
	[iCod_Empregado] [bigint] NOT NULL,
	[cNome_Empregado] [nchar](50) NOT NULL,
	[dAdnissao] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_DIM_Empregados] PRIMARY KEY CLUSTERED 
(
	[iCod_Empregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


