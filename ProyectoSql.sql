use peluqueriacanina;

/*1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
*/

CREATE TABLE perro 
(  
	ID_perro INT NOT NULL AUTO_INCREMENT,  
    Nombre VARCHAR (30),  
    Fecha_nac DATE,  
    Sexo VARCHAR (1),  
    DNI_dueño VARCHAR (8) NOT NULL,  
    PRIMARY KEY (ID_perro),     
    FOREIGN KEY (DNI_dueño) REFERENCES dueño (DNI)
);

/*2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/

INSERT INTO dueño (DNI, Nombre, Apellido, Telefono, Direccion) 
VALUES ("40541385","Florencia","Tome","1169640135", "Yapeyu 84");

INSERT INTO perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
	VALUES (1, "Shaky",12/02/15, "F", "40541385");

/* 4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere. */

UPDATE perro
SET Fecha_nac = "11-01-10"
WHERE ID_perro = 1; 

select * from perro; 

/* 9.Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123. */

UPDATE dueño 
SET Direccion = "Libertad 123"
WHERE DNI = "40541385";

select * from dueño;
