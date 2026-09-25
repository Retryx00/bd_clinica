USE [master]
GO

CREATE DATABASE [Clinica]
GO

USE [Clinica]
GO

CREATE TABLE [dbo].[Paciente](
	[DNI] [char](8) NOT NULL,
	[NombreCompleto] [varchar](64) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Telefono] [char](9) NOT NULL,
	[Sexo] [char](1) NOT NULL,
	CONSTRAINT [PK_PACIENTE] PRIMARY KEY ([DNI])
)
GO

ALTER TABLE [dbo].[Paciente]
ADD CONSTRAINT [CK_PACIENTE_DNI] CHECK ([DNI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
GO

ALTER TABLE [dbo].[Paciente]
ADD CONSTRAINT [CK_PACIENTE_SEXO] CHECK ([SEXO]='F' OR [SEXO]='M')
GO

ALTER TABLE [dbo].[Paciente]
ADD CONSTRAINT [CK_PACIENTE_TELEFONO] CHECK (len([Telefono])=(9) AND NOT [Telefono] like '%[^0-9]%')
GO


CREATE TABLE [dbo].[HistoriaClinica](
	[Numero] [char](4) NOT NULL,
	[FechaRegistro] [date] NOT NULL,
	[Vigente] [bit] NOT NULL,
	[DNI] [char](8) NOT NULL,
	CONSTRAINT [PK_HISTORIACLINICA] PRIMARY KEY ([Numero])
)
GO
ALTER TABLE [dbo].[HistoriaClinica]
ADD CONSTRAINT [FK_HISTORIACLINICA_PACIENTE] FOREIGN KEY([DNI])
	REFERENCES [dbo].[Paciente] ([DNI])
GO

ALTER TABLE [dbo].[HistoriaClinica] 
ADD CONSTRAINT [CK_HISTORIA_NUMERO] CHECK ([Numero] like 'HC[0-9][0-9][0-9][0-9]')
GO

ALTER TABLE [dbo].[HistoriaClinica]
ADD CONSTRAINT [UQ_HISTORIA_DNI] UNIQUE ([DNI])
go


CREATE TABLE [dbo].[Doctor](
	[NumeroCMP] [char](6) NOT NULL,
	[DNI] [char](8) NOT NULL,
	[NombreCompleto] [varchar](50) NOT NULL,
	[Telefono] [char](9) NOT NULL,
	[Especialidad] [varchar](64) NOT NULL,
	CONSTRAINT [PK_DOCTOR] PRIMARY KEY ([NumeroCMP])
)
GO

ALTER TABLE [dbo].[Doctor]
ADD CONSTRAINT [CK_DOCTOR_NUMEROCMP] CHECK ([NumeroCMP] like '[0-9][0-9][0-9][0-9][0-9][0-9]')
GO
ALTER TABLE [dbo].[Doctor] 
ADD CONSTRAINT [CK_DOCTOR_TELEFONO] CHECK (len([Telefono])=9 AND NOT [Telefono] like '%[^0-9]%')
GO
ALTER TABLE [dbo].[Doctor]
ADD CONSTRAINT [CK_DOCTOR_DNI] CHECK ([DNI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
GO


CREATE TABLE [dbo].[Cita](
	[Numero] [int] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Costo] [decimal](10, 2) NOT NULL,
	[Comentarios] [varchar](200) NOT NULL,
	[DNI] [char](8) NOT NULL,
	[NumeroCMP] [char](6) NOT NULL,
	CONSTRAINT [PK_CITA] PRIMARY KEY ([Numero])
)
GO

ALTER TABLE [dbo].[Cita] 
ADD CONSTRAINT [DF_CITA_FECHAHORA] DEFAULT (getdate()) FOR [FechaHora]
GO

ALTER TABLE [dbo].[Cita] 
ADD CONSTRAINT [FK_CITA_DOCTOR] FOREIGN KEY([NumeroCMP])
	REFERENCES [dbo].[Doctor] ([NumeroCMP])
GO

ALTER TABLE [dbo].[Cita]
ADD CONSTRAINT [FK_CITA_PACIENTE] FOREIGN KEY([DNI])
	REFERENCES [dbo].[Paciente] ([DNI])
GO

ALTER TABLE [dbo].[Cita]
ADD CONSTRAINT [CK_CITA_COSTO] CHECK ([Costo]>=0)
GO



