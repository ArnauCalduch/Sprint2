--Comprovem que no existeix ninguna database amb el mateix nom
drop database youtube;
--Creem la base de dades
create database youtube;
--Utilitzem la base de dades
use youtube;
--Creem les taules

create table users (
	id_user int primary key,
	email varchar(255) not null,
	password varchar(255) not null,
	name varchar(255) not null,
	birthdate date not null,
	sex varchar(255),
	country varchar(255) not null,
	postal_code int not null
);

create table channels (
	id_channel int primary key,
	id_user int not null,
	name varchar(255) not null,
	description varchar(255) not null,
	creation_date date not null,
	subscibers int not null,
	foreign key (id_user) references users(id_user)
);

create table subscribers (
	id_subscriber int primary key,
	id_user int not null,
	id_channel int not null,
	foreign key (id_user) references users(id_user),
	foreign key (id_channel) references channels(id_channel)
);

create table videos (
	id_video int primary key,
	id_channel int not null,
	title varchar(255) not null,
	description varchar(255) not null,
	size float not null,
	filename varchar(255) not null,
	length float not null,
	thumbnail varchar(255) not null,
	views int not null,
	likes int not null,
	dislikes int not null,
	status varchar(255) not null,
	post_date date not null,
	hour time not null,
	foreign key (id_channel) references channels(id_channel)
);

create table tags (
	id_tag int primary key,
	id_video int not null,
	name varchar(255) not null,
	foreign key (id_video) references videos(id_video)
);

create table comments (
	id_comment int primary key,
	id_user int not null,
	id_video int not null,
	comment varchar(255) not null,
	post_date date not null,
	hour time not null,
	foreign key (id_user) references users(id_user),
	foreign key (id_video) references videos(id_video)
);

create table feedbacks (
	id_feedback int primary key,
	id_user int not null,
	id_video int not null,
	feedback boolean not null,
	post_date date not null,
	hour time not null,
	foreign key (id_user) references users(id_user),
	foreign key (id_video) references videos(id_video)
);

create table playlists (
	id_playlist int primary key,
	id_user int not null,
	id_feedback int not null,
	name varchar(255) not null,
	creation_date date not null,
	status varchar(255) not null,
	foreign key (id_user) references users(id_user),
	foreign key (id_feedback) references feedbacks(id_feedback)
);

//Insertem els valors

insert into users (id_user,email,password,name,birthdate,sex,country,postal_code)
values (1,"arnaucalduch@gmail.com","pass123","Arnau Calduch Rivas",'2000-10-27',"male","Spain",08014);

insert into users (id_user,email,password,name,birthdate,sex,country,postal_code)
values (2,"mrjagger@gmail.com","pass321","Pepito Jagger Cavalera",'1995-05-13',"male","Spain",2813);

insert into users (id_user,email,password,name,birthdate,sex,country,postal_code)
values (3,"kentaro@gmail.com","berserk","Kentaro Miura",'1966-07-11',"male","Japan",120267);

insert into users (id_user,email,password,name,birthdate,sex,country,postal_code)
values (4,"gretta@gmail.com","890321","Gretta Bamdebumbo",'1997-11-04',"female","Germany",01067);

insert into users (id_user,email,password,name,birthdate,sex,country,postal_code)
values (5,"anna@gmail.com","pato123","Anna Rivas Bartolí",'1971-06-27',"female","Spain",08014);

---------------------------------------------------------------------------------

insert into channels (id_channel,id_user,name,description,creation_date,subscribers)
values (1,1,"ArnauTube","Canal de música!",'2021-04-25',1);

insert into channels (id_channel,id_user,name,description,creation_date,subscribers)
values (2,2,"MrJagger","¡Canal de humor!",'2013-09-13',2);

insert into channels (id_channel,id_user,name,description,creation_date,subscribers)
values (3,4,"Gretta Fitness","Sportkanal!",'2020-07-02',2);

----------------------------------------------------------------------------------

insert into subscribers (id_subscriber,id_user,id_channel)
values (1,1,2);

