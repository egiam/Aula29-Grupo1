
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



--     Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

--     Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
Insert into Dueno values(12345678, "Rodolfo", "Marquez", "121212", "rodolfoMarquez@gmail.com","Don Bosco 123");
Insert into Perro values(1,"Juan","Labrador","16/12/2015", "M", 12345678);

--     Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.
Delete from Perro where month(getdate() - fechaHistorial) > 12;

--     Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
update Perro 
set fechaNacPerro = "12/9/2019"
where id_perro = 1;

--     Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
select p.* from Perros p join Dueno d on p.DNI = d.DNI where nombreDueno = "Pedro"

--     Obtener todos los perros que asistieron a la peluquería en 2022


--     Obtener los ingresos percibidos en Julio del 2022

--     Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.

--     Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123

--     Vaciar la tabla historial y resetear el contador del campo ID.

--     Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.

--     Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.

-- El archivo debe ser subido a la rama de la persona que creó el código, ya que los docentes verificaremos la participación por el historial.
