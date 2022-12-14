USE [master]
GO
/****** Object:  Database [obligatoriop3]    Script Date: 8/7/2022 16:24:12 ******/
CREATE DATABASE [obligatoriop3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'obligatoriop3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\obligatoriop3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'obligatoriop3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\obligatoriop3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [obligatoriop3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [obligatoriop3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [obligatoriop3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [obligatoriop3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [obligatoriop3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [obligatoriop3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [obligatoriop3] SET ARITHABORT OFF 
GO
ALTER DATABASE [obligatoriop3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [obligatoriop3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [obligatoriop3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [obligatoriop3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [obligatoriop3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [obligatoriop3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [obligatoriop3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [obligatoriop3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [obligatoriop3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [obligatoriop3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [obligatoriop3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [obligatoriop3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [obligatoriop3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [obligatoriop3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [obligatoriop3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [obligatoriop3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [obligatoriop3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [obligatoriop3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [obligatoriop3] SET  MULTI_USER 
GO
ALTER DATABASE [obligatoriop3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [obligatoriop3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [obligatoriop3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [obligatoriop3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [obligatoriop3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [obligatoriop3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [obligatoriop3] SET QUERY_STORE = OFF
GO
USE [obligatoriop3]
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[AdminCod] [int] IDENTITY(1,1) NOT NULL,
	[AdminNom] [varchar](20) NOT NULL,
	[AdminCI] [varchar](11) NOT NULL,
	[AdminTel] [varchar](9) NOT NULL,
	[AdminDir] [varchar](30) NOT NULL,
	[AdminMail] [varchar](30) NULL,
	[FchRegistro] [date] NOT NULL,
	[Contrasena] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[CliCod] [int] IDENTITY(1,1) NOT NULL,
	[CliNom] [varchar](20) NOT NULL,
	[CliCI] [varchar](11) NOT NULL,
	[CliTel] [varchar](9) NOT NULL,
	[CliDir] [varchar](30) NOT NULL,
	[CliMail] [varchar](30) NULL,
	[FchRegistro] [date] NOT NULL,
	[Contrasena] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CliCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes_Vehiculos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes_Vehiculos](
	[CliCod] [int] NOT NULL,
	[VehiculoMatricula] [varchar](8) NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CliCod] ASC,
	[VehiculoMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historial_Clientes_Vehiculos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial_Clientes_Vehiculos](
	[CliCod] [int] NOT NULL,
	[VehiculoCod] [int] NOT NULL,
	[FchCambio] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CliCod] ASC,
	[VehiculoCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mecanicos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mecanicos](
	[MecCod] [int] IDENTITY(1,1) NOT NULL,
	[MecNom] [varchar](20) NOT NULL,
	[MecCI] [varchar](11) NULL,
	[MecTel] [varchar](9) NULL,
	[MecFchIng] [date] NULL,
	[MecValorHora] [int] NULL,
	[MecActivo] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MecCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[RUT] [varchar](12) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Mail] [varchar](25) NULL,
	[Telefono] [varchar](9) NULL,
PRIMARY KEY CLUSTERED 
(
	[RUT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reparacion]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reparacion](
	[RepCod] [int] NOT NULL,
	[RepAnio] [int] NOT NULL,
	[Matricula] [varchar](8) NULL,
	[FchEntrada] [date] NOT NULL,
	[FchSalida] [date] NULL,
	[MecCod] [int] NOT NULL,
	[RepDscEntrada] [varchar](120) NULL,
	[RepDscSalida] [varchar](120) NULL,
	[KmsEntrada] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RepCod] ASC,
	[RepAnio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reparacion_horas]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reparacion_horas](
	[RepCod] [int] NOT NULL,
	[RepAnio] [int] NOT NULL,
	[MecCod] [int] NOT NULL,
	[Horas] [int] NULL,
	[CostoHora] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RepCod] ASC,
	[RepAnio] ASC,
	[MecCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reparacion_Repuestos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reparacion_Repuestos](
	[RepCod] [int] NOT NULL,
	[RepAnio] [int] NOT NULL,
	[RepuestoCod] [varchar](9) NOT NULL,
	[Cantidad] [int] NULL,
	[CostoUnitario] [numeric](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[RepCod] ASC,
	[RepAnio] ASC,
	[RepuestoCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repuestos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repuestos](
	[RepuestoCod] [varchar](9) NOT NULL,
	[RepuestoDsc] [varchar](30) NULL,
	[RepuestoCosto] [numeric](8, 2) NULL,
	[RepuestoTipo] [varchar](12) NULL,
	[ProveedorRUT] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[RepuestoCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[IdReserva] [int] IDENTITY(1,1) NOT NULL,
	[CliCod] [int] NULL,
	[Matricula] [varchar](8) NULL,
	[DescripcionProblema] [varchar](100) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Aceptado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[VehiculoCod] [int] IDENTITY(1,1) NOT NULL,
	[Matricula] [varchar](8) NOT NULL,
	[Marca] [varchar](20) NOT NULL,
	[Modelo] [varchar](20) NOT NULL,
	[Anio] [int] NOT NULL,
	[Color] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VehiculoCod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Administradores] ON 

INSERT [dbo].[Administradores] ([AdminCod], [AdminNom], [AdminCI], [AdminTel], [AdminDir], [AdminMail], [FchRegistro], [Contrasena]) VALUES (2, N'Santiago', N'2.542.214-4', N'098563218', N'Calle 2 194', N'santiagojavier@gmail.com', CAST(N'2022-06-20' AS Date), N'rockytobi103')
INSERT [dbo].[Administradores] ([AdminCod], [AdminNom], [AdminCI], [AdminTel], [AdminDir], [AdminMail], [FchRegistro], [Contrasena]) VALUES (3, N'Sergio', N'2.641.654-3', N'091513219', N'Don Bosco 411', N'sergiobr@gmail.com', CAST(N'2022-06-20' AS Date), N'molly19384')
INSERT [dbo].[Administradores] ([AdminCod], [AdminNom], [AdminCI], [AdminTel], [AdminDir], [AdminMail], [FchRegistro], [Contrasena]) VALUES (7, N'Carlos', N'3.492.751-1', N'094733335', N'Juana de Ibarborou 1712', N'carloshb@gmail.com', CAST(N'2022-07-02' AS Date), N'hormiga')
INSERT [dbo].[Administradores] ([AdminCod], [AdminNom], [AdminCI], [AdminTel], [AdminDir], [AdminMail], [FchRegistro], [Contrasena]) VALUES (9, N'Alex', N'3.541.674-1', N'098132657', N'Los Horneros S/N', N'alexgutierrez@gmail.com', CAST(N'2022-07-06' AS Date), N'gutialex2000')
INSERT [dbo].[Administradores] ([AdminCod], [AdminNom], [AdminCI], [AdminTel], [AdminDir], [AdminMail], [FchRegistro], [Contrasena]) VALUES (10, N'Nancy', N'2.856.394-1', N'098944910', N'Don Bosco 411', N'nancyc1971@gmail.com', CAST(N'2022-07-08' AS Date), N'cachi')
SET IDENTITY_INSERT [dbo].[Administradores] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena]) VALUES (1, N'Octavio', N'5.256.743-1', N'095478329', N'Los Horneros 320', N'octae3@gmail.com', CAST(N'2022-06-20' AS Date), N'sanji641')
INSERT [dbo].[Clientes] ([CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena]) VALUES (2, N'Augusto', N'4.952.221-5', N'098832154', N'Zapicán 32', N'augustobett@gmail.com', CAST(N'2022-06-20' AS Date), N'rufino265')
INSERT [dbo].[Clientes] ([CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena]) VALUES (3, N'Alex', N'5.621.081-2', N'094669832', N'Av Artigas 22', N'alexb2003@gmail.com', CAST(N'2022-06-20' AS Date), N'2003alexb')
INSERT [dbo].[Clientes] ([CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena]) VALUES (4, N'Juan Pedro', N'3.121.041-1', N'094677131', N'Don Bosco 330', N'juanpeema@gmail.com', CAST(N'2022-06-20' AS Date), N'jpe60421')
INSERT [dbo].[Clientes] ([CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena]) VALUES (13, N'Santiago', N'4.671.231-2', N'098744910', N'Calle 3 1712', N'sbart@gmail.com', CAST(N'2022-07-03' AS Date), N'santiagob123')
INSERT [dbo].[Clientes] ([CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena]) VALUES (14, N'Agusto Dario', N'3.123.324-8', N'094121391', N'José María Luaces 3', N'alexbesozzi@hotmail.com.uy', CAST(N'2022-07-07' AS Date), N'octavioteamo')
INSERT [dbo].[Clientes] ([CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena]) VALUES (15, N'Lucas', N'5.431.934-1', N'091776998', N'Av. Artigas 332', N'lucas@gmail.com', CAST(N'2022-07-08' AS Date), N'abcdefg')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
INSERT [dbo].[Clientes_Vehiculos] ([CliCod], [VehiculoMatricula], [Fecha]) VALUES (2, N'CBZ3201', CAST(N'2022-07-03' AS Date))
INSERT [dbo].[Clientes_Vehiculos] ([CliCod], [VehiculoMatricula], [Fecha]) VALUES (2, N'ZZZ7777', CAST(N'2022-07-03' AS Date))
INSERT [dbo].[Clientes_Vehiculos] ([CliCod], [VehiculoMatricula], [Fecha]) VALUES (13, N'AAA1234', CAST(N'2022-07-04' AS Date))
INSERT [dbo].[Clientes_Vehiculos] ([CliCod], [VehiculoMatricula], [Fecha]) VALUES (14, N'ALE1210', CAST(N'2022-07-07' AS Date))
INSERT [dbo].[Clientes_Vehiculos] ([CliCod], [VehiculoMatricula], [Fecha]) VALUES (15, N'CHZ5500', CAST(N'2022-07-08' AS Date))
GO
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (1, 2, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (2, 3, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (3, 4, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (4, 5, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (5, 6, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (6, 7, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (7, 8, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (8, 9, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (9, 10, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[Historial_Clientes_Vehiculos] ([CliCod], [VehiculoCod], [FchCambio]) VALUES (10, 1, CAST(N'2022-06-20' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Mecanicos] ON 

INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (1, N'Luís', N'2.546.234-1', N'094325412', CAST(N'2021-03-20' AS Date), 120, N'S')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (2, N'Juan', N'2.116.644-2', N'091315114', CAST(N'2020-02-06' AS Date), 140, N'S')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (3, N'Miguel', N'4.316.757-8', N'094442114', CAST(N'2021-11-23' AS Date), 120, N'N')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (4, N'Franco', N'5.121.853-6', N'098752124', CAST(N'2022-01-11' AS Date), 110, N'S')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (5, N'Agustín', N'5.062.273-1', N'099765461', CAST(N'2019-02-11' AS Date), 160, N'S')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (6, N'Elian', N'4.060.203-2', N'094419421', CAST(N'2017-12-29' AS Date), 160, N'N')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (7, N'Jose Luís', N'2.022.351-1', N'091123521', CAST(N'2018-06-21' AS Date), 140, N'N')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (8, N'Martín', N'3.313.052-5', N'094332142', CAST(N'2019-01-01' AS Date), 160, N'S')
INSERT [dbo].[Mecanicos] ([MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo]) VALUES (9, N'Pedro', N'2.277.071-1', N'098328189', CAST(N'2020-02-22' AS Date), 150, N'S')
SET IDENTITY_INSERT [dbo].[Mecanicos] OFF
GO
INSERT [dbo].[Proveedores] ([RUT], [Nombre], [Mail], [Telefono]) VALUES (N'107996566547', N'Castrol', N'contacto@castrol.com', N'095086751')
INSERT [dbo].[Proveedores] ([RUT], [Nombre], [Mail], [Telefono]) VALUES (N'314268355583', N'Motul', N'contacto@motul.com', N'099456011')
INSERT [dbo].[Proveedores] ([RUT], [Nombre], [Mail], [Telefono]) VALUES (N'417164307646', N'Roma Repuestos', N'romarepuestos@gmail.com', N'098777012')
INSERT [dbo].[Proveedores] ([RUT], [Nombre], [Mail], [Telefono]) VALUES (N'427584931021', N'Bartel Imp.', N'contacto@bartel.com', N'4586 7177')
INSERT [dbo].[Proveedores] ([RUT], [Nombre], [Mail], [Telefono]) VALUES (N'622531348186', N'Carmel Imp.', N'contact@carmel.com', N'091332453')
GO
INSERT [dbo].[Reparacion] ([RepCod], [RepAnio], [Matricula], [FchEntrada], [FchSalida], [MecCod], [RepDscEntrada], [RepDscSalida], [KmsEntrada]) VALUES (1, 2022, N'CBZ3201', CAST(N'2022-07-07' AS Date), CAST(N'2022-07-12' AS Date), 5, N'Holaaaaaaaa', N'Prueba 1', 12000)
INSERT [dbo].[Reparacion] ([RepCod], [RepAnio], [Matricula], [FchEntrada], [FchSalida], [MecCod], [RepDscEntrada], [RepDscSalida], [KmsEntrada]) VALUES (2, 2022, N'ZZZ7777', CAST(N'2022-07-19' AS Date), CAST(N'2022-07-21' AS Date), 4, N'Prueba 2', N'Prueba 2', 50000)
INSERT [dbo].[Reparacion] ([RepCod], [RepAnio], [Matricula], [FchEntrada], [FchSalida], [MecCod], [RepDscEntrada], [RepDscSalida], [KmsEntrada]) VALUES (3, 2022, N'AAA1234', CAST(N'2022-07-27' AS Date), CAST(N'2022-07-30' AS Date), 1, N'Prueba 3', N'Prueba 3', 40000)
INSERT [dbo].[Reparacion] ([RepCod], [RepAnio], [Matricula], [FchEntrada], [FchSalida], [MecCod], [RepDscEntrada], [RepDscSalida], [KmsEntrada]) VALUES (4, 2022, N'ZZZ7777', CAST(N'2022-07-11' AS Date), CAST(N'2022-07-13' AS Date), 5, N'Prueba 4', N'Prueba 4', 120654)
GO
INSERT [dbo].[Reparacion_horas] ([RepCod], [RepAnio], [MecCod], [Horas], [CostoHora]) VALUES (1, 2022, 5, 20, 160)
INSERT [dbo].[Reparacion_horas] ([RepCod], [RepAnio], [MecCod], [Horas], [CostoHora]) VALUES (2, 2022, 4, 10, 110)
INSERT [dbo].[Reparacion_horas] ([RepCod], [RepAnio], [MecCod], [Horas], [CostoHora]) VALUES (3, 2022, 1, 12, 120)
INSERT [dbo].[Reparacion_horas] ([RepCod], [RepAnio], [MecCod], [Horas], [CostoHora]) VALUES (4, 2022, 5, 13, 160)
GO
INSERT [dbo].[Reparacion_Repuestos] ([RepCod], [RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario]) VALUES (1, 2022, N'LUB400101', 1, CAST(3300.00 AS Numeric(8, 2)))
INSERT [dbo].[Reparacion_Repuestos] ([RepCod], [RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario]) VALUES (1, 2022, N'MOT200102', 1, CAST(9798.00 AS Numeric(8, 2)))
INSERT [dbo].[Reparacion_Repuestos] ([RepCod], [RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario]) VALUES (1, 2022, N'MOT200105', 5, CAST(2500.00 AS Numeric(8, 2)))
INSERT [dbo].[Reparacion_Repuestos] ([RepCod], [RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario]) VALUES (2, 2022, N'LUB400101', 4, CAST(3300.00 AS Numeric(8, 2)))
INSERT [dbo].[Reparacion_Repuestos] ([RepCod], [RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario]) VALUES (3, 2022, N'MOT200103', 4, CAST(520.50 AS Numeric(8, 2)))
INSERT [dbo].[Reparacion_Repuestos] ([RepCod], [RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario]) VALUES (4, 2022, N'MOT200101', 1, CAST(2300.00 AS Numeric(8, 2)))
GO
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'CAR300101', N'Neumático deportivo', CAST(2450.00 AS Numeric(8, 2)), N'Carroceria', N'417164307646')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'CAR300102', N'Parachoque delantero', CAST(1080.00 AS Numeric(8, 2)), N'Carroceria', N'427584931021')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'LUB400101', N'Aceite sintético Motul', CAST(3300.00 AS Numeric(8, 2)), N'Lubricación', N'314268355583')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'LUB400102', N'Aceite sintético Castrol', CAST(4120.00 AS Numeric(8, 2)), N'Lubricación', N'107996566547')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'MOT200101', N'Batería Bartl 90 amp', CAST(2300.00 AS Numeric(8, 2)), N'Motor', N'622531348186')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'MOT200102', N'Alternador con bomba de vacio', CAST(9798.00 AS Numeric(8, 2)), N'Motor', N'622531348186')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'MOT200103', N'Bujía de cobre', CAST(520.50 AS Numeric(8, 2)), N'Motor', N'417164307646')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'MOT200104', N'Bomba de Combustible', CAST(880.00 AS Numeric(8, 2)), N'Motor', N'622531348186')
INSERT [dbo].[Repuestos] ([RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT]) VALUES (N'MOT200105', N'Bomba de agua', CAST(2500.00 AS Numeric(8, 2)), N'Motor', N'417164307646')
GO
SET IDENTITY_INSERT [dbo].[Reservas] ON 

INSERT [dbo].[Reservas] ([IdReserva], [CliCod], [Matricula], [DescripcionProblema], [Fecha], [Aceptado]) VALUES (10, 15, N'CHZ5500', N'No arranca', CAST(N'2022-07-08' AS Date), N'S')
SET IDENTITY_INSERT [dbo].[Reservas] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehiculos] ON 

INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (1, N'CBZ3201', N'Fiat', N'Fiorino', 2003, N'Blanco')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (2, N'ABG3201', N'Ford', N'Focus', 2012, N'Azul')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (3, N'FGH3201', N'Ford', N'Fiesta', 2013, N'Blanco')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (4, N'CVD1134', N'BMW', N'i4', 2018, N'Amarillo')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (5, N'ABG3452 ', N'BMW', N'Serie 1', 2019, N'Azul')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (6, N'CVD1252 ', N'Audi', N'A3', 2014, N'Amarillo')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (7, N'CBZ3211 ', N'Audi', N'A8', 2015, N'Naranja')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (8, N'CBZ3242 ', N'Audi', N'TT', 2011, N'Rojo')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (9, N'FGH5545 ', N'Porsche', N'911', 2019, N'Naranja')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (10, N'FGH5664 ', N'Porsche', N'Taycan', 2019, N'Blanco')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (12, N'ZZZ7777', N'Ferrari', N'812', 2022, N'Rojo')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (13, N'AAA1234', N'Ford', N'Fiesta', 2008, N'Amarillo')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (14, N'ALE1210', N'Peugeot', N'Lumia', 2010, N'Rosado')
INSERT [dbo].[Vehiculos] ([VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color]) VALUES (17, N'CHZ5500', N'Peugeot', N'108', 2015, N'Azul')
SET IDENTITY_INSERT [dbo].[Vehiculos] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Administ__719E57A458A97F39]    Script Date: 8/7/2022 16:24:12 ******/
ALTER TABLE [dbo].[Administradores] ADD UNIQUE NONCLUSTERED 
(
	[AdminCI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Clientes__FA1DF9C9A9A8D53B]    Script Date: 8/7/2022 16:24:12 ******/
ALTER TABLE [dbo].[Clientes] ADD UNIQUE NONCLUSTERED 
(
	[CliCI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Mecanico__E440BF17572D4F61]    Script Date: 8/7/2022 16:24:12 ******/
ALTER TABLE [dbo].[Mecanicos] ADD UNIQUE NONCLUSTERED 
(
	[MecCI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Vehiculo__0FB9FB4F53E03B8D]    Script Date: 8/7/2022 16:24:12 ******/
ALTER TABLE [dbo].[Vehiculos] ADD UNIQUE NONCLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Administradores] ADD  DEFAULT (getdate()) FOR [FchRegistro]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT (getdate()) FOR [FchRegistro]
GO
ALTER TABLE [dbo].[Historial_Clientes_Vehiculos] ADD  DEFAULT (getdate()) FOR [FchCambio]
GO
ALTER TABLE [dbo].[Reparacion] ADD  DEFAULT (datepart(year,getdate())) FOR [RepAnio]
GO
ALTER TABLE [dbo].[Clientes_Vehiculos]  WITH CHECK ADD FOREIGN KEY([CliCod])
REFERENCES [dbo].[Clientes] ([CliCod])
GO
ALTER TABLE [dbo].[Clientes_Vehiculos]  WITH CHECK ADD FOREIGN KEY([VehiculoMatricula])
REFERENCES [dbo].[Vehiculos] ([Matricula])
GO
ALTER TABLE [dbo].[Reparacion]  WITH CHECK ADD FOREIGN KEY([Matricula])
REFERENCES [dbo].[Vehiculos] ([Matricula])
GO
ALTER TABLE [dbo].[Reparacion]  WITH CHECK ADD FOREIGN KEY([MecCod])
REFERENCES [dbo].[Mecanicos] ([MecCod])
GO
ALTER TABLE [dbo].[Reparacion_horas]  WITH CHECK ADD FOREIGN KEY([MecCod])
REFERENCES [dbo].[Mecanicos] ([MecCod])
GO
ALTER TABLE [dbo].[Reparacion_horas]  WITH CHECK ADD FOREIGN KEY([RepCod], [RepAnio])
REFERENCES [dbo].[Reparacion] ([RepCod], [RepAnio])
GO
ALTER TABLE [dbo].[Reparacion_Repuestos]  WITH CHECK ADD FOREIGN KEY([RepuestoCod])
REFERENCES [dbo].[Repuestos] ([RepuestoCod])
GO
ALTER TABLE [dbo].[Reparacion_Repuestos]  WITH CHECK ADD FOREIGN KEY([RepCod], [RepAnio])
REFERENCES [dbo].[Reparacion] ([RepCod], [RepAnio])
GO
ALTER TABLE [dbo].[Repuestos]  WITH CHECK ADD FOREIGN KEY([ProveedorRUT])
REFERENCES [dbo].[Proveedores] ([RUT])
GO
ALTER TABLE [dbo].[Administradores]  WITH CHECK ADD CHECK  (([AdminCI] like '[1-9][.][0-9][0-9][0-9][.][0-9][0-9][0-9][-][0-9]'))
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD CHECK  (([CliCI] like '[1-9][.][0-9][0-9][0-9][.][0-9][0-9][0-9][-][0-9]'))
GO
ALTER TABLE [dbo].[Mecanicos]  WITH CHECK ADD CHECK  (([MecActivo]='N' OR [MecActivo]='S'))
GO
ALTER TABLE [dbo].[Mecanicos]  WITH CHECK ADD CHECK  (([MecCI] like '[1-9][.][0-9][0-9][0-9][.][0-9][0-9][0-9][-][0-9]'))
GO
ALTER TABLE [dbo].[Mecanicos]  WITH CHECK ADD CHECK  (([MecValorHora]>(0)))
GO
ALTER TABLE [dbo].[Repuestos]  WITH CHECK ADD CHECK  (([RepuestoCod] like '[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Repuestos]  WITH CHECK ADD CHECK  (([RepuestoTipo]='Varios' OR [RepuestoTipo]='Lubricación' OR [RepuestoTipo]='Carroceria' OR [RepuestoTipo]='Motor'))
GO
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD CHECK  (([Anio]>=(1990)))
GO
/****** Object:  StoredProcedure [dbo].[AltaAdmin]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaAdmin]
	@AdminNom varchar(20),
	@AdminCI varchar(11),
	@AdminTel varchar(9),
	@AdminDir varchar(30),
	@AdminMail varchar(30),
	@Contrasena varchar(16)
AS
BEGIN

    INSERT INTO Administradores (AdminNom, AdminCI, AdminTel, AdminDir, AdminMail, Contrasena) VALUES (@AdminNom, @AdminCI, @AdminTel, @AdminDir, @AdminMail, @Contrasena)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaCliente]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaCliente]
	@CliNom varchar(20),
	@CliCI varchar(11),
	@CliTel varchar(9),
	@CliDir varchar(30),
	@CliMail varchar(30),
	@Contrasena varchar(16)
AS
BEGIN

    INSERT INTO Clientes (CliNom, CliCI, CliTel, CliDir, CliMail, Contrasena) VALUES (@CliNom, @CliCI, @CliTel, @CliDir, @CliMail, @Contrasena)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaClienteVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaClienteVehiculo]
	@CliCod int,
	@VehiculoMatricula varchar(8)
AS
BEGIN

    INSERT INTO Clientes_Vehiculos (CliCod, VehiculoMatricula, Fecha) VALUES (@CliCod, @VehiculoMatricula, GETDATE())
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaMecanico]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AltaMecanico]
	@MecNom varchar(20),
	@MecCI varchar(11),
	@MecTel varchar(9),
	@MecFchIng date,
	@MecValorHora int,
	@MecActivo varchar(1)
AS
BEGIN

    INSERT INTO Mecanicos (MecNom, MecCI, MecTel, MecFchIng, MecValorHora, MecActivo) VALUES (@MecNom, @MecCI, @MecTel, @MecFchIng, @MecValorHora, @MecActivo)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaProveedor]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaProveedor]
	@RUT varchar(12),
	@Nombre varchar(25),
	@Mail varchar(25),
	@Telefono varchar(9)
AS
BEGIN

    INSERT INTO Proveedores (RUT, Nombre, Mail, Telefono) VALUES (@RUT, @Nombre, @Mail, @Telefono)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaReparacion]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaReparacion]
	@RepCod int,
	@Matricula varchar(8),
	@FchEntrada date,
	@FchSalida date,
	@MecCod int,
	@RepDscEntrada varchar(120),
	@RepDscSalida varchar(120),
	@KmsEntrada numeric(8,2)
AS
BEGIN

    INSERT INTO Reparacion (RepCod, Matricula, FchEntrada, FchSalida, MecCod, RepDscEntrada, RepDscSalida, KmsEntrada) VALUES (@RepCod, @Matricula, @FchEntrada, @FchSalida, @MecCod, @RepDscEntrada, @RepDscSalida, @KmsEntrada)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaReparacionHoras]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AltaReparacionHoras]
	@RepCod int,
	@RepAnio int,
	@MecCod int,
	@Horas int,
	@CostoHora int
AS
BEGIN

    INSERT INTO Reparacion_horas(RepCod, RepAnio, MecCod, Horas, CostoHora) VALUES (@RepCod, @RepAnio, @MecCod, @Horas, @CostoHora)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaReparacionRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaReparacionRepuesto]
	@RepCod int,
	@RepAnio int,
	@RepuestoCod varchar(9),
	@Cantidad int,
	@CostoUnitario numeric(8,2)
AS
BEGIN

    INSERT INTO Reparacion_Repuestos(RepCod, RepAnio, RepuestoCod, Cantidad, CostoUnitario) VALUES (@RepCod, @RepAnio, @RepuestoCod, @Cantidad, @CostoUnitario)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AltaRepuesto]
	@RepuestoCod varchar(9),
	@RepuestoDsc varchar(30),
	@RepuestoCosto numeric(8,2),
	@RepuestoTipo varchar(12),
	@ProveedorRUT varchar(12)
AS
BEGIN

    INSERT INTO Repuestos (RepuestoCod, RepuestoDsc, RepuestoCosto, RepuestoTipo, ProveedorRUT) VALUES (@RepuestoCod, @RepuestoDsc, @RepuestoCosto, @RepuestoTipo, @ProveedorRUT)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaReserva]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaReserva]
	@CliCod int,
	@Matricula varchar(8),
	@DescripcionProblema varchar(100),
	@Fecha date,
	@Aceptado varchar(1)
AS
BEGIN

    INSERT INTO Reservas (CliCod, Matricula, DescripcionProblema, Fecha, Aceptado) VALUES (@CliCod, @Matricula, @DescripcionProblema, @Fecha, @Aceptado)
	
END
GO
/****** Object:  StoredProcedure [dbo].[AltaVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AltaVehiculo]
	@Matricula varchar(8),
	@Marca varchar(20),
	@Modelo varchar(20),
	@Anio int,
	@Color varchar(20)
AS
BEGIN

    INSERT INTO Vehiculos (Matricula, Marca, Modelo, Anio, Color) VALUES (@Matricula, @Marca, @Modelo, @Anio, @Color)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaAdmin]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaAdmin]
	@AdminCod int
AS
BEGIN

    DELETE FROM Administradores WHERE AdminCod=(@AdminCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaCliente]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaCliente]
	@CliCod int
AS
BEGIN

    DELETE FROM Clientes WHERE CliCod=(@CliCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaClienteVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaClienteVehiculo]
	@CliCod int,
	@VehiculoMatricula varchar(8)
AS
BEGIN

    DELETE FROM Clientes_Vehiculos WHERE CliCod = (@CliCod) AND VehiculoMatricula = (@VehiculoMatricula)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaMecanico]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaMecanico]
	@MecCod int
AS
BEGIN

    DELETE FROM Mecanicos WHERE MecCod = (@MecCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaProveedor]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaProveedor]
	@RUT varchar(12)
AS
BEGIN

    DELETE FROM Proveedores WHERE RUT=(@RUT)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaReparacion]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaReparacion]
	@RepCod int,
	@RepAnio int
AS
BEGIN

    DELETE FROM Reparacion WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaReparacionHoras]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BajaReparacionHoras]
	@RepCod int,
	@RepAnio int
AS
BEGIN

    DELETE FROM Reparacion_horas WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaReparacionRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BajaReparacionRepuesto]
	@RepCod int,
	@RepAnio int,
	@RepuestoCod varchar(9)
AS
BEGIN

    DELETE FROM Reparacion_Repuestos WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio) AND RepuestoCod = (@RepuestoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaRepuesto]
	@RepuestoCod varchar(9)
AS
BEGIN

    DELETE FROM Repuestos WHERE RepuestoCod = (@RepuestoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaReserva]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaReserva]
	@IdReserva int
AS
BEGIN

    DELETE FROM Reservas WHERE IdReserva = (@IdReserva)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BajaVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BajaVehiculo]
	@VehiculoCod int
AS
BEGIN

    DELETE FROM Vehiculos WHERE VehiculoCod = (@VehiculoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarAdmin]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarAdmin]
	@AdminCod int
AS
BEGIN

    SELECT [AdminCod] ,[AdminNom], [AdminCI], [AdminTel], [AdminDir], [AdminMail], [FchRegistro], [Contrasena] FROM Administradores WHERE AdminCod = (@AdminCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarAdminLogin]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarAdminLogin]
(@Cedula VARCHAR(11),
@Contrasena VARCHAR(16))
AS

SELECT
AdminCod, AdminCI, Contrasena
FROM Administradores
WHERE
(AdminCI = @Cedula) AND (Contrasena = @Contrasena);
GO
/****** Object:  StoredProcedure [dbo].[BuscarCliente]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarCliente]
	@CliCod int
AS
BEGIN

    SELECT [CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena] FROM Clientes WHERE CliCod = (@CliCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarClienteLogin]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarClienteLogin]
(@Cedula VARCHAR(11),
@Contrasena VARCHAR(16))
AS

SELECT
CliCod, CliCI, Contrasena
FROM Clientes
WHERE
(CliCI = @Cedula) AND (Contrasena = @Contrasena);
GO
/****** Object:  StoredProcedure [dbo].[BuscarClienteVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarClienteVehiculo]
	@CliCod int,
	@VehiculoMatricula varchar(8)
AS
BEGIN

    SELECT [CliCod], [VehiculoMatricula], [Fecha] FROM Clientes_Vehiculos WHERE CliCod = (@CliCod) AND VehiculoMatricula = (@VehiculoMatricula)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarMecanico]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarMecanico]
	@MecCod int
AS
BEGIN

    SELECT [MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo] FROM Mecanicos WHERE MecCod = (@MecCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarProveedor]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarProveedor]
	@RUT varchar(12)
AS
BEGIN

    SELECT [RUT], [Nombre], [Mail], [Telefono] FROM Proveedores WHERE RUT = (@RUT)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarReparacion]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarReparacion]
	@RepCod int,
	@RepAnio int
AS
BEGIN

    SELECT [RepCod], [RepAnio], [Matricula], [FchEntrada], [FchSalida], [MecCod], [RepDscEntrada], [RepDscSalida], [KmsEntrada] FROM Reparacion WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarReparacionHoras]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarReparacionHoras]
	@RepCod int,
	@RepAnio int
AS
BEGIN

    SELECT [RepCod], [RepAnio], [MecCod], [Horas], [CostoHora] FROM Reparacion_horas WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarReparacionRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarReparacionRepuesto]
	@RepCod int,
	@RepAnio int,
	@RepuestoCod varchar(9)
AS
BEGIN

    SELECT [RepCod] ,[RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario] FROM Reparacion_Repuestos WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio) AND RepuestoCod = (@RepuestoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarRepuesto]
	@RepuestoCod varchar(9)
AS
BEGIN

    SELECT [RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT] FROM Repuestos WHERE RepuestoCod = (@RepuestoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarReserva]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarReserva]
	@IdReserva int
AS
BEGIN

    SELECT [IdReserva], [CliCod], [Matricula], [DescripcionProblema], [Fecha], [Aceptado] FROM Reservas WHERE IdReserva = (@IdReserva)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarVehiculo]
	@VehiculoCod int
AS
BEGIN

    SELECT [VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color] FROM Vehiculos WHERE VehiculoCod = (@VehiculoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarVehiculoPorMatricula]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarVehiculoPorMatricula]
	@Matricula varchar(8)
AS
BEGIN

    SELECT [VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color] FROM Vehiculos WHERE Matricula = (@Matricula)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarAdmin]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ModificarAdmin]
	@AdminCod int,
	@AdminNom varchar(20),
	@AdminCI varchar(11),
	@AdminTel varchar(9),
	@AdminDir varchar(30),
	@AdminMail varchar(30),
	@Contrasena varchar(16)
AS
BEGIN

    UPDATE Administradores SET AdminNom = (@AdminNom), AdminCI = (@AdminCI), AdminTel = (@AdminTel), AdminDir = (@AdminDir), AdminMail = (@AdminMail), Contrasena = (@Contrasena) WHERE AdminCod=(@AdminCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarCliente]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ModificarCliente]
	@CliCod int,
	@CliNom varchar(20),
	@CliCI varchar(11),
	@CliTel varchar(9),
	@CliDir varchar(30),
	@CliMail varchar(30),
	@Contrasena varchar(16)
AS
BEGIN

    UPDATE Clientes SET CliNom = (@CliNom), CliCI = (@CliCI), CliTel = (@CliTel), CliDir = (@CliDir), CliMail = (@CliMail), Contrasena = (@Contrasena) WHERE CliCod=(@CliCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarClienteVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarClienteVehiculo]
	@CliCod int,
	@VehiculoMatricula varchar(8)
AS
BEGIN

    UPDATE Clientes_Vehiculos SET CliCod = (@CliCod), VehiculoMatricula = (@VehiculoMatricula) WHERE CliCod = (@CliCod) AND VehiculoMatricula = (@VehiculoMatricula)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarMecanico]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarMecanico]
	@MecCod int,
	@MecNom varchar(20),
	@MecCI varchar(11),
	@MecTel varchar(9),
	@MecFchIng date,
	@MecValorHora int,
	@MecActivo varchar(1)
AS
BEGIN

    UPDATE Mecanicos SET MecNom = (@MecNom), MecCI = (@MecCI), MecTel = (@MecTel), MecFchIng = (@MecFchIng), MecValorHora = (@MecValorHora), MecActivo = (@MecActivo) WHERE MecCod = (@MecCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarProveedor]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ModificarProveedor]
	@RUT varchar(12),
	@Nombre varchar(25),
	@Mail varchar(25),
	@Telefono varchar(9)
AS
BEGIN

    UPDATE Proveedores SET Nombre = (@Nombre), Mail = (@Mail), Telefono = (@Telefono) WHERE RUT=(@RUT)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarReparacion]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ModificarReparacion]
	@RepCod int,
	@RepAnio int,
	@Matricula varchar(8),
	@FchEntrada date,
	@FchSalida date,
	@MecCod int,
	@RepDscEntrada varchar(120),
	@RepDscSalida varchar(120),
	@KmsEntrada numeric(8,2)
AS
BEGIN

    UPDATE Reparacion SET Matricula = (@Matricula), FchEntrada = (@FchEntrada), FchSalida = (@FchSalida), MecCod = (@MecCod), RepDscEntrada = (@RepDscEntrada), RepDscSalida = (@RepDscSalida), KmsEntrada = (@KmsEntrada) WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarReparacionHoras]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarReparacionHoras]
	@RepCod int,
	@RepAnio int,
	@MecCod int,
	@Horas int,
	@CostoHora int
AS
BEGIN

    UPDATE Reparacion_horas SET RepCod = (@RepCod), RepAnio = (@RepAnio), MecCod = (@MecCod), Horas = (@Horas), CostoHora = (@CostoHora) WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarReparacionRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarReparacionRepuesto]
	@RepCod int,
	@RepAnio int,
	@RepuestoCod varchar(9),
	@Cantidad int,
	@CostoUnitario numeric(8,2)
AS
BEGIN

    UPDATE Reparacion_Repuestos SET RepCod = (@RepCod), RepAnio = (@RepAnio), RepuestoCod = (@RepuestoCod), Cantidad = (@Cantidad), CostoUnitario = (@CostoUnitario) WHERE RepCod = (@RepCod) AND RepAnio = (@RepAnio)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarRepuesto]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ModificarRepuesto]
	@RepuestoCod varchar(9),
	@RepuestoDsc varchar(30),
	@RepuestoCosto numeric(8,2),
	@RepuestoTipo varchar(12),
	@ProveedorRUT varchar(12)
AS
BEGIN

    UPDATE Repuestos SET RepuestoDsc = (@RepuestoDsc), RepuestoCosto = (@RepuestoCosto), RepuestoTipo = (@RepuestoTipo), ProveedorRUT = (@ProveedorRUT) WHERE RepuestoCod = (@RepuestoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarReserva]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ModificarReserva]
	@IdReserva int,
	@CliCod int,
	@Matricula varchar(8),
	@DescripcionProblema varchar(100),
	@Fecha date,
	@Aceptado varchar(1)
AS
BEGIN

    UPDATE Reservas SET CliCod = (@CliCod), Matricula = (@Matricula), DescripcionProblema = (@DescripcionProblema), Fecha = (@Fecha), Aceptado = (@Aceptado) WHERE IdReserva = (@IdReserva)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarVehiculo]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ModificarVehiculo]
	@VehiculoCod int,
	@Matricula varchar(8),
	@Marca varchar(20),
	@Modelo varchar(20),
	@Anio int,
	@Color varchar(20)
AS
BEGIN

    UPDATE Vehiculos SET Matricula = (@Matricula), Marca = (@Marca), Modelo = (@Modelo), Anio = (@Anio), Color = (@Color) WHERE VehiculoCod = (@VehiculoCod)
	
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerAdmin]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ObtenerAdmin]
AS
BEGIN

	SELECT [AdminCod] ,[AdminNom], [AdminCI], [AdminTel], [AdminDir], [AdminMail], [FchRegistro], [Contrasena] FROM Administradores

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerClientes]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerClientes]
AS
BEGIN

	SELECT [CliCod], [CliNom], [CliCI], [CliTel], [CliDir], [CliMail], [FchRegistro], [Contrasena] FROM Clientes

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerClientesVehiculos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerClientesVehiculos]
AS
BEGIN

	SELECT [CliCod], [VehiculoMatricula], [Fecha] FROM Clientes_Vehiculos

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerMecanicos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerMecanicos]
AS
BEGIN

	SELECT [MecCod], [MecNom], [MecCI], [MecTel], [MecFchIng], [MecValorHora], [MecActivo] FROM Mecanicos

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerProveedor]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerProveedor]
AS
BEGIN

	SELECT [RUT], [Nombre], [Mail], [Telefono] FROM Proveedores

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerReparaciones]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerReparaciones]
AS
BEGIN

	SELECT [RepCod], [RepAnio], [Matricula], [FchEntrada], [FchSalida], [MecCod], [RepDscEntrada], [RepDscSalida], [KmsEntrada] FROM Reparacion

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerReparacionesEntreFechas]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerReparacionesEntreFechas]
	@Fecha1 date,
	@Fecha2 date
AS
BEGIN

	SELECT c.[CliNom], v.[Matricula], r.[FchEntrada], SUM((rr.Cantidad * rr.CostoUnitario) + (rh.Horas * rh.CostoHora)) AS [CostoTotal] FROM Reparacion r
	INNER JOIN Clientes_Vehiculos cv ON r.Matricula = cv.VehiculoMatricula
	INNER JOIN Vehiculos v ON r.Matricula = v.Matricula
	INNER JOIN Clientes c ON cv.CliCod = c.CliCod
	INNER JOIN Reparacion_Repuestos rr ON r.RepCod = rr.RepCod AND r.RepAnio = rr.RepAnio
	INNER JOIN Reparacion_horas rh ON r.RepCod = rh.RepCod AND r.RepAnio = rh.RepAnio
	WHERE FchEntrada BETWEEN @Fecha1 AND @Fecha2
	GROUP BY c.CliNom, v.Matricula, r.FchEntrada
	ORDER BY CostoTotal desc

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerReparacionesPendientesEntreFechas]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerReparacionesPendientesEntreFechas]
	@Fecha1 date,
	@Fecha2 date
AS
BEGIN

	SELECT c.[CliNom], v.[Matricula], re.[Fecha] FROM Reservas re
	INNER JOIN Clientes_Vehiculos cv ON re.Matricula = cv.VehiculoMatricula
	INNER JOIN Vehiculos v ON re.Matricula = v.Matricula
	INNER JOIN Clientes c ON cv.CliCod = c.CliCod
	WHERE (re.Fecha BETWEEN @Fecha1 AND @Fecha2) AND Aceptado='S'

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerReparacionHoras]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerReparacionHoras]
AS
BEGIN

	SELECT [RepCod], [RepAnio], [MecCod], [Horas], [CostoHora] FROM Reparacion_horas

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerReparacionRepuestos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerReparacionRepuestos]
AS
BEGIN

	SELECT [RepCod] ,[RepAnio], [RepuestoCod], [Cantidad], [CostoUnitario] FROM Reparacion_Repuestos

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerRepuestos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerRepuestos]
AS
BEGIN

    SELECT [RepuestoCod], [RepuestoDsc], [RepuestoCosto], [RepuestoTipo], [ProveedorRUT] FROM Repuestos
	
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerRepuestosMasVendidos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerRepuestosMasVendidos]
AS
BEGIN

    	SELECT re.[RepuestoCod], re.[RepuestoDsc], re.[RepuestoCosto], re.[RepuestoTipo], re.[ProveedorRUT], SUM(rr.Cantidad) AS [Cantidad] FROM Repuestos re
	INNER JOIN Reparacion_Repuestos rr ON re.RepuestoCod = rr.RepuestoCod
	GROUP BY re.RepuestoCod, re.RepuestoDsc, re.RepuestoCosto, re.RepuestoTipo, re.ProveedorRUT
	ORDER BY SUM(rr.Cantidad) desc

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerReservas]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerReservas]
AS
BEGIN

	SELECT [IdReserva], [CliCod], [Matricula], [DescripcionProblema], [Fecha], [Aceptado] FROM Reservas

END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerVehiculos]    Script Date: 8/7/2022 16:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerVehiculos]
AS
BEGIN

    SELECT [VehiculoCod], [Matricula], [Marca], [Modelo], [Anio], [Color] FROM Vehiculos
END
GO
USE [master]
GO
ALTER DATABASE [obligatoriop3] SET  READ_WRITE 
GO
