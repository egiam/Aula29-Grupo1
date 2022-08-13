-- BASE DE DATOS peluqueria_canina:

create database peluqueria_canina;
use peluqueria_canina;

create table dueno (
DNI VARCHAR (8),
Nombre VARCHAR (50),
Apellido VARCHAR(50),
Telefono VARCHAR (10),
Direccion VARCHAR (50),
primary key (dniDueno)

);
create table perros (
ID_perro INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR (30),  
    Fecha_nac Date,  
    sexo VARCHAR (1),  
   DNI_dueno VARCHAR (8),  
    PRIMARY KEY (ID_perro),     
    FOREIGN KEY (DNI_dueno) REFERENCES duenos (DNI)
);
create table historial (
ID_historial INT not null auto_increment,
fecha date,
perro int,
descripcion VARCHAR(80),
monto float,
 PRIMARY KEY (ID_historial),     
FOREIGN KEY (perro) REFERENCES perros (id_perro)
);


-- CLIENTE N° 1: 


INSERT INTO perros (id_perro, nombrePerro, fechaNacPerro, sexo, dniDelDueno)
	VALUES (1, "tilin", "2020-12-01", "M",  "23546987");


INSERT INTO duenos (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES ("23546987", "Maria", "Perez", "1234000123", "Pueyrredon 99");

 -- CLIENTE N° 2:

INSERT INTO perros (id_perro, nombrePerro, fechaNacPerro, sexo, dniDelDueno)
	VALUES (2, "Fido", "2012-12-12", "M", "28957346");

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES ("28957346", "Juan", "Perez", "998765231", "Belgrano 101");

-- CLIENTE N°3

INSERT INTO perros (id_perro, nombrePerro, fechaNacPerro, sexo, dniDelDueno)
	VALUES (3, "Puppy", "2022-05-03", "M", "30992318");

INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES ("30992318", "Gonzalo", "Gomez", "4566782319", " Av. Lopez 44");

-- CLIENTE N° 4
INSERT INTO perros (id_perro, nombrePerro, fechaNacPerro, sexo, dniDelDueno)
	VALUES (4, "mini", "2020-08-05", "E", "3925091198");

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES ("39250911", "Juan", "Lopez", "3355091291", "av.  cordoba 1090");

-- CLIENTE N° 5
INSERT INTO perros (id_perro, nombrePerro, fechaNacPerro, sexo, dniDelDueno)
	VALUES (5, "pelusa", "2018-03-20", "E", "40551889");

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES ("40551889", "Ricardo", "Velazquez", "33118943291", "San Martin 1000");


-- CLIENTE N° 6
INSERT INTO perros (id_perro, nombrePerro, fechaNacPerro, sexo, dniDelDueno)
	VALUES (6, "pepa", "2010-05-27", "E", "11150911");

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES ("11150911", "marcos", "cortez", "2008997623", "av. siempre viva 123");





