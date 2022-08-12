-- VALORACION BASE DE DATOS

-- PELUQUERIA CANINA

create database Peluqueria_Canina;
use Peluqueria_Canina;

CREATE TABLE Dueno
(
ID_DNI int not null auto_increment,
Nombre varchar(50),
Apellido varchar(50),
Telefono int not null,
Direccion varchar(50),
primary key(ID_DNI)
);

CREATE TABLE Perro
(
ID_Perro int not null auto_increment,
NombrePerro varchar(50),
FechaNacPerro date not null,
SexoPerro varchar(50),
DNI_dueno int not null,
primary key (ID_Perro),
foreign key (DNI_dueno) references Dueno(ID_DNI)
);

CREATE TABLE Historial
(
ID_Historial int not null auto_increment,
Fecha date not null,
perro varchar(50),
Descripcion varchar(100),
Monto float not null,
primary key (ID_Historial),
foreign key (perro) references Perro(ID_Perro)
);


-- PUNTO 2

INSERT INTO Dueno(Nombre,Apellido,Telefono,Direccion) VALUES('Ignacio', 'Pena', '3513785529','Juan Montalvo 3467');
INSERT INTO Perro(NombrePerro,FechaNacPerro,SexoPerro,DNI_dueno) VALUES ('Simon', '2021-12-01', 'Masculino');

-- Obtener todos los perros que asistieron a la peluquería en 2022

select NombrePerro from Perro, Historial where Historial.Fecha between '2022-01-01' and '2022-12-31' and Perro.ID_Perro = Historial.Perro
