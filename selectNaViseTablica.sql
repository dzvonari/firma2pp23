
select * from smjer;



select * from grupa;

insert into grupa (sifra,naziv,smjer) values (1,'PP23','1');
insert into grupa (sifra,naziv,smjer) values (2,'JT24','2');
insert into smjer (naziv) values ('Serviser');
insert into smjer (naziv) values ('PP23');
insert into smjer (naziv) values ('JT24');
insert into grupa (sifra,naziv,smjer) values (3,'Servis','3');

delete from grupa  where sifra=1;

show tables;

select a.naziv as grupa, b.naziv as smjer
from grupa a inner join smjer b
on a.smjer=b.sifra;

update grupa set naziv='PP24' where sifra=2;

select * from grupa;
select * from smjer;