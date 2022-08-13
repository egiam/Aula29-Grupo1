-- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

create table perro (
id_perro INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR (30),  
    Fecha_nac Date,  
    sexo VARCHAR (1),  
   DNI_dueno VARCHAR (8),  
    PRIMARY KEY (ID_perro),     
    FOREIGN KEY (DNI_dueno) REFERENCES dueno (DNI)
);

-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

 INSERT INTO perro (id_perro, Nombre, Fecha_nac, sexo, DNI_dueno)
	VALUES (6, "pepa", "2010-05-27", "E", "11150911");

-- Elegir algunos de los puntos 3 al 12 y agregarlo al script  

-- Ejercicio 12: Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022: 

select * from perro where sexo = "M" and Fecha_nac between "2020-01-01" and "2022-12-12";



