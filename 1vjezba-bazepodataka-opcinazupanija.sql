drop database if exists zupanijaopcina;

create database zupanijaopcina;

use zupanijaopcina;

create table zupanija(
	sifra int not null primary key auto_increment,
	naziv varchar(50),
	zupan int
);

create table zupan(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50)
);

create table opcina(
	sifra int not null primary key auto_increment,
	zupanija int,
	naziv varchar(50)
);


create table mjesto(
	sifra int not null primary key auto_increment,
	opcina int,
	naziv varchar(50)
);


alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);


insert into zupanija (naziv) values
('osjecka'),('zagrebacka'),('splitska');

select * from zupanija;

insert into opcina (naziv) values ('visnjevac'),('josipovac'),('darda'),('bilje'),('bizovac'),('samatovci');

select * from opcina;

insert into mjesto (naziv) values ('os'),('zg'),('sp'),('ri'),('vž'),('bm'),('du'),('zu'),('sb'),('rb'),('vg'),('èk');

select * from mjesto;

insert into zupan (ime,prezime) values ('Slavko','M'),('Mirko','B'),('jozef','H');

select * from zupan;

select * from mjesto;

update mjesto set naziv='aa' where sifra=1;
update mjesto set naziv='bb' where sifra=2;
update mjesto set naziv='cc' where sifra=3;

select * from opcina;

delete from opcina where sifra=2;

delete from opcina where naziv='bizovac';

