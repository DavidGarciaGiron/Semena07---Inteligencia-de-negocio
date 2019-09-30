-----------------------
-- DATAWAREHOUSE DE INVENTARIO BODEGA
-- creamos la base de datos
-----------------------
create database dw_invBodega;
-----------------------
-- usamos la base de datos
-----------------------
use dw_invBodega;
-----------------------
-- creamos la dimencion almacen
-----------------------
create table dim_almacen(
	id_alm int primary key,
	nom_alm varchar(50),
	dir1_alm varchar(100),
	pro_alm varchar(50)
);
-----------------------
-- creamos la dimencion suministro
-----------------------
create table dim_suministro(
	id_sum int primary key,
	emp_sum varchar(35),
	ruc_sum char(11)
);
-----------------------
-- creamos la dimencion promocion
-----------------------
create table dim_promocion(
	id_promo int primary key,
	nom_promo varchar(35),
	inicio_promo char(11),
	fin_promo char(11)
);
-----------------------
-- creamos la dimencion tiempo
-----------------------
create table dim_tiempo(
	id_tiempo int primary key,
	fecha date,
	anio int,
	trimestre int,
	mes int,
	semana int, 
	diaSemana varchar(10)
);
-----------------------
-- creamos la hecho productos
-----------------------
create table fact_productos(
	id_pro int primary key,
	id_alm int,
	id_sum int,
	id_promo int,
	id_tiempo int,
	pro_nombre varchar(50),
	pro_cantidad int,
	pro_precio numeric(8,2),
	pro_fecha date
);
-----------------------
-- visualizamos en almacen
-----------------------
select * from dim_almacen;
-----------------------
-- visualizamos en suministro
-----------------------
select * from dim_suministro;
-----------------------
-- visualizamos en promocion
-----------------------
select * from dim_promocion;
-----------------------
-- visualizamos en tiempo
-----------------------
select * from dim_tiempo;
-----------------------
-- visualizamos en productos
-----------------------
select * from fact_productos;