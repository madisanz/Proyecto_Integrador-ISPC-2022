-- ---------------------------------------------------------------------------------------------------------------
-- TRABAJO INTEGRADOR – Programación Inicial y Bases de Datos : BASE DE DATOS DE DISQUERIA GRUPO 1 -TSIT4.0 - 2022
-- ---------------------------------------------------------------------------------------------------------------
create database if not exists DISQUERIA_GRUPO_ISPT;

use DISQUERIA_GRUPO_ISPT;
-- -----------------------------------------------------
-- Tabla GENERO
-- -----------------------------------------------------
create table if not exists  GENERO (
    id_genero int not null auto_increment primary key,
    nombre varchar(50)
);
-- -----------------------------------------------------
-- Tabla DISCOGRAFICA
-- -----------------------------------------------------
create table if not exists DISCOGRAFICA(
    id_discografica int not null auto_increment primary key,
    nombre varchar(50)
);
-- -----------------------------------------------------
-- Tabla FORMATO
-- -----------------------------------------------------
create table if not exists FORMATO(
    id_formato int not null auto_increment primary key,
    tipo varchar(50)
);
-- -----------------------------------------------------
-- Tabla INTERPRETE
-- -----------------------------------------------------
create table if not exists INTERPRETE(
    id_interprete int not null auto_increment primary key,
    nombre varchar(50),
    apellido varchar(50),
    nacionalidad varchar(50),
    foto varchar(100)
);
-- -----------------------------------------------------
-- Tabla ALBUM
-- -----------------------------------------------------
create table if not exists ALBUM(
    id_album int auto_increment primary key,
    cod_album int not null,
    nombre varchar(100) not null,
    id_interprete int not null,
    id_genero int not null,
    cant_temas int not null,
    id_discografica int not null,
    id_formato int not null,
    fec_lanzamiento date,
    precio real not null,
    cantidad int not null,
    caratula varchar(100),
    foreign key(id_genero) references genero(id_genero),
    foreign key(id_discografica) references discografica(id_discografica),
    foreign key(id_formato) references formato(id_formato)
    ); 
-- -----------------------------------------------------
-- Tabla TEMA
-- -----------------------------------------------------
create table if not exists  TEMA(
        id_tema int auto_increment primary key,
        titulo varchar(100),
        duracion time,
        autor varchar(100) not null,
        compositor varchar(100) not null,
        id_album int,
        id_interprete int,
        foreign key(id_album) references album(id_album),
        foreign key(id_interprete) references interprete(id_interprete)
    );


use DISQUERIA_GRUPO_ISPT;

-------------------------------------------------------
-- Tabla INTERPRETE - INSERTANDO DATOS 
-------------------------------------------------------

use DISQUERIA_GRUPO_ISPT;
insert into INTERPRETE values (1,'Laura','Pausini','Italia',null);
insert into INTERPRETE values (2,'Abel','Pinto','Argentina',null);
insert into INTERPRETE values (3,'Lali','Esposito','Argentina',null);
insert into INTERPRETE values (4,'Daddy','Yankee','Puerto Rico',null);
insert into INTERPRETE values (5,'Madonna','Ciccone','Estadounidense',null);
insert into INTERPRETE values (6,' Lady','Gaga ',' Estadounidense ',null);
insert into INTERPRETE values (7,'Damian','Cordoba','Argentina',null);
insert into INTERPRETE values (8,'Chaqueño','Palavecino','Argentina',null);
insert into INTERPRETE values (9,'Hermanos','Pimpinela','Argentina',null);
insert into INTERPRETE values (10,'Ulises','Bueno','Argentina',null);
insert into INTERPRETE values (11,'Leo','Mattioli','Argentina',null);
insert into INTERPRETE values (12,'Carlos','Gardel','Argentina',null);
insert into INTERPRETE values (13,'Aztor','Piazzolla','Argentina',null);
insert into INTERPRETE values (14,'Michael','Jackson','USA',null);
insert into INTERPRETE values (15,'Luis Miguel','Gallego Basteri','Mexico',null);
insert into INTERPRETE values (16,'José Luis','Perales','España',null);
insert into INTERPRETE values (17,'Julio','Iglesias','España',null);

-----------------------------------------------------------
-- Tabla DISCOGRAFICA - INSERTANDO DATOS 
-------------------------------------------------------
insert into DISCOGRAFICA values (1,'INDEPENDIENTE'),(2,'SONY MUSIC ARGENTINA'),(3,'WEA'),(4,'UNIVERSAL'),(5,'COLUMBIA RECORDS'),(6,'Cuarteto');
-----------------------------------------------------------
-- Tabla GENERO - INSERTANDO DATOS 
-------------------------------------------------------
insert into GENERO values (1,'Pop'),(2,'Tango'),(3,'Bolero-Romantico'),(4,'Folklore'),(5,'reggaeton'),(6,'Cuarteto');
-----------------------------------------------------------
-- Tabla FORMATO - INSERTANDO DATOS 
-------------------------------------------------------
insert into FORMATO values (1,'CD'),(2,'DIGITAL'),(3,'MP3'),(4,'LONG PLAY'),(5,'CASSETTE');
-----------------------------------------------------------
-- Tabla ALBUM - INSERTANDO DATOS 
-------------------------------------------------------
insert into ALBUM values (2,1234569,'El Amor en mi vida',2,4,15,1,1,'2021-05-28',1000,1,'https://www.clarin.com/img/2021/05/28/AhoflABb5_720x0__1.jpg'); 
insert into ALBUM values (1,1234568,'Las Cosas Que Vives',1,1,12,3,1,'1996-01-01',1000,1,null);
insert into ALBUM values (3,1234570,'A bailar',3,1,12,2,1,'2014-03-21',1000,1,null);
-----------------------------------------------------------
-- Tabla TEMAS - INSERTANDO DATOS 
-------------------------------------------------------
insert into TEMA values (2, 'ASESINA', '00:02:48', 'LALI ESPOSITO', 'LALI ESPOSITO', 3, 3);

