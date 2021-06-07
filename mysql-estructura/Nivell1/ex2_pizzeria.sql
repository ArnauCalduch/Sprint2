--Comprovem que no existeix ninguna database amb el mateix nom
drop database pizzeria
--Creem la base de dades
create database pizzeria;
--Utilitzem la base de dades
use pizzeria;
--Creem les taules

create table provincies (
	id_provincia int primary key,
	nom varchar(255)
);

create table localitats (
	id_localitat int primary key,
	id_provincia int not null,
	nom varchar(255),
	foreign key (id_provincia) references provincies(id_provincia)
);

create table adreces (
	id_adreca int primary key,
	id_localitat int not null,
	carrer varchar(255) not null,
	numero int not null,
	pis int not null,
	porta int not null,
	foreign key (id_localitat) references localitats(id_localitat)
);

create table clients (
	id_client int primary key,
	id_adreca int not null,
	nom varchar(255) not null,
	cognoms varchar(255) not null,
	codi_postal int not null,
	telefon int not null,
	foreign key (id_adreca) references adreces(id_adreca)
);

create table botigues (
	id_botiga int primary key,
	id_adreca int not null,
	codi_postal int not null,
	foreign key (id_adreca) references adreces(id_adreca)
);

create table empleats (
	id_empleat int primary key,
	id_botiga int not null,
	nom varchar(255) not null,
	cognoms varchar(255) not null,
	NIF varchar(255) not null,
	telefon int not null,
	cuiner boolean,
	repartidor boolean,
	foreign key (id_botiga) references botigues(id_botiga)
);

create table comandes (
	id_comanda int primary key,
	id_botiga int not null,
	id_repartidor int,
	id_client int not null,
	data date not null,
	hora time not null,
	domicili boolean not null,
	hora_domicili time,
	num_pizzes int not null,
	num_hamburgueses int not null,
	num_begudes int not null,
	preu float not null,
	foreign key (id_botiga) references botigues(id_botiga),
	foreign key (id_repartidor) references empleats(id_empleat),
	foreign key (id_client) references clients(id_client)
);

create table categories (
	id_categoria int primary key,
	nom varchar(255) not null
);

create table productes (
	id_producte int primary key,
	id_categoria int,
	tipus varchar(255) not null,
	nom varchar(255) not null,
	descripcio varchar(255) not null,
	imatge varchar(255) not null,
	preu float not null,
	foreign key (id_categoria) references categories(id_categoria)
);

create table detalls_comanda (
	id_detall int primary key,
	id_comanda int not null,
	id_producte int not null,
	foreign key (id_comanda) references comandes(id_comanda),
	foreign key (id_producte) references productes(id_producte)
);

--Insertem els valors

insert into provincies (id_provincia,nom)
values (1,"Barcelona");

insert into provincies (id_provincia,nom)
values (2,"Girona");

insert into provincies (id_provincia,nom)
values (3,"Tarragona");

insert into provincies (id_provincia,nom)
values (4,"Lleida");



insert into localitats (id_localitat,id_provincia,nom)
values (1,1,"Barcelona");

insert into localitats (id_localitat,id_provincia,nom)
values (2,2,"Girona");

insert into localitats (id_localitat,id_provincia,nom)
values (3,1,"Moià");

insert into localitats (id_localitat,id_provincia,nom)
values (4,2,"Olot");

insert into localitats (id_localitat,id_provincia,nom)
values (5,3,"Tarragona");

insert into localitats (id_localitat,id_provincia,nom)
values (6,4,"Sort");

insert into localitats (id_localitat,id_provincia,nom)
values (7,3,"Amposta");

insert into localitats (id_localitat,id_provincia,nom)
values (8,4,"Balaguer");



insert into adreces (id_adreca,id_localitat,carrer,numero,pis,porta)
values (1,1,"Leiva",85,3,5);

insert into adreces (id_adreca,id_localitat,carrer,numero,pis,porta)
values (2,1,"Almeria",13,2,1);

insert into adreces (id_adreca,id_localitat,carrer,numero,pis,porta)
values (3,1,"Vilardell",18,0,1);

insert into adreces (id_adreca,id_localitat,carrer,numero,pis,porta)
values (4,1,"Provenca",332,0,1);



