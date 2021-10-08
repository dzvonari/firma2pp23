show tables;

select * from mjesto;

select * from mjesto where naziv not like'%a';

select * from autor where datumrodenja is null;

select * from autor;

show tables;

update autor set datumrodenja='1983-02-07' where sifra=3; 

select * from izdavac;
select * from izdavac where naziv like '%d.o.o.%' or naziv like '%do.o%' or naziv like '%d.oo%';

select * from katalog;

select * from katalog where naslov like '%ljubav%';

