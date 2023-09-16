USE [OZZY_ESPM]
GO

/****** 

periodo mudei para periodo de horarios e nao de datas

 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Periodo](
	[iCod_Periodo] [bigint] NOT NULL,
	[tInicio] [time](7) NOT NULL,
	[tFim] [time](7) NOT NULL,
 CONSTRAINT [PK_Dim_Periodo] PRIMARY KEY CLUSTERED 
(
	[iCod_Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


