USE [OZZY_ESPM]
GO

/****** 
Dim_Datas com mais possibilidase de analise

iData	dData		iDia	iMes	iAno	iDu		iDuDecorridosAno	iDuRestanteAno	iDuDecorridosMes	iDuRestanteMes	iDuMes	iUltimoDuMes	iDuAnterior	iAnoMesAnterior	iSemana	iDiaSemana	vDiaSemana
180706	2018-07-06	6		7		2018	1		129					121				5					17				22		0				180705		201806			27		6			Sexta-feira
180707	2018-07-07	7		7		2018	0		129					121				5					17				22		0				180706		201806			27		7			Sábado
180708	2018-07-08	8		7		2018	0		129					121				5					17				22		0				180706		201806			28		1			Domingo
 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Dim_Datas](
	[iData] [int] NOT NULL,
	[dData] [date] NOT NULL,
	[iDia] [int] NOT NULL,
	[iMes] [int] NOT NULL,
	[iAno] [int] NOT NULL,
	[iDu] [int] NOT NULL,
	[iDuDecorridosAno] [int] NOT NULL,
	[iDuRestanteAno] [int] NOT NULL,
	[iDuDecorridosMes] [int] NOT NULL,
	[iDuRestanteMes] [int] NOT NULL,
	[iDuMes] [int] NOT NULL,
	[iUltimoDuMes] [int] NOT NULL,
	[iDuAnterior] [int] NOT NULL,
	[iAnoMesAnterior] [int] NOT NULL,
	[iSemana] [int] NOT NULL,
	[iDiaSemana] [int] NOT NULL,
	[vDiaSemana] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dim_Datas] PRIMARY KEY CLUSTERED 
(
	[dData] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


