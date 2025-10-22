create database proyecto_integrador

use proyecto_integrador

create table Institucion 
(
ID_Institucion int primary key identity (1,1),
Nombre_Institucion nvarchar(255) not null,
zona nvarchar(100),
Electricidad binary default 1, -- 1 si cuenta con - 0 no cuenta con --
Agua_potable binary default 1,
saneamiento binary default 1,
Accesibilidad binary default 1

);

create table Docente 
(
ID_Docente int primary key identity(1,1),
Nombre_Docente nvarchar(255),
Especialidad nvarchar(150),
ID_Institucion int

constraint FK_ID_Institucion_Docente foreign key (ID_Institucion) references Institucion (ID_Institucion)

);

create table Estudiante
(
ID_Estudiante int primary key identity (1,1),
Nombre_Estudiante nvarchar(255) not null,
Edad int,
Genero nvarchar(100),
Promedio_lectura decimal(4,2),
Promedio_Matematicas decimal(4,2),
Analfabeto binary default 0, -- 1 si es - 0 no es--
ID_Institucion int,

constraint FK_ID_Institucion_Estudiante foreign key (ID_Institucion) references Institucion (ID_Institucion)

);

create table Programa
(
ID_Programa int primary key identity(1,1),
Nombre_Programa nvarchar(255),
ID_Institucion int

constraint FK_ID_Institucion_Programa foreign key (ID_Institucion) references Institucion (ID_Institucion)

);

create table Recursos
(
ID_Recursos int primary key identity (1,1),
Tipo_Recurso nvarchar(150) not null,
Cantidad_recursos int,
ID_Institucion int

constraint FK_ID_Institucion_Recursos foreign key (ID_Institucion) references Institucion (ID_Institucion)

);

create table Estudiante_Programa
(
ID_estudiante_programa int primary key identity (1,1),
ID_Estudiante int,
ID_Programa int

constraint FK_ID_EP_Estudiante foreign key (ID_Estudiante) references Estudiante (ID_Estudiante),
constraint FK_ID_EP_Recursos foreign key (ID_Programa) references Programa (ID_Programa),
unique (ID_Estudiante,ID_Programa)

);