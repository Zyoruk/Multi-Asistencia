USE [multi_asistencia]
GO
/****** Object:  Table [dbo].[cliente_por_poliza]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente_por_poliza](
	[idclientes] [int] NOT NULL,
	[idpoliza] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idclientes] ASC,
	[idpoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clientes]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[idclientes] [int] NOT NULL,
	[idcredenciales] [int] NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[tipo_usuario] [int] NOT NULL,
	[primer_apellido] [varchar](20) NULL,
	[segundo_apellido] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idclientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cobertura]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cobertura](
	[idcobertura] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcobertura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cobertura_por_poliza]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cobertura_por_poliza](
	[idpoliza] [int] NOT NULL,
	[idcobertura] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpoliza] ASC,
	[idcobertura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contacto]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contacto](
	[idcontacto] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcontacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contacto_por_servicio]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacto_por_servicio](
	[idcontacto] [int] NOT NULL,
	[idservicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcontacto] ASC,
	[idservicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[credenciales]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[credenciales](
	[idcredenciales] [int] NOT NULL,
	[correo] [varchar](45) NOT NULL,
	[contrasena] [char](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcredenciales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[descripcion_cobertura]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[descripcion_cobertura](
	[iddescripcion_cobertura] [int] NOT NULL,
	[idcobertura] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddescripcion_cobertura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[descripcion_servicio]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[descripcion_servicio](
	[iddescripcion_servicio] [int] NOT NULL,
	[idservicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddescripcion_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movimiento]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimiento](
	[id] [int] NOT NULL,
	[idclient] [int] NOT NULL,
	[idpoliza] [int] NOT NULL,
	[descripcion] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[poliza]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[poliza](
	[idpoliza] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idpoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[servicio]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[servicio](
	[idservicio] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idservicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[servicio_por_cobertura]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicio_por_cobertura](
	[idcobertura] [int] NOT NULL,
	[idservicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcobertura] ASC,
	[idservicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_usuario]    Script Date: 06/12/2018 13:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_usuario](
	[idtipo_usuario] [int] NOT NULL,
	[nombre] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtipo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[cliente_por_poliza]  WITH CHECK ADD  CONSTRAINT [fk_cliente_por_poliza_1] FOREIGN KEY([idclientes])
REFERENCES [dbo].[clientes] ([idclientes])
GO
ALTER TABLE [dbo].[cliente_por_poliza] CHECK CONSTRAINT [fk_cliente_por_poliza_1]
GO
ALTER TABLE [dbo].[cliente_por_poliza]  WITH CHECK ADD  CONSTRAINT [fk_cliente_por_poliza_2] FOREIGN KEY([idpoliza])
REFERENCES [dbo].[poliza] ([idpoliza])
GO
ALTER TABLE [dbo].[cliente_por_poliza] CHECK CONSTRAINT [fk_cliente_por_poliza_2]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [fk_clientes_1] FOREIGN KEY([idcredenciales])
REFERENCES [dbo].[credenciales] ([idcredenciales])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [fk_clientes_1]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [fk_clientes_2] FOREIGN KEY([tipo_usuario])
REFERENCES [dbo].[tipo_usuario] ([idtipo_usuario])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [fk_clientes_2]
GO
ALTER TABLE [dbo].[cobertura_por_poliza]  WITH CHECK ADD  CONSTRAINT [fk_cobertura_por_poliza_1] FOREIGN KEY([idpoliza])
REFERENCES [dbo].[poliza] ([idpoliza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cobertura_por_poliza] CHECK CONSTRAINT [fk_cobertura_por_poliza_1]
GO
ALTER TABLE [dbo].[cobertura_por_poliza]  WITH CHECK ADD  CONSTRAINT [fk_cobertura_por_poliza_2] FOREIGN KEY([idcobertura])
REFERENCES [dbo].[cobertura] ([idcobertura])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cobertura_por_poliza] CHECK CONSTRAINT [fk_cobertura_por_poliza_2]
GO
ALTER TABLE [dbo].[contacto_por_servicio]  WITH CHECK ADD  CONSTRAINT [fk_contacto_por_servicio_1] FOREIGN KEY([idcontacto])
REFERENCES [dbo].[contacto] ([idcontacto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[contacto_por_servicio] CHECK CONSTRAINT [fk_contacto_por_servicio_1]
GO
ALTER TABLE [dbo].[contacto_por_servicio]  WITH CHECK ADD  CONSTRAINT [fk_contacto_por_servicio_2] FOREIGN KEY([idservicio])
REFERENCES [dbo].[servicio] ([idservicio])
GO
ALTER TABLE [dbo].[contacto_por_servicio] CHECK CONSTRAINT [fk_contacto_por_servicio_2]
GO
ALTER TABLE [dbo].[descripcion_cobertura]  WITH CHECK ADD  CONSTRAINT [fk_descripcion_cobertura_1] FOREIGN KEY([idcobertura])
REFERENCES [dbo].[cobertura] ([idcobertura])
GO
ALTER TABLE [dbo].[descripcion_cobertura] CHECK CONSTRAINT [fk_descripcion_cobertura_1]
GO
ALTER TABLE [dbo].[descripcion_servicio]  WITH CHECK ADD  CONSTRAINT [fk_descripcion_servicio_1] FOREIGN KEY([idservicio])
REFERENCES [dbo].[servicio] ([idservicio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[descripcion_servicio] CHECK CONSTRAINT [fk_descripcion_servicio_1]
GO
ALTER TABLE [dbo].[movimiento]  WITH CHECK ADD  CONSTRAINT [FK_movimiento_clientes] FOREIGN KEY([idclient])
REFERENCES [dbo].[clientes] ([idclientes])
GO
ALTER TABLE [dbo].[movimiento] CHECK CONSTRAINT [FK_movimiento_clientes]
GO
ALTER TABLE [dbo].[movimiento]  WITH CHECK ADD  CONSTRAINT [FK_movimiento_poliza] FOREIGN KEY([idpoliza])
REFERENCES [dbo].[poliza] ([idpoliza])
GO
ALTER TABLE [dbo].[movimiento] CHECK CONSTRAINT [FK_movimiento_poliza]
GO
ALTER TABLE [dbo].[servicio_por_cobertura]  WITH CHECK ADD  CONSTRAINT [fk_servicio_por_cobertura_1] FOREIGN KEY([idservicio])
REFERENCES [dbo].[servicio] ([idservicio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[servicio_por_cobertura] CHECK CONSTRAINT [fk_servicio_por_cobertura_1]
GO
ALTER TABLE [dbo].[servicio_por_cobertura]  WITH CHECK ADD  CONSTRAINT [fk_servicio_por_cobertura_2] FOREIGN KEY([idcobertura])
REFERENCES [dbo].[cobertura] ([idcobertura])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[servicio_por_cobertura] CHECK CONSTRAINT [fk_servicio_por_cobertura_2]
GO
