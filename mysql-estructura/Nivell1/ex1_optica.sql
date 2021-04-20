//Creem la base de dades
create database optica;
//Diem que utilitzem la base de dades
use optica;
//Creem les taules

create table adreca (
	id_adreca int primary key,
	carrer varchar(255) not null,
	numero int not null,
	pis int not null,
	porta int not null,
	ciutat varchar(255) not null,
	codi_postal int not null,
	pais varchar(255)
);

create table proveidors (
	id_proveidor int not null,
	nom_proveidor varchar(255) not null,
	id_adreca int not null,
	telefon int not null,
	fax int,
	NIF varchar(255) not null,
	primary key (id_proveidor),
	foreign key (id_adreca) references adreca(id_adreca)
);

create table clients (
	id_client int not null,
	id_adreca int not null,
	id_recomanant int not null,
	nom_client varchar(255) not null,
	telefon int not null,
	email varchar(255) not null,
	data_registre date not null,
	primary key (id_client),
	foreign key (id_adreca) references adreca(id_adreca),
	foreign key (id_recomanant) references clients(id_client)
);

create table empleats (
	id_empleat int not null,
	nom_empleat varchar(255) not null,
	telefon int not null,
	email varchar(255) not null,
	data_registre date not null,
	NIF varchar(255),
	primary key (id_empleat)
);

create table ulleres (
	id_ulleres int not null,
	id_proveidor int not null,
	marca varchar(255) not null,
	graduacio_left float not null,
	graduacio_right float not null,
	tipus_montura varchar(255) not null,
	color_montura varchar(255) not null,
	color_left varchar(255) not null,
	color_right varchar(255) not null,
	preu float not null,
	primary key (id_ulleres),
	foreign key (id_proveidor) references proveidors(id_proveidor)
);

create table comanda (
	id_comanda int not null,
	id_empleat int not null,
	id_client int not null,
	id_ulleres int not null,
	preu float not null,
	primary key (id_comanda),
	foreign key (id_empleat) references empleats(id_empleat),
	foreign key (id_client) references clients(id_client),
	foreign key (id_ulleres) references ulleres(id_ulleres)
);

//Insertem exemples

insert into adreca (id_adreca,carrer,numero,pis,porta,ciutat,codi_postal,pais)
values (1,"Leiva",85,3,5,"Barcelona",08014,"Espanya");

insert into adreca (id_adreca,carrer,numero,pis,porta,ciutat,codi_postal,pais)
values (2,"Alexanderplatz",23,2,3,"Berlin",10178,"Alemanya");

insert into adreca (id_adreca,carrer,numero,pis,porta,ciutat,codi_postal,pais)
values (3,"Avinguda Diagonal",375,1,1,"Barcelona",08008,"Espanya");

insert into adreca (id_adreca,carrer,numero,pis,porta,ciutat,codi_postal,pais)
values (4,"Ercilla Kalea",28,1,1,"Bilbao",48011,"Espanya");

insert into adreca (id_adreca,carrer,numero,pis,porta,ciutat,codi_postal,pais)
values (5,"Avenue Jean Jaurès",62,2,1,"Lió",69007,"Franca");

------------------------------------------------------------------------------

insert into proveidors (id_proveidor,nom_proveidor,id_adreca,telefon,fax,NIF)
values (1,"Prosun",3,750881465,901955791,"72195680Z");

insert into proveidors (id_proveidor,nom_proveidor,id_adreca,telefon,fax,NIF)
values (2,"Compaut",5,684004486,902955354,"11563964R");

------------------------------------------------------------------------------

insert into clients (id_client,id_adreca,id_recomanant,nom_client,telefon,email,data_registre)
values (1,1,1,"Arnau",620359602,"arnaucalduch@gmail.com",'2020-10-01');

insert into clients (id_client,id_adreca,id_recomanant,nom_client,telefon,email,data_registre)
values (2,4,1,"Ibai",786294340,"ibai@gmail.com",'2020-12-13');

insert into clients (id_client,id_adreca,id_recomanant,nom_client,telefon,email,data_registre)
values (3,2,2,"Mikkel",662587358,"mikkeldl@gmail.com",'2021-01-25');

------------------------------------------------------------------------------

insert into empleats (id_empleat,nom_empleat,telefon,email,data_registre,NIF)
values (1,"Anna",678449949,"anna@yahoo.com",'2020-09-10',"50932338B");

insert into empleats (id_empleat,nom_empleat,telefon,email,data_registre,NIF)
values (2,"Ferran",718972886,"ferranopt@hotmail.com",'2020-09-13',"21907527G");

------------------------------------------------------------------------------

insert into ulleres (id_ulleres,id_proveidor,marca,graduacio_left,graduacio_right,tipus_montura,color_montura,color_left,color_right,preu)
values (1,1,"Ray Ban",'1.1','0.2',"metàl·lica","negre","groc","groc",'89.99');

insert into ulleres (id_ulleres,id_proveidor,marca,graduacio_left,graduacio_right,tipus_montura,color_montura,color_left,color_right,preu)
values (2,2,"Nike",'2.3','1.1',"pasta","blau","negre","negre",'75.99');

insert into ulleres (id_ulleres,id_proveidor,marca,graduacio_left,graduacio_right,tipus_montura,color_montura,color_left,color_right,preu)
values (3,1,"Munich",'4.5','3.2',"flotant","marró","gris","gris",'119.99');

-------------------------------------------------------------------------------

insert into comandes (id_comanda,id_empleat,id_client,id_ulleres,preu)
values (1,1,1,1,'89.99');

insert into comandes (id_comanda,id_empleat,id_client,id_ulleres,preu)
values (2,1,2,2,'75.99');

insert into comandes (id_comanda,id_empleat,id_client,id_ulleres,preu)
values (3,2,3,3,'119.99');