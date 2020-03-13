create database CarSale;

\c CarSale;

create extension pgcrypto;

create table usuario(
id_usuario serial primary key, 
nombre varchar(35) not null, 
apellido_paterno varchar(20), 
apellido_materno varchar(20), 
correo_electronico varchar(30) not null unique, 
clave varchar(200) not null, 
no_telefono varchar(10) not null, 
tipo_usuario varchar(20) not null default 'usuario');

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



insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Jose', 'Perez', 'Lopez', 'josel12@gmail.com', PGP_SYM_ENCRYPT('josePL$13', 'AES_KEY'), 154789625, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Roberto', 'Mendez', 'Robles', 'RomenRo@gmail.com', PGP_SYM_ENCRYPT('rmr$1820', 'AES_KEY'), 1546789623, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Miguel', 'Lopez', 'Roman', 'Miguel123@gmail.com', PGP_SYM_ENCRYPT('miguelito$145', 'AES_KEY'), 1548741512, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Alex', 'Santiago', 'Mendoza', 'alexx1512.com', PGP_SYM_ENCRYPT('alexxxxx$20', 'AES_KEY'), 5543476325, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Judas', 'Tadeo', 'Tadeo', 'jdastt@gmail.com', PGP_SYM_ENCRYPT('ttjus$131', 'AES_KEY'), 7845129645, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Daniel', 'Cruz', 'Cruz', 'ccdani@gmail.com', PGP_SYM_ENCRYPT('nidacc$12', 'AES_KEY'), 74610215465, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Gabril', 'Hernandez', 'Sanchez', 'Gabisan@gmail.com', PGP_SYM_ENCRYPT('sansangabi$132', 'AES_KEY'), 5548751512, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Victor', 'Manuel', 'Gutierrez', 'vixmanu@gmail.com', PGP_SYM_ENCRYPT('vmgas$12', 'AES_KEY'), 5516457841, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Anel', 'Cruz', 'Crucez', 'cruzesanel@gmail.com', PGP_SYM_ENCRYPT('dios$15', 'AES_KEY'), 5545781214,'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Carlos', 'Zuvirie', 'Montes', 'xuvixa@gmail.com', PGP_SYM_ENCRYPT('jaskj$12', 'AES_KEY'), 5578963214, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Franciso', 'Cruz', 'De la cruz', 'delacruzfrab@gmail.com', PGP_SYM_ENCRYPT('ccaj$12', 'AES_KEY'), 5543496325, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Zoila', 'Lavaca', 'Del monte', 'YosoyZ@gmail.com', PGP_SYM_ENCRYPT('vaquita$12', 'AES_KEY'), 5545518412, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Marta', 'Lopez', 'Montes', 'martita@gmail.com', PGP_SYM_ENCRYPT('chiquis$22', 'AES_KEY'), 5545123812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Cristian', 'Ronan', 'Zan', 'cr777@gmail.com', PGP_SYM_ENCRYPT('77sa$12', 'AES_KEY'), 5113148812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Brayan', 'Saldivar', 'Orozco', 'uwubra@gmail.com', PGP_SYM_ENCRYPT('uwu$4561', 'AES_KEY'), 5545968812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Irving', 'Andres', 'Garcia', 'irvincito@gmail.com', PGP_SYM_ENCRYPT('iiirvibg$121', 'AES_KEY'), 5545968812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Alexander', 'Perez', 'Cruz', 'alexitocruz@gmail.com', PGP_SYM_ENCRYPT('gatos$522', 'AES_KEY'), 5545968812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Keyla','Montes', 'De Oca', 'keylita@gmail.com', PGP_SYM_ENCRYPT('zota$12', 'AES_KEY'), 584157812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Jose', 'Laras', 'Mangos', 'maguito@gmail.com', PGP_SYM_ENCRYPT('15456$121', 'AES_KEY'), 521310812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Maria', 'Marimar', 'Solares', 'marianita@gmail.com', PGP_SYM_ENCRYPT('marmari$12', 'AES_KEY'), 5545968812, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Rebeca', 'Sol', 'Linares', 'solecitos@gmail.com', PGP_SYM_ENCRYPT('lunita$12', 'AES_KEY'), 1245789645, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Brenda', 'Solares', 'Bautista', 'bredasol@gmail.com', PGP_SYM_ENCRYPT('diego$15', 'AES_KEY'), 1221154547, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Sara', 'Morales', 'Vidal', 'sarsara@gmail.com', PGP_SYM_ENCRYPT('gatoos$12', 'AES_KEY'), 969685747, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Pedro', 'Mendez', 'Gonzales', 'ppsan@gmail.com', PGP_SYM_ENCRYPT('violeta$165', 'AES_KEY'), 1674812314, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Jaime', 'Perez', 'San Roman', 'sanjaime@gmail.com', PGP_SYM_ENCRYPT('jaime13', 'AES_KEY'), 745789625, 'Cliente');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Ruben', 'Martinez', 'Raton', 'ratoncito@gmail.com', PGP_SYM_ENCRYPT('ruven$1820', 'AES_KEY'), 1236789623, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Marco', 'Lan', 'Roca', 'La roca@gmail.com', PGP_SYM_ENCRYPT('rockk$145', 'AES_KEY'), 1548458712, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Alexis', 'San Juan', 'Mandas', 'aalex@gmail.com', PGP_SYM_ENCRYPT('dumno$20', 'AES_KEY'), 5545187455, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Janita', 'Torres', 'Tarmian', 'juaniss@gmail.com', PGP_SYM_ENCRYPT('junita$131', 'AES_KEY'), 7785129645, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Dana', 'Cruz', 'Carmen', 'dannaa@gmail.com', PGP_SYM_ENCRYPT('paola$12', 'AES_KEY'), 5487151245, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Gabriela', 'Hernandez', 'Santos', 'Gabita@gmail.com', PGP_SYM_ENCRYPT('sansan$132', 'AES_KEY'), 5587452178, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Victoria', 'Manuela', 'Gutis', 'victorias@gmail.com', PGP_SYM_ENCRYPT('vacass$12', 'AES_KEY'), 5587141526, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Ana', 'Crucez', 'Crucez', 'cruzito@gmail.com', PGP_SYM_ENCRYPT('vancos$15', 'AES_KEY'), 5545778787, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Carmencita', 'Zuvan', 'Martinez', 'carcarmen@gmail.com', PGP_SYM_ENCRYPT('chayote$12', 'AES_KEY'), 7461024578, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Francisca', 'Son', 'Luz', 'pancha@gmail.com', PGP_SYM_ENCRYPT('panecito$12', 'AES_KEY'), 5543484848, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Zhazam', 'Lengoz', 'Demeter', 'shzamn@gmail.com', PGP_SYM_ENCRYPT('trueno$12', 'AES_KEY'), 5549698742, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Martin', 'Hernandez', 'Moncabo', 'macos@gmail.com', PGP_SYM_ENCRYPT('josue$22', 'AES_KEY'), 5545187450, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Cristiana', 'Ronan', 'Cruz', 'cristiin@gmail.com', PGP_SYM_ENCRYPT('criiiis445$12', 'AES_KEY'), 5178455125, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Beto', 'Salva', 'Ortiz', 'betoon@gmail.com', PGP_SYM_ENCRYPT('salva$4561', 'AES_KEY'), 5524524549, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Irina', 'Aran', 'Gomez', 'gemamm@gmail.com', PGP_SYM_ENCRYPT('anime$121', 'AES_KEY'), 5547862512, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Alexar', 'Patern', 'Roman', 'alexa@gmail.com', PGP_SYM_ENCRYPT('gatito$522', 'AES_KEY'),  5596321848, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Konj','Martinez', 'Martinez', 'kmmk@gmail.com', PGP_SYM_ENCRYPT('konji$12', 'AES_KEY'), 7859745126, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Dante', 'Lomelli', 'Mendez', 'danteP@gmail.com', PGP_SYM_ENCRYPT('dantes12$121', 'AES_KEY'), 5985214785, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Marcos', 'Montes', 'Santos', 'Marcosan@gmail.com', PGP_SYM_ENCRYPT('rabid$12', 'AES_KEY'), 9655933356, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Ramona', 'Orozco', 'Santos', 'Romncita@gmail.com', PGP_SYM_ENCRYPT('luness$12', 'AES_KEY'), 7845798654, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Berto', 'Rodrigez', 'Ulises', 'Berton@gmail.com', PGP_SYM_ENCRYPT('jefes$15', 'AES_KEY'), 7461154547, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Sandra', 'Montes', 'Valdir', 'sandritass@gmail.com', PGP_SYM_ENCRYPT('perrito$12', 'AES_KEY'), 961685747, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Paco', 'Aguilar', 'Acua', 'ppsan@gmail.com', PGP_SYM_ENCRYPT('violeta$165', 'AES_KEY'), 1694812314, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Ewinn', 'Davila', 'Orozco', 'davisE@gmail.com', PGP_SYM_ENCRYPT('sanjo$165', 'AES_KEY'), 1874532654, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Alejandro', 'Paredes', 'Sanchez', 'alepasa@gmail.com', PGP_SYM_ENCRYPT('pollo$265', 'AES_KEY'), 1874532654, 'Empleado');

