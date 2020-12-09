USE [InforGasTienda]
GO

/****** Object:  Table [dbo].[CodigosCabys]    Script Date: 9/12/2020 04:50:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CodigosCabys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_categoria] [int] NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[Descripcion] [varchar](512) NOT NULL,
	[Impuesto] [decimal](18, 5) NOT NULL,
 CONSTRAINT [PK_CodigosCabys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CodigosCabys]  WITH CHECK ADD  CONSTRAINT [FK_CodigosCabys_CategoriasCabys] FOREIGN KEY([Id_categoria])
REFERENCES [dbo].[CategoriasCabys] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CodigosCabys] CHECK CONSTRAINT [FK_CodigosCabys_CategoriasCabys]
GO


