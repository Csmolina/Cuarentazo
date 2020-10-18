USE [BDD_Cuarenta]
GO

/****** Object:  Table [dbo].[Partida]    Script Date: 18/10/2020 11:47:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Partida](
	[ID_Partida] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Ganador] [bit] NOT NULL,
	[Puntaje] [int] NOT NULL,
	[Equipo] [bit] NOT NULL,
	[ID_Jugador] [int] NOT NULL,
 CONSTRAINT [PK_Partida] PRIMARY KEY CLUSTERED 
(
	[ID_Partida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Partida]  WITH CHECK ADD  CONSTRAINT [FK_Partida_Usuario] FOREIGN KEY([ID_Jugador])
REFERENCES [dbo].[Usuario] ([ID_Usuario])
GO

ALTER TABLE [dbo].[Partida] CHECK CONSTRAINT [FK_Partida_Usuario]
GO

