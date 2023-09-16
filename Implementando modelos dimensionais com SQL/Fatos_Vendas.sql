USE [OZZY_ESPM]
GO

/****** 
Achei melhor colocar a iCod_Loja e cUF_Loja na tabela para ajudar na regionalização
iCod_Periodo eu mudei para intervalos de  horarios, como entre 08:00 e 11:00, 11:01 e 14:00 e assim por diante, para ser possivel definir quais horarios de maior movimento.
iCod_Empregado empregado que efetuou a venda, caso de atendimento mesa ou balcao campo cAtendimento
dData  a data da venda, imes e iDia da semana sendo domindo = 1, nao restinjo somente a final de semana 

 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fato_Vendas](
	[iCod_Produto] [int] NOT NULL,
	[iCod_Cliente] [bigint] NOT NULL,
	[iCod_Promocao] [bigint] NOT NULL,
	[iCod_Periodo] [bigint] NOT NULL,
	[iCod_Loja] [int] NOT NULL,
	[nQt_Vendida] [numeric](18, 0) NOT NULL,
	[nReceita] [numeric](18, 2) NOT NULL,
	[nCMV] [numeric](18, 2) NOT NULL,
	[nMargem] [numeric](18, 2) NOT NULL,
	[iNumero_NF] [nvarchar](20) NOT NULL,
	[iCod_Empregado] [bigint] NOT NULL,
	[cAtendimento] [nchar](15) NOT NULL,
	[dData] [date] NOT NULL,
	[iDiaSemana] [int] NOT NULL,
	[iCod_Venda] [int] NOT NULL,
	[iMes] [int] NOT NULL,
	[cUF_Loja] [nchar](2) NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_Dim_Clientes] FOREIGN KEY([iCod_Cliente])
REFERENCES [dbo].[Dim_Clientes] ([iCod_Cliente])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_Dim_Clientes]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_Dim_Datas1] FOREIGN KEY([dData])
REFERENCES [dbo].[Dim_Datas] ([dData])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_Dim_Datas1]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_DIM_Empregados] FOREIGN KEY([iCod_Empregado])
REFERENCES [dbo].[DIM_Empregados] ([iCod_Empregado])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_DIM_Empregados]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_Dim_Loja] FOREIGN KEY([iCod_Loja])
REFERENCES [dbo].[Dim_Loja] ([iCod_Loja])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_Dim_Loja]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_DIM_NotaFiscal] FOREIGN KEY([iNumero_NF])
REFERENCES [dbo].[DIM_NotaFiscal] ([iNumero_NF])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_DIM_NotaFiscal]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_Dim_Periodo] FOREIGN KEY([iCod_Periodo])
REFERENCES [dbo].[Dim_Periodo] ([iCod_Periodo])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_Dim_Periodo]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_dim_Precos] FOREIGN KEY([iCod_Produto])
REFERENCES [dbo].[dim_Precos] ([iCod_Produto])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_dim_Precos]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_Dim_Promocoes] FOREIGN KEY([iCod_Promocao])
REFERENCES [dbo].[Dim_Promocoes] ([iCod_Promocao])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_Dim_Promocoes]
GO

ALTER TABLE [dbo].[Fato_Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Fato_Vendas_Tbl_DiasUteis_2018] FOREIGN KEY([dData])
REFERENCES [dbo].[Tbl_DiasUteis_2018] ([dData])
GO

ALTER TABLE [dbo].[Fato_Vendas] CHECK CONSTRAINT [FK_Fato_Vendas_Tbl_DiasUteis_2018]
GO


