

use proyecto_integrador


--update--
UPDATE Institucion
SET saneamiento = 1
WHERE Nombre_Institucion = 'Escuela Primaria Central';


UPDATE Docente
SET Especialidad = 'Matemáticas y Física'
WHERE Nombre_Docente = 'Ana Torres';

--delete--

DELETE FROM Estudiante
WHERE Analfabeto = 1;

DELETE FROM Institucion
WHERE Nombre_Institucion = 'Liceo Los Andes';

--inner join--

SELECT 
    e.Nombre_Estudiante, 
    i.Nombre_Institucion
    p.Nombre_Programa
FROM estudiante_programa AS ep
INNER JOIN estudiante AS e ON ep.ID_estudiante = e.ID_estudiante
INNER JOIN programa AS p ON ep.ID_programa = p.ID_programa
INNER JOIN institucion AS i ON e.ID_institucion = i.ID_institucion;

SELECT
    d.Nombre_Docente,
    i.Nombre_Institucion,
    i.zona
FROM docente AS d
INNER JOIN institucion AS i ON d.ID_institucion = i.ID_institucion
WHERE i.zona = 'Urbana';