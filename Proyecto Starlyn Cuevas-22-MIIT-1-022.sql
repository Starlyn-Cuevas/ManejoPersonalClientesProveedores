﻿
/* Nombre: Starlyn Cuevas. Matricula: 22-MIIT-1-022.  Seccion: 0541 */



USE [master]
GO
/****** Object:  Database [FerretechSCM]    Script Date: 11/08/2023 13:33:16 ******/
CREATE DATABASE [FerretechSCM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FerretechSCM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2023\MSSQL\DATA\FerretechSCM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FerretechSCM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2023\MSSQL\DATA\FerretechSCM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FerretechSCM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FerretechSCM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FerretechSCM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FerretechSCM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FerretechSCM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FerretechSCM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FerretechSCM] SET ARITHABORT OFF 
GO
ALTER DATABASE [FerretechSCM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FerretechSCM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FerretechSCM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FerretechSCM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FerretechSCM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FerretechSCM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FerretechSCM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FerretechSCM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FerretechSCM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FerretechSCM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FerretechSCM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FerretechSCM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FerretechSCM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FerretechSCM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FerretechSCM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FerretechSCM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FerretechSCM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FerretechSCM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FerretechSCM] SET  MULTI_USER 
GO
ALTER DATABASE [FerretechSCM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FerretechSCM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FerretechSCM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FerretechSCM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FerretechSCM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FerretechSCM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FerretechSCM] SET QUERY_STORE = ON
GO
ALTER DATABASE [FerretechSCM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FerretechSCM]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/08/2023 13:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[telefono] [varchar](13) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 11/08/2023 13:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Cedula] [varchar](15) NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](13) NULL,
	[Email] [varchar](50) NULL,
	[Cargo] [varchar](50) NULL,
	[Sueldo] [float] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Herramientas]    Script Date: 11/08/2023 13:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Herramientas](
	[HerramientasId] [int] NOT NULL,
	[Descripcion] [varchar](70) NULL,
	[Marca] [varchar](50) NULL,
	[Codigo] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[ProveedorId] [int] NULL,
	[Precio] [float] NULL,
 CONSTRAINT [PK_Herramientas] PRIMARY KEY CLUSTERED 
(
	[HerramientasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 11/08/2023 13:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[ProveedorId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](13) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[ProveedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 11/08/2023 13:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentasId] [int] NOT NULL,
	[HerramientasId] [int] NULL,
	[Cantidad] [int] NULL,
	[ClientesId] [int] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[VentasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (1, N'Maria Acosta', N'8096578374', N'Mariaaaa@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (2, N'Jose Alberto Reyes ', N'8290390934', N'Joser@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (3, N'Starlyn Maleno', N'8095557345', N'starlynstn23@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (4, N'Felo Martinez', N'8498990976', N'felom@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (5, N'Elio Marte ', N'8290983476', N'marte@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (6, N'Lina Galvan', N'8093427643', N'Lgalvan12@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (7, N'Juliana Pineda', N'8490099033', N'juli2@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (8, N'Sandy Mateo', N'8295565675', N'Sandy12@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (9, N'Enrriquez Martinez', N'8298098976', N'enrriq4@gmail.com')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [telefono], [Email]) VALUES (10, N'Rebecca Pantoja', N'8098902341', N'RebeP@gmail.com')
GO
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (1, N'Maria Linarez ', N'402-4398324-5', N'F', N'8290984312', N'mariaLL@gmail.com', N'Administradora', 35000)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (2, N'Samuel Morrobel', N'002-2345678-2', N'M', N'8490897653', N'smorro2@.com', N'Despachador ', 16500)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (3, N'Franklin Rojas', N'002-4856231-8', N'M', N'8290098990', N'rojas13@gmail.com', N'Organizador', 16000)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (4, N'Moises Aquino', N'402-1256328-7', N'M', N'8298099078', N'Aquino19@gmail.com', N'Despachador', 16500)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (5, N'Orquidea Martinez', N'002-1342137-5', N'F', N'8291011203', N'orqui00@gmail.com', N'Secretaria', 21000)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (6, N'Ramon Maleno', N'002-8756240-9', N'M', N'8490099080', N'malenop@gmail.com', N'Contable', 32000)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (7, N'Kenia Pallano', N'402-8945278-9', N'F', N'8296598451', N'kENIA23@gmail.com', N'Conserje', 12000)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (8, N'Kevin Rodrihuez', N'402-2544690-0', N'M', N'8098900234', N'kpalla@gmail.com', N'Chofer', 20000)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (9, N'Elva Correa ', N'002-9873451-1', N'F', N'8095682123', N'correael7@gmail.com', N'Cajera', 18000)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Sexo], [Telefono], [Email], [Cargo], [Sueldo]) VALUES (10, N'Celainny Reyes', N'002-8954216-9', N'F', N'8490090230', N'celainnyr@gmail.com', N'Encargada de almacen', NULL)
GO
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (1, N'Maquina soldarora 220', N'TOTAL', N'223FD9', 20, 1, 9000)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (2, N'Taladro ', N'HILTI', N'S34D45', 30, 2, 7500)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (3, N'Pulidora', N'INCO', N'24D5R5', 30, 3, 7000)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (4, N'Martillo de Metal', N'TRUPER', N'EW456T', 50, 4, 250)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (5, N'Martillo de Goma ', N'TOTAL', N'24ER5F', 50, 5, 200)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (6, N'Electrodos ', N'ELECTRIC', N'24RFD3', 100, 6, 1500)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (7, N'Juedo de llave allen', N'STANLEY', N'24RF56', 75, 7, 650)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (8, N'Router para madera', N'INCO', N'34RF43', 25, 8, 5000)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (9, N'Calibrador vernier 002', N'TRUPER', N'3433RF', 40, 9, 1200)
INSERT [dbo].[Herramientas] ([HerramientasId], [Descripcion], [Marca], [Codigo], [Cantidad], [ProveedorId], [Precio]) VALUES (10, N'Disco de corte de 15 pulgadas', N'INCO', N'E3436T', 300, 10, 250)
GO
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (1, N'Marcos Suriel', N'8298652021', N'marcoss@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (2, N'Virgilio Gonzales', N'8096589745', N'gonzalesv@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (3, N'Roberto Almansar ', N'8490020878', N'roberto123@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (4, N'Felix Rosa', N'8498970221', N'rosafelix90@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (5, N'Ruben Cuevas', N'8297852458', N'cuevasrr@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (6, N'Mariela Montero', N'8297898454', N'marim@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (7, N'Rolando Nuñes', N'8092657984', N'rolando56@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (8, N'Orlando Rodriguez', N'8298711411', N'orlandp@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (9, N'Alberto Mariñez', N'8298975423', N'mariñez.r@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorId], [Nombre], [Telefono], [Email]) VALUES (10, N'Julio Suncar', N'8490021113', N'jsuncar@gmail.com)
GO
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (2, 1, 4, 5)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (3, 4, 3, 5)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (4, 5, 6, 6)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (5, 2, 2, 8)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (6, 8, 5, 2)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (7, 9, 8, 3)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (8, 10, 4, 4)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (9, 3, 12, 10)
INSERT [dbo].[Ventas] ([VentasId], [HerramientasId], [Cantidad], [ClientesId]) VALUES (10, 2, 8, 1)
GO
ALTER TABLE [dbo].[Herramientas]  WITH CHECK ADD  CONSTRAINT [FK_Herramientas_Proveedores] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[Proveedores] ([ProveedorId])
GO
ALTER TABLE [dbo].[Herramientas] CHECK CONSTRAINT [FK_Herramientas_Proveedores]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([ClientesId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([VentasId])
REFERENCES [dbo].[Empleados] ([EmpleadosId])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Herramientas] FOREIGN KEY([HerramientasId])
REFERENCES [dbo].[Herramientas] ([HerramientasId])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Herramientas]
GO
USE [master]
GO
ALTER DATABASE [FerretechSCM] SET  READ_WRITE 
GO
