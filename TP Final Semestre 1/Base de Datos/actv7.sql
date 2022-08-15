create database if not exists PeluqueriaCanina;

use PeluqueriaCanina;

create table if not exists Dueno (
    DNI int not null auto_increment,
    nombre varchar(50),
    apellido varchar(50),
    telefono varchar(10),
    email varchar(50),
    direccion varchar(150),
    primary key (DNI)
);

create table if not exists Perro (
    id_perro int not null,
    nombre varchar(50),
    raza varchar(50),
    fechaNac datetime,
    sexo varchar(1)
    DNI int not null,
    primary key (id_perro),
    foreign key (DNI) references Dueno(DNI)
);

create table if not exists Historial (
    id_historial int not null auto_increment,
    id_perro int not null,
    fecha datetime,
    descripcion varchar(150),
    monto int,
    primary key (id_historial),
    foreign key (id_perro) references Perro(id_perro)
);

--  7   Obtener los ingresos percibidos en Julio del 2022
select sum(monto) from Historial
where month(fecha) = 7 and year(fecha) = 2022;
