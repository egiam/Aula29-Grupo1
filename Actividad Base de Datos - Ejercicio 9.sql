create database if not exists PeluqueriaCanina;

use PeluqueriaCanina;

CREATE TABLE IF NOT EXISTS Dueno (
    DNI INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(20),
    Apellido VARCHAR(20),
    Telefono VARCHAR(15),
    Direccion VARCHAR(80),
    PRIMARY KEY (DNI)
);

CREATE TABLE IF NOT EXISTS Perro (
    ID_perro INT NOT NULL,
    Nombre VARCHAR(20),
    FechaNac DATETIME,
    Sexo VARCHAR(1),
    DNI_dueño INT NOT NULL,
    PRIMARY KEY (ID_perro),
    FOREIGN KEY (DNI_dueño)
        REFERENCES Dueno (DNI)
);

CREATE TABLE IF NOT EXISTS Historial (
    ID_Historial INT NOT NULL AUTO_INCREMENT,
    Fecha DATETIME,
    Perro INT NOT NULL,
    Descripcion VARCHAR(100),
    Monto INT,
    PRIMARY KEY (ID_historial),
    FOREIGN KEY (Perro)
        REFERENCES Perro (ID_perro)
);

--   2  Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
Insert into Dueno values(22333444, "Raul", "Gimenez", "3514325678", "Illia 123");
Insert into Perro values(1,"Firulais", "2020-08-12", "M", 22333444);

--  9   Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
update Dueno set Direccion = "Libertad 123" where DNI = 22333444;