insert into subscribers (id_subscriber,id_user,id_channel)
values (2,1,3);

insert into subscribers (id_subscriber,id_user,id_channel)
values (3,5,1);

insert into subscribers (id_subscriber,id_user,id_channel)
values (4,3,3);

insert into subscribers (id_subscriber,id_user,id_channel)
values (5,4,2);

----------------------------------------------------------------------------------

insert into videos (id_video,id_channel,title,description,size,filename,length,thumbnail,views,likes,dislikes,status,post_date,hour)
values (1,2,"El vídeo normal","Si es un vídeo normal",13.5,"video_normal.mp4",4.09,"portada_normal.jpg",13,3,1,"public",'2015-06-13','12:01:28');

insert into videos (id_video,id_channel,title,description,size,filename,length,thumbnail,views,likes,dislikes,status,post_date,hour)
values (2,3,"Übung zu Hause","Heute werden wir lernen, wie man zu hause trainiert",10.5,"haus_übung.mp4",3.35,"bild_haus.jpg",7,1,0,"public",'2020-07-10','09:04:57');

insert into videos (id_video,id_channel,title,description,size,filename,length,thumbnail,views,likes,dislikes,status,post_date,hour)
values (3,1,"Psychosocial cover","Espero que us agradi!",15.23,"cover_psycho.mp4",5.03,"portada_psycho.jpg",5,2,0,"public",'2021-04-28','14:10:05');

-----------------------------------------------------------------------------------

insert into tags (id_tag,id_video,name)
values (1,1,"humor");

insert into tags (id_tag,id_video,name)
values (2,1,"spanish");

insert into tags (id_tag,id_video,name)
values (3,2,"sports");

insert into tags (id_tag,id_video,name)
values (4,2,"german");

insert into tags (id_tag,id_video,name)
values (5,3,"music");

insert into tags (id_tag,id_video,name)
values (5,3,"catalan");

-----------------------------------------------------------------------------------

insert into comments (id_comment,id_user,id_video,comment,post_date,hour)
values (1,1,1,"Gran vídeo!",'2015-06-15','09:35:21');

insert into comments (id_comment,id_user,id_video,comment,post_date,hour)
values (2,2,5,"Danke, es hat mir sehr geholfen",'2020-10-03','12:44:01');

insert into comments (id_comment,id_user,id_video,comment,post_date,hour)
values (3,2,3,"Brutal!",'2021-04-30','21:15:59');

------------------------------------------------------------------------------------

insert into feedbacks (id_feedback,id_user,id_video,feedback,post_date,hour)
values (1,1,1,true,'2015-06-15','09:34:55');

insert into feedbacks (id_feedback,id_user,id_video,feedback,post_date,hour)
values (2,2,3,true,'2021-04-30','21:14:43');

insert into feedbacks (id_feedback,id_user,id_video,feedback,post_date,hour)
values (3,4,1,false,'2015-08-22','11:21:04');

insert into feedbacks (id_feedback,id_user,id_video,feedback,post_date,hour)
values (4,5,1,true,'2018-10-08','15:28:14');

insert into feedbacks (id_feedback,id_user,id_video,feedback,post_date,hour)
values (5,5,3,true,'2021-04-29','12:08:44');

insert into feedbacks (id_feedback,id_user,id_video,feedback,post_date,hour)
values (6,3,1,true,'2016-01-21','19:40:31');

insert into feedbacks (id_feedback,id_user,id_video,feedback,post_date,hour)
values (7,5,2,true,'2020-10-03','12:45:12');

-----------------------------------------------------------------------------------

insert into playlists (id_playlist,id_user,id_feedback,name,creation_date,status)
values (1,1,1,"Videos jagger",'2020-04-21',"public");

insert into playlists (id_playlist,id_user,id_feedback,name,creation_date,status)
values (2,2,2,"Videos musica",'2021-06-13',"private");

insert into playlists (id_playlist,id_user,id_feedback,name,creation_date,status)
values (3,5,7,"Videos esports",'2020-10-05',"private");