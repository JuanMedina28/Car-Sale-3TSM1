create database CarSale;

\c CarSale;

create extension pgcrypto;

create table empleado(
id_empleado serial primary key,  
nombre varchar(35) not null, 
apellido_paterno varchar(20), 
apellido_materno varchar(20), 
correo_electronico varchar(30) not null unique, 
contraseña varchar(200) not null, 
no_telefono bigint not null, 
calle varchar(20) not null, 
colonia varchar (20) not null, 
municipio varchar(25) not null , 
estado varchar (25) not null, 
cp int not null, 
area varchar(30) not null, 
puesto varchar(25) not null, 
sueldo money default 0);

create table tarjeta(
tipo_tarjeta varchar(15) not null, 
no_tarjeta varchar(25) primary key, 
cvv int not null, 
fecha_vence varchar(15) not null;

create table cliente(
id_cliente serial primary key, 
nombre_u varchar(35) not null, 
apellido_paterno varchar(20), 
apellido_materno varchar(20), 
no_telefono bigint not null, 
correo_electronico varchar(30) not null unique, 
contraseña varchar(200) not null);






insert into empleado values(
'Gerardo', 
'Vite', 
'San Juan', 
'gvite@carsale.com', 
PGP_SYM_ENCRYPT('Gvite$2020', 'AES_KEY'), 
5543476325, 
'Carretera Federal Mexico Pachuca Km 37.5', 
'San Martin', 'Tecamac', 
'Estado de México', 
55178, 
'Administración', 
'Administrador', 
200000);