insert into clients (id_client,id_adreca,nom,cognoms,codi_postal,telefon)
values (1,1,"Arnau","Calduch Rivas",08014,620359602);

insert into clients (id_client,id_adreca,nom,cognoms,codi_postal,telefon)
values (2,2,"Núria","Rivas Bartolí",08014,756294506);



insert into botigues (id_botiga,id_adreca,codi_postal)
values (1,3,08014);

insert into botigues (id_botiga,id_adreca,codi_postal)
values (2,4,08014);



insert into empleats (id_empleat,id_botiga,nom,cognoms,NIF,telefon,cuiner,repartidor)
values (1,1,"Dani","Ronda Palasi","68194661Y",619267124,false,true);

insert into empleats (id_empleat,id_botiga,nom,cognoms,NIF,telefon,cuiner,repartidor)
values (2,1,"Roger","Torrent Jimenez","67954282T",625439576,true,false);

insert into empleats (id_empleat,id_botiga,nom,cognoms,NIF,telefon,cuiner,repartidor)
values (3,2,"Anna","Rivas Bartolí","21044846F",684104105,true,false);

insert into empleats (id_empleat,id_botiga,nom,cognoms,NIF,telefon,cuiner,repartidor)
values (4,2,"Peter","Benjamin Parker","92428879K",763600696,false,true);



insert into comandes (id_comanda,id_botiga,id_repartidor,id_client,data,hora,domicili,hora_domicili,num_pizzes,num_hamburgueses,num_begudes,preu)
values (1,1,1,1,'2021-03-10','13:21:45',true,'13:36:31',2,0,2,22);

insert into comandes (id_comanda,id_botiga,id_repartidor,id_client,data,hora,domicili,hora_domicili,num_pizzes,num_hamburgueses,num_begudes,preu)
values (2,2,null,2,'2021-03-11','19:03:20',false,null,0,2,2,26.70);



insert into categories (id_categoria,nom)
values (1,"Tradicional");

insert into categories (id_categoria,nom)
values (2,"Especial");

insert into categories (id_categoria,nom)
values (3,"Vegetariana");



insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (1,1,"Pizza","Pizza Quatre formatges","Clàssica i tradicional, elaborada amb la barreja de formatges mozzarella, emmental, Edam i formatge blau.","pizza-4-formatges.jpg",9.50);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (2,2,"Pizza","Pizza Mallorquina","Amb sobrassada de Mallorca i mel, aconseguim un contrast de sabors molt desitjables al paladar.","pizza-mallorquina.jpg",10.50);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (3,3,"Pizza","Pizza Spinaci","Amb espinacs frescos trossejades, formatge de cabra i una mica de mel, al final, un cop fora del forn, incorporem les nous trossejades.","pizza-espinacs.jpg",12.50);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (4,null,"Hamburguesa","Hamburguesa amb Formatge","Formatge cheddar fos sobre carn de boví, enciam batavia, tomàquet, maionesa i pa clàssic.","cheeseburger.jpg",10.50);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (5,null,"Hamburguesa","Hamburguesa Pulled Pork","Carn de porc esfilagarsada sobre carn de boví amb salsa BBQ, formatge Cheddar, tomàquet i enciam Batavia. Amb pa clàssic i salsa maig Smoked Bacon.","pulled-pork.jpg",14.50);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (6,null,"Hamburguesa","Hamburguesa amb Bacon","Bacó, carn de boví, patates fregides, barreja d'enciams, tomàquet a rodanxes, maionesa i pa clàssic.","bacon-burger.jpg",12.50);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (7,null,"Beguda","Aigua","Aigua fresca d'1,5L","aigua.jpg",0.50);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (8,null,"Beguda","Coca-Cola","Coca-cola normal d'1,5L","cola.jpg",1.20);

insert into productes (id_producte,id_categoria,tipus,nom,descripcio,imatge,preu)
values (9,null,"Beguda","Estrella Damm","Cervesa Estrella de 0,25L","estrella.jpg",1.0);



insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (1,1,1);

insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (2,1,2);

insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (3,1,9);

insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (4,1,9);

insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (5,2,4);

insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (6,2,5);

insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (7,2,8);

insert into detalls_comanda (id_detall,id_comanda,id_producte)
values (8,2,7);