insert into usuario(nombre,apellido_paterno,apellido_materno,correo_electronico,clave,no_telefono,tipo_usuario) values('Josue', 'Reyes', 'Ponce', 'triste41@gmail.com', PGP_SYM_ENCRYPT('tacos$265', 'AES_KEY'), 1874532654, 'Empleado');


insert into tarjeta values('débito', '4452 1254 8547 9658', PGP_SYM_ENCRYPT('245','AES_KEY'), '03/22');
insert into tarjeta values('débito', '4145 2475 4589 6552', PGP_SYM_ENCRYPT('225','AES_KEY'), '04/22');
insert into tarjeta values('débito', '4236 5214 6985 2562', PGP_SYM_ENCRYPT('214','AES_KEY'), '01/22');
insert into tarjeta values('débito', '4152 8569 6585 6658', PGP_SYM_ENCRYPT('985','AES_KEY'), '02/22');
insert into tarjeta values('débito', '4233 2125 2254 1415', PGP_SYM_ENCRYPT('365','AES_KEY'), '05/22');
insert into tarjeta values('débito', '4441 1458 3258 1478', PGP_SYM_ENCRYPT('145','AES_KEY'), '03/23');
insert into tarjeta values('débito', '4496 3254 0120 0212', PGP_SYM_ENCRYPT('854','AES_KEY'), '09/22');
insert into tarjeta values('débito', '4432 0120 4152 6585', PGP_SYM_ENCRYPT('654','AES_KEY'), '01/24');
insert into tarjeta values('débito', '4411 4158 6574 3652', PGP_SYM_ENCRYPT('954','AES_KEY'), '11/23');
insert into tarjeta values('débito', '4401 2541 3256 2857', PGP_SYM_ENCRYPT('325','AES_KEY'), '12/23');
insert into tarjeta values('débito', '5021 2541 5855 8965', PGP_SYM_ENCRYPT('369','AES_KEY'), '02/22');
insert into tarjeta values('débito', '5263 5474 5858 1412', PGP_SYM_ENCRYPT('125','AES_KEY'), '04/22');
insert into tarjeta values('débito', '5415 2415 8575 9658', PGP_SYM_ENCRYPT('555','AES_KEY'), '03/22');
insert into tarjeta values('débito', '5036 2856 9658 1457', PGP_SYM_ENCRYPT('748','AES_KEY'), '06/22');
insert into tarjeta values('débito', '5399 685 1425 6327', PGP_SYM_ENCRYPT('874','AES_KEY'), '08/22');
insert into tarjeta values('débito', '5362 8855 9985 4745', PGP_SYM_ENCRYPT('335','AES_KEY'), '03/23');
insert into tarjeta values('débito', '5302 0141 6510 3625', PGP_SYM_ENCRYPT('225','AES_KEY'), '03/23');
insert into tarjeta values('débito', '5324 9666 1487 2015', PGP_SYM_ENCRYPT('665','AES_KEY'), '03/23');
insert into tarjeta values('débito', '5265 8547 1122 0101', PGP_SYM_ENCRYPT('114','AES_KEY'), '03/23');
insert into tarjeta values('débito', '4685 2145 4458 6632', PGP_SYM_ENCRYPT('288','AES_KEY'), '03/24');
insert into tarjeta values('débito', '4433 2145 2222 1201', PGP_SYM_ENCRYPT('997','AES_KEY'), '03/24');
insert into tarjeta values('débito', '4695 8547 1236 2210', PGP_SYM_ENCRYPT('140','AES_KEY'), '03/24');
insert into tarjeta values('débito', '4445 2122 2121 1414', PGP_SYM_ENCRYPT('012','AES_KEY'), '03/25');
insert into tarjeta values('débito', '4453 2125 2214 2214', PGP_SYM_ENCRYPT('102','AES_KEY'), '01/22');
insert into tarjeta values('crédito', '5023 6525 9856 4758', PGP_SYM_ENCRYPT('335','AES_KEY'), '02/22');
insert into tarjeta values('crédito', '5201 2526 3251 4415', PGP_SYM_ENCRYPT('851','AES_KEY'), '03/22');
insert into tarjeta values('crédito', '5021 1401 4412 7856', PGP_SYM_ENCRYPT('110','AES_KEY'), '09/22');
insert into tarjeta values('crédito', '5236 2521 2020 2123', PGP_SYM_ENCRYPT('306','AES_KEY'), '03/22');
insert into tarjeta values('crédito', '5023 6529 5248 5214', PGP_SYM_ENCRYPT('740','AES_KEY'), '06/22');
insert into tarjeta values('crédito', '4444 5214 1259 8548', PGP_SYM_ENCRYPT('149','AES_KEY'), '08/22');
insert into tarjeta values('crédito', '4474 7474 4474 1142', PGP_SYM_ENCRYPT('202','AES_KEY'), '09/22');
insert into tarjeta values('crédito', '5023 2020 2125 2252', PGP_SYM_ENCRYPT('230','AES_KEY'), '03/22');
insert into tarjeta values('crédito', '4698 5425 5565 2414', PGP_SYM_ENCRYPT('201','AES_KEY'), '03/23');
insert into tarjeta values('crédito', '5032 5256 8575 9989', PGP_SYM_ENCRYPT('207','AES_KEY'), '03/23');
insert into tarjeta values('crédito', '5124 5252 5548 7745', PGP_SYM_ENCRYPT('208','AES_KEY'), '03/24');
insert into tarjeta values('crédito', '4665 5252 5589 5587', PGP_SYM_ENCRYPT('900','AES_KEY'), '03/25');
insert into tarjeta values('crédito', '4521 4125 9856 3362', PGP_SYM_ENCRYPT('290','AES_KEY'), '03/25');
insert into tarjeta values('crédito', '4532 0010 2232 0000', PGP_SYM_ENCRYPT('203','AES_KEY'), '03/25');
insert into tarjeta values('crédito', '5036 5268 9896 9986', PGP_SYM_ENCRYPT('770','AES_KEY'), '03/25');
insert into tarjeta values('crédito', '5014 5505 3526 5528', PGP_SYM_ENCRYPT('780','AES_KEY'), '01/2');
insert into tarjeta values('crédito', '5963 2265 2252 2214', PGP_SYM_ENCRYPT('205','AES_KEY'), '08/22');
insert into tarjeta values('crédito', '5145 2154 2255 1425', PGP_SYM_ENCRYPT('236','AES_KEY'), '09/22');
insert into tarjeta values('crédito', '4463 9589 6696 5585', PGP_SYM_ENCRYPT('060','AES_KEY'), '06/23');
insert into tarjeta values('crédito', '4152 4147 4585 6695', PGP_SYM_ENCRYPT('030','AES_KEY'), '03/24');
insert into tarjeta values('crédito', '5233 2212 2214 5245', PGP_SYM_ENCRYPT('040','AES_KEY'), '03/21');
insert into tarjeta values('crédito', '4452 3133 5269 2152', PGP_SYM_ENCRYPT('001','AES_KEY'), '03/21');
insert into tarjeta values('crédito', '4451 8596 9978 6685', PGP_SYM_ENCRYPT('950','AES_KEY'), '03/22');
insert into tarjeta values('crédito', '4674 8854 1123 3321', PGP_SYM_ENCRYPT('021','AES_KEY'), '03/22');
insert into tarjeta values('crédito', '5021 4585 6954 7458', PGP_SYM_ENCRYPT('200','AES_KEY'), '03/24');
insert into tarjeta values('crédito', '4125 7485 7458 4745', PGP_SYM_ENCRYPT('233','AES_KEY'), '03/24');