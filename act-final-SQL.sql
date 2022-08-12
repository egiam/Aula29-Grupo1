-- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
-- Creo la tabla perro:

create table perros (
id_perro INT NOT NULL AUTO_INCREMENT,
    nombrePerro VARCHAR (30),  
    fechaNacPerro Date,  
    sexo VARCHAR (1),  
   dniDelDueno VARCHAR (8),  
    PRIMARY KEY (ID_perro),     
    FOREIGN KEY (dniDelDueno) REFERENCES duenos (dniDueno)
);

-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

 INSERT INTO perros (id_perro, nombrePerro, fechaNacPerro, sexo, dniDelDueno)
	VALUES (6, "pepa", "2010-05-27", "E", "11150911");

-- Elegir algunos de los puntos 3 al 12 y agregarlo al script  

-- Ejercicio 12: Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022: 

select * from perros where sexo = "M" and fechaNacPerro between "2020-01-01" and "2022-12-12";



