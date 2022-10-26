-- ---------------------------------------------------------------------------------------------------------------
-- TRABAJO INTEGRADOR – Programación Inicial y Bases de Datos : BASE DE DATOS DE DISQUERIA GRUPO 1 -TSIT4.0 - 2022
-- ---------------------------------------------------------------------------------------------------------------
create database DISQUERIA_GRUPO1;

use DISQUERIA_GRUPO1;
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


   