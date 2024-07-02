
# PROYECTO EDUCATIVO

### PRESENTACIÓN DE BASE DE DATOS PARA UN INSTITUTO EDUCATIVO - PRIMERA ENTREGA

### ALUMNA: CARRANZA ROMINA

### COMISIÓN:57190

### PROFESOR: ANDERSON OCAÑA


### Problemática

La Institución tiene el inconveniente de el registro de alumnos inscriptos al comienzo de cada año lectivo y su renovación de alumnados.
### Descripción 
El proceso se hace manual a travez de planillas, las cuales se archivan en distintas carpetas con información de cada alumno como de profesores de cada materia.
### Objetivo
Desarrollar una base de datos , que permita el control eficiente de registros, facilitando así a los directivos brindas cupos.





## TABLAS

- 1 Alumnos: Describe información personal-legal  del alumno registrado con atributos:
`Id_Alumno`,`Nombre`,`Apellido`,`Edad`,`Direccion_Residencia`,`id_profesor`

- 2 Calificaciones:Almacena información de Calificaciones obtenidas de examenes de cada una de las materias con atributos:`Id_calificacion`,`Id_Alumno`,`Id_Curricula`,`calificaciones`

- 3 Curso:Almacena información del curso al que pertenece con atributos:
`id_curso`,`descripcion`,`id_profesor`,`curso`

- 4 Inscripciones: Almacena información del registro-matriculación del  alumno/a con atributos: `id_inscripcion`,`fecha_inscripcion`,`Id_Alumno`,`id_curso`,`inscripciones`
- 5 Materias: con atributos:`Id_Curricula`, `Nombre_Materia`

- 6 Profesores Describe información personal-legal  del profesor registrado y de la materia en la que se encontrará asignado con atributos:`Id_Profesor`,`email`,`Nombre`,`Apellido`,`Edad`,`Direccion_Residencia`,`Id_Curricula`,`profesor`
- ## Diagrama


![g2AclHY9cp](https://github.com/pampa86/-PROYECTO_COLEGIO_CARRANZA/assets/174401261/c6144e41-b2b6-4321-bc8e-be10ec8132e8)

