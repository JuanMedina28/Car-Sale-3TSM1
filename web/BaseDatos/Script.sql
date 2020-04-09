create database CarSale;

\c carsale;

create extension pgcrypto;

create table usuario(
id_usuario serial primary key, 
nombre varchar(35) not null, 
apellido_paterno varchar(20), 
apellido_materno varchar(20), 
correo_electronico varchar(30) not null unique, 
clave varchar(200) not null, 
no_telefono varchar(10) not null, 
tipo_usuario varchar(20) not null default 'Usuario');

create table empleado(
id_usuario int, primary key(id_usuario), 
foreign key (id_usuario) references usuario(id_usuario) match full on update cascade on delete cascade, 
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
cvv bytea not null, 
fecha_vence varchar(15) not null);

create table cliente(
id_usuario int, 
primary key(id_usuario), foreign key (id_usuario) references usuario(id_usuario) match full on update cascade on delete cascade,  
no_tarjeta varchar(25), foreign key (no_tarjeta) references tarjeta(no_tarjeta) match full on update cascade on delete cascade);
