use peluqueria_canina
-- CREAR BD

create table Dueno (
DNI int NOT NULL,
Nombre varchar (20),
Apellido varchar (30),
Telefono int,
Dirección varchar (100),
PRIMARY KEY (DNI)
);
 create table Perro (
ID_Perro int not null auto_increment,
Nombre varchar (10),
Fecha_nac datetime,
Sexo varchar (6),
DNI_dueno int not null,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_dueno) references dueno (DNI)
);
create table Historial (
ID_Historial int not null auto_increment,
Fecha datetime,
Perro int,
Descripción varchar (100),
Monto int,
PRIMARY KEY (ID_Historial),
FOREIGN KEY (Perro) references Perro (ID_Perro)
);

-- Ejercicio 8 
-- Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Dirección)
VALUES
('11053039', 'Maria', 'Carrizo', '4573817', 'Rondeau 100');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno)
VALUES
('10', 'Morty', '2020/03/12', 'Macho', '11053039');

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripción, Monto)
VALUES
('123', '2022/08/12', '10', 'Baño y corte', '1000');
