USE [master]
GO
/****** Object:  Database [DBUniversidad]    Script Date: 9/09/2022 11:19:19 ******/
CREATE DATABASE [DBUniversidad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Universidad', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Universidad.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Universidad_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Universidad_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBUniversidad] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBUniversidad].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBUniversidad] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBUniversidad] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBUniversidad] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBUniversidad] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBUniversidad] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBUniversidad] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBUniversidad] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBUniversidad] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBUniversidad] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBUniversidad] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBUniversidad] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBUniversidad] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBUniversidad] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBUniversidad] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBUniversidad] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBUniversidad] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBUniversidad] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBUniversidad] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBUniversidad] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBUniversidad] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBUniversidad] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBUniversidad] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBUniversidad] SET RECOVERY FULL 
GO
ALTER DATABASE [DBUniversidad] SET  MULTI_USER 
GO
ALTER DATABASE [DBUniversidad] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBUniversidad] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBUniversidad] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBUniversidad] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBUniversidad] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBUniversidad] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBUniversidad', N'ON'
GO
ALTER DATABASE [DBUniversidad] SET QUERY_STORE = OFF
GO
USE [DBUniversidad]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 9/09/2022 11:19:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[IDAlumno] [int] IDENTITY(1,1) NOT NULL,
	[NomAlumno] [varchar](255) NULL,
	[Apellido1] [varchar](255) NULL,
	[Apellido2] [varchar](255) NULL,
	[Ciudad] [varchar](255) NULL,
	[Sexo] [char](1) NULL,
	[FechaNacimiento] [date] NULL,
	[Celular] [int] NULL,
	[Codigo] [int] NULL,
	[CreditosPorSemestre] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignatura]    Script Date: 9/09/2022 11:19:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[IDAsignatura] [int] IDENTITY(1,1) NOT NULL,
	[NomAsignatura] [varchar](255) NULL,
	[Creditos] [int] NULL,
	[NomProfesor] [varchar](255) NULL,
	[Grupo] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 9/09/2022 11:19:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultad](
	[IDFacultad] [int] IDENTITY(1,1) NOT NULL,
	[IDAsignatura] [int] NULL,
	[NomFacultad] [varchar](255) NULL,
	[Celular] [int] NULL,
	[RectorFacultad] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 9/09/2022 11:19:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[IDMatricula] [int] IDENTITY(1,1) NOT NULL,
	[NomAsignatura1] [varchar](255) NULL,
	[Creditos1] [tinyint] NULL,
	[NomAsignatura2] [varchar](255) NULL,
	[Creditos2] [tinyint] NULL,
	[NomAsignatura3] [varchar](255) NULL,
	[Creditos3] [tinyint] NULL,
	[NomAsignatura4] [varchar](255) NULL,
	[Creditos4] [tinyint] NULL,
	[NomAsignatura5] [varchar](255) NULL,
	[Creditos5] [int] NULL,
	[NomAsignatura6] [varchar](255) NULL,
	[Creditos6] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 9/09/2022 11:19:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[IDProfesor] [int] IDENTITY(1,1) NOT NULL,
	[NomProfesor] [varchar](255) NULL,
	[ApellidoProfesor] [varchar](255) NULL,
	[Curso] [varchar](255) NULL,
	[Codigo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([IDAlumno], [NomAlumno], [Apellido1], [Apellido2], [Ciudad], [Sexo], [FechaNacimiento], [Celular], [Codigo], [CreditosPorSemestre]) VALUES (1, N'Nicholas', N'Altamirano', N'Manrique', N'Lima', N'M', CAST(N'2002-02-14' AS Date), 934360568, 202110609, 21)
INSERT [dbo].[Alumno] ([IDAlumno], [NomAlumno], [Apellido1], [Apellido2], [Ciudad], [Sexo], [FechaNacimiento], [Celular], [Codigo], [CreditosPorSemestre]) VALUES (2, N'Joaquin', N'Samaniego', N'Gonzales', N'Lima', N'M', CAST(N'2004-04-14' AS Date), 934360999, 202110123, 21)
INSERT [dbo].[Alumno] ([IDAlumno], [NomAlumno], [Apellido1], [Apellido2], [Ciudad], [Sexo], [FechaNacimiento], [Celular], [Codigo], [CreditosPorSemestre]) VALUES (3, N'Katleen', N'Levis', N'Alfaro', N'Lima', N'F', CAST(N'2002-05-16' AS Date), 934360567, 202110456, 21)
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
SET IDENTITY_INSERT [dbo].[Asignatura] ON 

INSERT [dbo].[Asignatura] ([IDAsignatura], [NomAsignatura], [Creditos], [NomProfesor], [Grupo]) VALUES (1, N'Estructura de datos', 4, N'Quispe', 2)
INSERT [dbo].[Asignatura] ([IDAsignatura], [NomAsignatura], [Creditos], [NomProfesor], [Grupo]) VALUES (2, N'Historia de la Civilizacion', 3, N'Ticona', 1)
INSERT [dbo].[Asignatura] ([IDAsignatura], [NomAsignatura], [Creditos], [NomProfesor], [Grupo]) VALUES (3, N'Taller de Programacion 3', 4, N'Campos', 1)
SET IDENTITY_INSERT [dbo].[Asignatura] OFF
GO
SET IDENTITY_INSERT [dbo].[Facultad] ON 

INSERT [dbo].[Facultad] ([IDFacultad], [IDAsignatura], [NomFacultad], [Celular], [RectorFacultad]) VALUES (1, 1, N'Ingenieria', 934360568, N'Jimenez')
INSERT [dbo].[Facultad] ([IDFacultad], [IDAsignatura], [NomFacultad], [Celular], [RectorFacultad]) VALUES (2, 2, N'Arquitectura', 934360444, N'Altamirano')
INSERT [dbo].[Facultad] ([IDFacultad], [IDAsignatura], [NomFacultad], [Celular], [RectorFacultad]) VALUES (3, 3, N'Medicina', 987564123, N'Samaniego')
SET IDENTITY_INSERT [dbo].[Facultad] OFF
GO
SET IDENTITY_INSERT [dbo].[Matricula] ON 

INSERT [dbo].[Matricula] ([IDMatricula], [NomAsignatura1], [Creditos1], [NomAsignatura2], [Creditos2], [NomAsignatura3], [Creditos3], [NomAsignatura4], [Creditos4], [NomAsignatura5], [Creditos5], [NomAsignatura6], [Creditos6]) VALUES (1, N'EDA', 2, N'Historia', 3, N'Mate2', 4, N'Mate 3', 4, N'Programacion 3', 4, N'Mate discreta', 3)
INSERT [dbo].[Matricula] ([IDMatricula], [NomAsignatura1], [Creditos1], [NomAsignatura2], [Creditos2], [NomAsignatura3], [Creditos3], [NomAsignatura4], [Creditos4], [NomAsignatura5], [Creditos5], [NomAsignatura6], [Creditos6]) VALUES (2, N'EDA', 2, N'Mate2', 4, N'TCOE', 3, N'Fisica basica', 3, N'Carpinteria', 2, N'Ingles 2', 3)
INSERT [dbo].[Matricula] ([IDMatricula], [NomAsignatura1], [Creditos1], [NomAsignatura2], [Creditos2], [NomAsignatura3], [Creditos3], [NomAsignatura4], [Creditos4], [NomAsignatura5], [Creditos5], [NomAsignatura6], [Creditos6]) VALUES (3, N'Fisica 1', 3, N'Eda', 2, N'Ingles 3', 3, N' TCOE 2', 3, N'Frances 1', 2, N'Mate 1', 3)
SET IDENTITY_INSERT [dbo].[Matricula] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesor] ON 

INSERT [dbo].[Profesor] ([IDProfesor], [NomProfesor], [ApellidoProfesor], [Curso], [Codigo]) VALUES (1, N'Joaquin', N'Gonzales', N'Ingenieria espacial avanzada nuclear termodinamica textil astrofisica en el vacio absoluto-relativo marino 2', 180011111)
INSERT [dbo].[Profesor] ([IDProfesor], [NomProfesor], [ApellidoProfesor], [Curso], [Codigo]) VALUES (2, N'Paco', N'Yunque', N'Carpinteria', 200215468)
INSERT [dbo].[Profesor] ([IDProfesor], [NomProfesor], [ApellidoProfesor], [Curso], [Codigo]) VALUES (3, N'Don', N'Quijote', N'Literatura', 160521104)
SET IDENTITY_INSERT [dbo].[Profesor] OFF
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Alumno] FOREIGN KEY([IDAsignatura])
REFERENCES [dbo].[Alumno] ([IDAlumno])
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Alumno]
GO
ALTER TABLE [dbo].[Facultad]  WITH CHECK ADD  CONSTRAINT [FK_Facultad_Asignatura] FOREIGN KEY([IDAsignatura])
REFERENCES [dbo].[Asignatura] ([IDAsignatura])
GO
ALTER TABLE [dbo].[Facultad] CHECK CONSTRAINT [FK_Facultad_Asignatura]
GO
ALTER TABLE [dbo].[Facultad]  WITH CHECK ADD  CONSTRAINT [FK_Facultad_Matricula] FOREIGN KEY([IDFacultad])
REFERENCES [dbo].[Matricula] ([IDMatricula])
GO
ALTER TABLE [dbo].[Facultad] CHECK CONSTRAINT [FK_Facultad_Matricula]
GO
USE [master]
GO
ALTER DATABASE [DBUniversidad] SET  READ_WRITE 
GO
