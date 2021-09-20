drop database if exists firma2pp23;

create database
	firma2pp23;
	
use firma2pp23;

create table projekt(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	cijena decimal(18,2)
);

create table sudjelovanje(
	projekt int,
	programer int,
	datumpoèetka datetime,
	datumkraja datetime,
	tvrtka int
);

create table programer(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	datumpocetka datetime,
	placa decimal (18,2)
);

alter table sudjelovanje add foreign key (programer) references programer(sifra);
alter table sudjelovanje add foreign key (projekt) references projekt(sifra);
