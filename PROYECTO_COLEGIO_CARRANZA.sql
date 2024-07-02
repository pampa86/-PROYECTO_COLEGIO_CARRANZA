CREATE DATABASE PROYECTO_COLEGIO;
USE PROYECTO_COLEGIO;

CREATE TABLE Materias(
    Id_Curricula INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nombre_Materia VARCHAR(45) NOT NULL
);

CREATE TABLE Profesor (
    Id_Profesor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Edad INT NOT NULL,
    Direccion_Residencia VARCHAR(50) NOT NULL,
    Id_Curricula INT,
    FOREIGN KEY (Id_Curricula) REFERENCES Materias(Id_Curricula)
);

CREATE TABLE Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descripcion VARCHAR(45) NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES Profesor(Id_Profesor)
);

CREATE TABLE Alumnos (
    Id_Alumno INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Edad INT NOT NULL,
    Direccion_Residencia VARCHAR(50) NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES Profesor(Id_Profesor)
);

CREATE TABLE inscripciones (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fecha_inscripcion DATE,
    Id_Alumno INT,
    id_curso INT,
    FOREIGN KEY (Id_Alumno) REFERENCES Alumnos(Id_Alumno),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Calificaciones (
    Id_calificacion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Id_Alumno INT,
    Id_Curricula INT,
    FOREIGN KEY (Id_Alumno) REFERENCES Alumnos(Id_Alumno),
    FOREIGN KEY (Id_Curricula) REFERENCES Materias(Id_Curricula)
);