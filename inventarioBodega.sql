-----------------------
-- MODELO BASE DE UN INVENTARIO DE PRODUCTOS
-----------------------
-- creamos la base de datos
-----------------------
create database invBodega;
-----------------------
-- usamos la base de datos
-----------------------
use invBodega;
-----------------------
-- creamos la tabla almacen
-----------------------
create table almacen(
	id_alm int primary key,
	nom_alm varchar(50),
	dir1_alm varchar(100),
	dir2_alm varchar(100),
	loc_alm varchar(70),
	pro_alm varchar(50)
);
-----------------------
-- creamos la tabla suministro
-----------------------
create table suministro(
	id_sum int primary key,
	emp_sum varchar(35),
	con_sum varchar(50),
	tel_sum varchar(12),
	ruc_sum char(11)
);
-----------------------
-- creamos la tabla promocion
-----------------------
create table promocion(
	id_promo int primary key,
	nom_promo varchar(35),
	tipo_promo varchar(50),
	coste_promo varchar(12),
	inicio_promo char(11),
	fin_promo char(11)
);
-----------------------
-- creamos la tabla tiempo
-----------------------
create table tiempo(
	id_tiempo int primary key,
	fecha date,
	anio int,
	trimestre int,
	mes int,
	semana int, 
	diaSemana varchar(10)
);
-----------------------
-- creamos la tabla productos
-----------------------
create table productos(
	id_pro int primary key,
	pro_nombre varchar(50),
	pro_cantidad int,
	pro_precio numeric(8,2),
	pro_fecha date,
	id_alm int,
	id_sum int,
	id_promo int,
	id_tiempo int
);
-----------------------
-- creamos la referencia entre productos y almacen
-----------------------
alter table productos add foreign key(id_alm)
references almacen(id_alm)
-----------------------
-- creamos la referencia entre productos y suministro
-----------------------
alter table productos add foreign key(id_sum)
references suministro(id_sum)
-----------------------
-- creamos la referencia entre productos y promocion
-----------------------
alter table productos add foreign key(id_promo)
references promocion(id_promo)
-----------------------
-- creamos la referencia entre productos y tiempo
-----------------------
alter table productos add foreign key(id_tiempo)
references tiempo(id_tiempo)
-----------------------
-- insertamos en almacen
-----------------------
insert into almacen values (1,'almacen A','Lince','Chorrillos','lima','lima');
insert into almacen values (2,'almacen B','Chorrillos','Santa Anita','lima','lima');
insert into almacen values (3,'almacen C','Santa Anita','Lince','lima','lima');
-----------------------
-- insertamos en suministro
-----------------------
insert into suministro values(1,'Oracle','Jose','4332433','12345678912');
insert into suministro values(2,'IBM','Miguel','4567876','98765432198');
insert into suministro values(3,'SUN','Rosa','3467898','76768998765');
insert into suministro values(4,'Microsoft','Carlos','6663454','32435678987');
-----------------------
-- insertamos en promocion
-----------------------
insert into promocion values(1,'A','Feriado','1000','2019-10-30','2019-10-30');
insert into promocion values(2,'B','Feriado','2000','2019-10-30','2019-10-30');
insert into promocion values(3,'C','Aniversario','1001','2019-10-30','2019-10-30');
insert into promocion values(4,'D','Aniversario','5000','2019-10-30','2019-10-30');
-----------------------
-- insertamos en tiempo
-----------------------
insert into tiempo values(1,'2019-10-30',2019,4,10,42,'lunes');
insert into tiempo values(2,'2019-08-30',2019,3,08,36,'miercoles');
insert into tiempo values(3,'2019-05-30',2019,2,05,20,'martes');
insert into tiempo values(4,'2019-12-30',2019,4,12,54,'viernes');
-----------------------
-- insertamos en productos
-----------------------
insert into productos values(1,'Tablet',200,500,'2019-10-1',1,4,1,1);
insert into productos values(2,'Escaner',120,350,'2019-11-1',1,3,1,1);
insert into productos values(3,'PC',400,2500,'2019-11-1',2,4,2,1);
insert into productos values(4,'Impresora',145,600,'2019-10-1',3,1,3,1);
insert into productos values(5,'TV',600,1900,'2019-12-1',3,2,3,1);
insert into productos values(6,'Laptop',300,2800,'2019-10-1',2,2,2,1);
insert into productos values(7,'asd',300,2800,'2019-10-1',2,2,2,1);
-----------------------
-- visualizamos en almacen
-----------------------
select * from almacen;
-----------------------
-- visualizamos en suministro
-----------------------
select * from suministro;
-----------------------
-- visualizamos en promocion
-----------------------
select * from promocion;
-----------------------
-- visualizamos en tiempo
-----------------------
select * from tiempo;
-----------------------
-- visualizamos en productos
-----------------------
select * from productos;