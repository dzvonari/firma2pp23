show tables;

select * from smjer;

insert into smjer (naziv) values ('PHP programiranje');

insert into smjer (sifra,naziv,cijena,trajanje)
values (null,'Java programiranje','5999.99',null);

insert into osoba(ime,prezime,email) values
('Tomislav','Jakopec','tjakopec@gmail.com'),
('Shaquille','O''Neal','shaki@gmail.com');

insert into osoba(ime,prezime,email) values
('Danko','Šimić','dankosimic@gmail.com'),
('Franko','Vekić','franko.vekic@gmail.com'),
('Antonio','Hofšuster','ahofsuster@gmail.com'),
('Matija','Prša','prsa.matija@gmail.com'),
('Darko','Luketić','darko.luketic81@gmail.com'),
('Rade','Jasenovčanin','rade.jasenovcanin@yahoo.com'),
('Ante','Filipović','ante.filipovic72@gmail.com'),
('Antonia','čićin-ćapin','antonia.cicincapin@gmail.com'),
('Miroslav','Narančić','miro.narancic@gmail.com'),
('Tomislav','Sabolć?','sabolic55@gmail.com'),
('Stefan','Babić','stefan.babic.vu@gmail.com'),
('Filip','Janjeći?','filip.janjesic@gmail.com'),
('Edita','Kećkić','edita.keskic@gmail.com'),
('Ranko','Vukelić','rvukelic@gmail.com'),
('Tomislav','Nebes','tomislav.nebes@gmail.com'),
('Josip','Harci','harcijosip99@gmail.com'),
('Denis','Zvonarić','dzvonari@gmail.com');

insert into predavac (osoba) values (1),(2);

select * from osoba;
select * from polaznik;
select * from grupa;
insert into polaznik (osoba) values
(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19);

insert into grupa (smjer,naziv) values
(1,'PP23');

insert into grupa (predavac,naziv,smjer) values
(1,'JP24',2); 

insert into grupa (smjer,naziv) values
(1,'PP25');

insert into clan values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),
(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17);

select * from clan;



select * from smjer;

update smjer set trajanje=130
where sifra=1;

update smjer set trajanje=130, certifikat=true 
where sifra=2;

update smjer set cijena=cijena*0.9
where sifra=1 and 2;

update smjer set cijena=1000
where sifra=2;

select * from smjer;

update smjer set cijena=cijena*1.1;

update smjer set cijena=cijena-345.99 where sifra=1;

update smjer set cijena=cijena*0.9 where sifra=1;

select * from osoba;

insert into osoba(ime,prezime,email) values ('Denis','Denis','denis@gmail.com'),('Marko','Marko','marko@gmail.com'),('Ivica','Ivica','ivica@gmail.com');

select * from osoba;

delete from osoba where sifra>21;

#select lista
# zvjezdica znaći prikaži sve kolone

select naziv, cijena from smjer;

select ime as xx, oib as GS from osoba;

select lower(right(ime,7)), upper(left(ime,6)) from osoba;

#filtriranj redova

show tables;

select * from osoba;

select * from osoba where sifra in (3,7);

select * from osoba where ime like 'd%%S';
