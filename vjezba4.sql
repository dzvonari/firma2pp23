select a.naziv as grupa, b.naziv as smjer,
concat(d.ime,' ',d.prezime) as predavac,
concat(g.ime,' ',g.prezime) as polaznik
from grupa a 
inner join smjer b on a.smjer=b.sifra
inner join predavac c on a.predavac=c.sifra
inner join osoba d on c.osoba=d.sifra
inner join clan e on e.grupa=a.sifra
inner join polaznik f on f.sifra=e.polaznik 
inner join osoba g on g.sifra=f.osoba
; 

select a.ime, a.prezime
from osoba a  inner join polaznik b on a.sifra=b.osoba
inner join clan c on c.polaznik=b.sifra 
inner join grupa d on b.sifra=c.grupa 
inner join smjer e on e.sifra=d.smjer
where d.naziv='PP24'
;

select * from grupa where sifra=4;

select * from polaznik

select * from osoba;
select * from autor;
show tables;

select b.naslov
from autor a inner join katalog b on  b.autor=a.sifra
where a.ime='August' and a.prezime='Šenoa';

select d.naziv, b.mjesto
from katalog b inner join izdavac c on b.izdavac=c.sifra
inner join mjesto d on d.sifra=b.mjesto
where c.naziv not like 'H%';

select p.productName, s.productLine 
from products p inner join productlines s on p.productLine=s.productLine 
;

select * from predavac;
delete from predavac where osoba=23;
select * from osoba;

delete from osoba where sifra=23;

insert into osoba (ime,prezime) values ('Slavko','Slavko');



insert into predavac (osoba) values (24);

select u.ime,u.prezime, 
concat(u.ime, ' ',u.prezime) as instruktor
from predavac g inner join osoba u 
on g.osoba=u.sifra ;