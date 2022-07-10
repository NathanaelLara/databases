CREATE DATABASE PRESTAMOS
USE PRESTAMOS

--Tabla LISTA
CREATE TABLE LISTA(
idLista INT PRIMARY KEY NOT NULL,
nombreLista VARCHAR(50) NOT NULL,
);

--Tabla LISTA_B
CREATE TABLE LISTA_B(
idLista_B INT PRIMARY KEY NOT NULL,
nombreLista_B VARCHAR(50) NOT NULL,
idLista INT NOT NULL,
);

 --Tabla PERSONA
 CREATE TABLE PERSONA(
 idPersona INT PRIMARY KEY NOT NULL,
 documento VARCHAR(15) NOT NULL,
 idTipoDoc VARCHAR(11) NOT NULL,
 nomPersona VARCHAR(50) NOT NULL,
 direccion VARCHAR(50) NOT NULL,
 genPersona VARCHAR(15),
 telefono VARCHAR(15) NOT NULL,
 email VARCHAR(50),
 );

 --Tabla PRESTAMO
 CREATE TABLE PRESTAMO(
 idPrestamo INT PRIMARY KEY NOT NULL,
 valorPrestamo INT NOT NULL,
 interes INT NOT NULL,
 valorARecibir INT,
 fechaPrestamo DATE,
 fechaVencimiento DATE,
 idEstadoPrestamo INT
 );

 --Tabla ABONO
 CREATE TABLE ABONO(
 idAbono INT PRIMARY KEY,
 valorAbono INT NOT NULL,
 fechaAbono DATE,
 idEstadoPrestamo INT,
 idPrestamo INT,
 );