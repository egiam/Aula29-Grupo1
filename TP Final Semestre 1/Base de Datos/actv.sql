
-- MySQL
-- Tablas Dueno, Perro y Historial

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



--  1   Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

--   2  Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
Insert into Dueno values(12345678, "Rodolfo", "Marquez", "121212", "rodolfoMarquez@gmail.com","Don Bosco 123");
Insert into Perro values(1,"Juan","Labrador","16/12/2015", "M", 12345678);

--   3  Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.
Delete from Perro where month(getdate() - fecha) > 12;

--  4   Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
update Perro 
set fechaNac = "12/9/2019"
where id_perro = 1;

--  5   Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
select nombre from Perro, Dueno
where Dueno.nombre = "Pedro" and Perro.DNI = Dueno.DNI;

--  7   Obtener los ingresos percibidos en Julio del 2022
select sum(monto) from Historial
where month(fecha) = 7 and year(fecha) = 2022;

--  10   Vaciar la tabla historial y resetear el contador del campo ID.
truncate table historial;
alter table historial auto_increment = 1;

--  11   Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.
select nombre from Dueno, Perro
where Dueno.DNI = Perro.DNI and year(getdate() - Perro.fechaNac) < 5 and year(getdate() - Historial.fecha) < 2022;

-- El archivo debe ser subido a la rama de la persona que creó el código, ya que los docentes verificaremos la participación por el historial.
