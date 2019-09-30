CREATE DATABASE PRUEBA;
----------------------
USE PRUEBA;
----------------------
CREATE TABLE PEDIDOS1(
	codigo int primary key,
	cliente nchar(5),
	fecha datetime,
	empleado nvarchar(20)
);
----------------------
CREATE TABLE PEDIDOS2(
	codigo int primary key,
	cliente nchar(5),
	fecha datetime,
	empleado nvarchar(20)
);
----------------------
CREATE TABLE PEDIDOS3(
	codigo int primary key,
	cliente nchar(5),
	fecha datetime,
	empleado nvarchar(20)
);

SELECT * FROM PEDIDOS1;
SELECT * FROM PEDIDOS2;
SELECT * FROM PEDIDOS3;

CREATE TABLE ARTICULOS1(
	codigo int primary key,
	nombre varchar(40),
	proveedor int,
	precio numeric(8,2),
	categoria varchar(15)
);
CREATE TABLE ARTICULOS2(
	codigo int primary key,
	nombre varchar(40),
	proveedor int,
	precio numeric(8,2),
	categoria varchar(15)
);
CREATE TABLE ARTICULOS3(
	codigo int primary key,
	nombre varchar(40),
	proveedor int,
	precio numeric(8,2),
	categoria varchar(15)
);

Condiments ==> ARTICULOS1
Confections ==> ARTICULOS2
Produce ==> ARTICULOS3

select * from PEDIDOS1

use NORTHWIND;
select * from employees;

select * from Categories