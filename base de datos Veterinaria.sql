create database Veterinaria
use Veterinaria
create table Dueno (
DNI int not null, 
Nombre varchar(50) not null,
Apellido varchar(50) not null, 
Telefono varchar(60),
Direccion varchar(150),
constraint dni_pk primary key (DNI))
CREATE TABLE `veterinaria`.`perro` (
  `ID_Perro` INT NOT NULL,
  `Nombre` VARCHAR(70) NOT NULL,
  `fecha_nac` DATE NOT NULL,
  `sexo` BIT(1) NULL,
  `DNI_dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  UNIQUE INDEX `ID_Perro_UNIQUE` (`ID_Perro` ASC) VISIBLE,
  CONSTRAINT `DNI_dueno_fk`
    FOREIGN KEY (`DNI_dueno`)
    REFERENCES `veterinaria`.`dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
   CREATE TABLE historial(
   ID_Historial int AUTO_INCREMENT,
   FECHA DATE not null,
   Perro int not null,
   Descripcion varchar(250),
   Monto decimal(10.2),
   primary key (ID_Historial),
   constraint perro_fk foreign key (Perro)
   references Perro (ID_Perro)
   ON DELETE NO ACTION
    ON UPDATE NO ACTION
   ) 
   insert into Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
   values (26261990, 'FELIPE ESTEBAN', 'SJODIN', '3525-15645716', 'Paso de los 
   andes s/n jesus maria')
   select * from dueno
   insert Perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno)
   values (1, 'OSCAR', '2020/5/12', 1, 26261990)