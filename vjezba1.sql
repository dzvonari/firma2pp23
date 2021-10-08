show tables;

select * from smjer;

insert into smjer (naziv) values ('PHP programiranje');

insert into smjer (sifra,naziv,cijena,trajanje)
values (null,'Java programiranje','5999.99',null);

insert into osoba(ime,prezime,email) values
('Tomislav','Jakopec','tjakopec@gmail.com'),
('Shaquille','O''Neal','shaki@gmail.com');

insert into osoba(ime,prezime,email) values
('Danko','Šimiæ','dankosimic@gmail.com'),
('Franko','Vekiæ','franko.vekic@gmail.com'),
('Antonio','Hofšuster','ahofsuster@gmail.com'),
('Matija','Prša','prsa.matija@gmail.com'),
('Darko','Luketiæ','darko.luketic81@gmail.com'),
('Rade','Jasenovèanin','rade.jasenovcanin@yahoo.com'),
('Ante','Filipoviæ','ante.filipovic72@gmail.com'),
('Antonia','èiæin-æapin','antonia.cicincapin@gmail.com'),
('Miroslav','Naranèiæ','miro.narancic@gmail.com'),
('Tomislav','Sabolæ?','sabolic55@gmail.com'),
('Stefan','Babiæ','stefan.babic.vu@gmail.com'),
('Filip','Janjeæi?','filip.janjesic@gmail.com'),
('Edita','Keækiæ','edita.keskic@gmail.com'),
('Ranko','Vukeliæ','rvukelic@gmail.com'),
('Tomislav','Nebes','tomislav.nebes@gmail.com'),
('Josip','Harci','harcijosip99@gmail.com'),
('Denis','Zvonariæ','dzvonari@gmail.com');

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