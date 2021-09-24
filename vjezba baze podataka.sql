drop database if exists edunovapp23;

create database 
    edunovapp23;

use edunovapp23;

# NULL je nepoznavanje vrijednost
create table smjer(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int null, # NULL se ne mora pisati
    cijena decimal(18,2),
    certifikat boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    smjer int not null,
    predavac int,
    datumpocetka datetime
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojugovora varchar(50)
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(32)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(100)
);

create table clan(
    grupa int not null,
    polaznik int not null
);

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);


#1
insert into smjer (naziv) values ('PHP programiranje');

#2
insert into smjer (sifra,naziv,cijena,trajanje)
values (null,'Java programiranje',5999.99,null);

# 1,2
insert into osoba(ime,prezime,email) values
('Tomislav','Jakopec','tjakopec@gmail.com'),
('Shaquille','O''Neal','shaki@gmail.com');

#3 - 19
insert into osoba(ime,prezime,email) values
('Danko','Šimić','dankosimic@gmail.com'),
('Franko','Vekić','franko.vekic@gmail.com'),
('Antonio','Hofšuster','ahofsuster@gmail.com'),
('Matija','Prša','prsa.matija@gmail.com'),
('Darko','Luketić','darko.luketic81@gmail.com'),
('Rade','Jasenovčanin','rade.jasenovcanin@yahoo.com'),
('Ante','Filipović','ante.filipovic72@gmail.com'),
('Antonia','Čičin-Ćapin','antonia.cicincapin@gmail.com'),
('Miroslav','Narančić','miro.narancic@gmail.com'),
('Tomislav','Sabolić','sabolic55@gmail.com'),
('Stefan','Babić','stefan.babic.vu@gmail.com'),
('Filip','Janješić','filip.janjesic@gmail.com'),
('Edita','Keškić','edita.keskic@gmail.com'),
('Ranko','Vukelić','rvukelic@gmail.com'),
('Tomislav','Nebes','tomislav.nebes@gmail.com'),
('Josip','Harci','harcijosip99@gmail.com'),
('Denis','Zvonarić','dzvonari@gmail.com');

#1,2
insert into predavac (osoba) values (1),(2);

# 1 - 17
insert into polaznik (osoba) values 
(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),
(14),(15),(16),(17),(18),(19);


#1
insert into grupa (smjer,naziv) values
(1,'PP23');

#2
insert into grupa (predavac,naziv,smjer) values
(1,'JP24',2);

insert into clan values 
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),
(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15)
,(1,16),(1,17);


select * from smjer;

select naziv, cijena from smjer;
select ime, prezime, ime, prezime from osoba;
select ime as osoba, oib as broj from osoba;

select *, ime from osoba;

select ime, prezime, 35 as temperatura, 'Osijek' as mjesto from osoba;

select now();

select lower(ime), upper(left(ime,3)) from osoba;

select (ime), upper(left(ime,3)) from osoba;

select * from osoba where sifra=1;

select * from osoba where sifra> 1;

select * from osoba where not
sifra=2 or ((sifra>5 and sifra<7) or sifra=12); 

select * from autor;
show tables;

show tables;

show rows;

select * from autor;


select * from autor where datumrodenja is null;

select *from autor where ime like'Rober%';

update autor set datumrodenja='1983-02-07' where sifra=3;

select * from autor where ime='Denis';

select * from izdavac;

select * from izdavac where naziv like '%d.o.o%' or naziv like '%d.oo.%' or naziv like '%do.o.%';

select * from katalog;



show tables;

select * from country;

select * from country where name='Kosovo';

insert into country (code,name) values ('KOS','Kosovo');

select * from city;

insert into city (Name,CountryCode,Population) values ('Priština donja','KOS',874.444);

select * from city where name='Priština';

update city set name='Priština' where ID=4080;


show tables;

select * from batch_users_queue;
select * from bvbasicaccountdatawithcrmid;
select * from domene;
select * from form_users;
select * from users;

select * from bvbasicaccountdatawithcrmid where lastName like 'zvona%' and firstName like 'd%';






