select * from smjer;


select * from grupa;

update grupa set smjer=1 where sifra=3;

select b.naziv as grupa, a.naziv as smjer
from grupa b right join smjer a 
on b.smjer=a.sifra;

insert into smjer (naziv) values ('PP24');
select * from smjer;
update smjer set naziv='PHP programiranje' where sifra=2;

insert into grupa(naziv,smjer) values ('PP26','1');
update smjer set naziv='Java programiranje' where sifra=1;

delete from smjer where sifra >2;




