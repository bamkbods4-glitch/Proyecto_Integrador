

use proyecto_integrador


INSERT INTO Institucion (Nombre_Institucion, zona, Electricidad, Agua_potable, saneamiento, Accesibilidad)
VALUES 
						('Escuela Primaria Central', 'Urbana', 1, 1, 0, 1),
						('Colegio Rural El Manantial', 'Rural', 0, 1, 0, 0),
						('Instituto Técnico Superior', 'Urbana', 1, 1, 1, 1),
						('Liceo Los Andes', 'Urbana', 1, 1, 1, 0)


INSERT INTO Docente (Nombre_Docente, Especialidad, ID_Institucion)
VALUES 
					('Ana Torres', 'Matemáticas', 1),
					('Luis Vega', 'Ciencias Naturales', 2),
					('Marta Jimenez', 'Historia', 1),
					('Jorge Castro', 'Sistemas', 3)

INSERT INTO Estudiante (Nombre_Estudiante, Edad, genero, Promedio_lectura, Promedio_Matematicas, Analfabeto, ID_Institucion)
VALUES 
						('Carlos Mena', 10, 'Masculino', 8.50, 7.95, 0, 1),
						('Sofia Ramirez', 9, 'Femenino', 9.10, 8.80, 0, 1),
						('Pedro Gomez', 12, 'Masculino', 7.20, 6.50, 0, 2),
						('Laura Solis', 11, 'Femenino', 8.90, 9.50, 0, 3),
						('Miguel Angel', 10, 'Masculino', 6.50, 9.20, 0, 3),
						('Juana Perez', 14, 'Femenino', 5.00, 4.50, 1, 2)

INSERT INTO Programa (Nombre_Programa, ID_Institucion)
VALUES 
					('Refuerzo de Lectura', 1),
					('Club de Ciencias', 2),
					('Introducción a la Programación', 3);

INSERT INTO Recursos (Tipo_Recurso, Cantidad_recursos, ID_Institucion)
VALUES 
					('Libros de texto', 300, 1),
					('Microscopios', 15, 2),
					('Computadoras', 50, 3),
					('Proyectores', 5, 1);

INSERT INTO Estudiante_Programa (ID_Estudiante, ID_Programa)
VALUES 
								(1, 1), 
								(2, 1), 
								(3, 2), 
								(4, 3), 
								(5, 3); 