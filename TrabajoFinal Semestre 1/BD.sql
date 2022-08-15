-- MySQL
-- Tablas Dueno, Perro y Historial

create database if not exists PeluqueriaCanina;

use PeluqueriaCanina;

create table if not exists Dueno (
    DNI int not null auto_increment,
    nombreDueno varchar(50),
    apellidoDueno varchar(50),
    telefonoDueno varchar(10),
    emailDueno varchar(50),
    direccionDueno varchar(150),
    primary key (DNI)
);

create table if not exists Perro (
    id_perro int not null,
    nombrePerro varchar(50),
    razaPerro varchar(50),
    fechaNacPerro datetime,
    sexoPerro varchar(1)
    DNI int not null,
    primary key (id_perro),
    foreign key (DNI) references Dueno(DNI)
);

create table if not exists Historial (
    id_historial int not null auto_increment,
    id_perro int not null,
    fechaHistorial datetime,
    descripcionHistorial varchar(150),
    montoHistorial int,
    primary key (id_historial),
    foreign key (id_perro) references Perro(id_perro)
);