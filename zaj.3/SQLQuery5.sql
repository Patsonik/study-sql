delete from R_2
delete from przyjecie
delete from lekarz
delete from operacja
delete from Pacjent
delete from Rodzaj_badania
delete from jednostka
delete from Grupa

insert into Grupa values (1,'Hematologia')
insert into Grupa values (2,'Immunodiagnostyka')
insert into Grupa values (3,'Biochemia')
insert into Grupa values (4,'Serologia')

insert into jednostka values (1,'mm/h')
insert into jednostka values (2,'ng/ml')
insert into jednostka values (3,'pmol/l/s')
insert into jednostka values (4,'uderz/min')
insert into jednostka values (5,'%')

insert into Rodzaj_badania values (1,1,1,'OB',15,20)
insert into Rodzaj_badania values (2,2,2,'TPSA',0,25)
insert into Rodzaj_badania values (3,3,3,'CPK',70,700)
insert into Rodzaj_badania values (4,3,4,'Lipaza',55,55)
insert into Rodzaj_badania values (5,4,5,'ASO',10,20)


insert into Pacjent values (1,'0009','Nowak', 'Jan', '02/10/1938')
insert into Pacjent values (2,'01256','Iksiñski', 'Kazimierz', '1938/03/15')
insert into Pacjent values (3,'56256','Kowalska', 'Kazimiera', '1945/08/28')
insert into Pacjent values (4,'0089','Adamiakowa', 'Franciszka', '1954/11/21')


insert into operacja values (1,'1656','2006/09/14')
insert into operacja values (2,'2839','2014/08/30')
insert into operacja values (3,'1656','2011/12/18')

insert into lekarz values (1,'3838')
insert into lekarz values (2,'1659')

insert into przyjecie values (1,NULL,NULL,1,'2005/12/12')
insert into przyjecie values (2,NULL,NULL,2,'2011/09/09')
insert into przyjecie values (3,1,1,1,'2006/09/12')
insert into przyjecie values (4,NULL,NULL,3,'2013/02/25')
insert into przyjecie values (5,1,2,3,'2014/08/29')
insert into przyjecie values (6,2,1,4,'2011/12/16')


insert into R_2 values (1, 1,'18','2005/12/14')
insert into R_2 values (1, 2,'25','2011/09/10')
insert into R_2 values (2, 3,'38','2006/09/12')
insert into R_2 values (3, 4,'589','2013/02/27')
insert into R_2 values (4, 5,'48','2014/08/29')
insert into R_2 values (5, 6,'16','2011/12/18')

select * from Grupa
select * from jednostka
select * from Rodzaj_badania
select * from Pacjent
select * from operacja 
select * from lekarz
select * from przyjecie
select * from R_2


--zapytanie 1 
SELECT 
  nazwisko + ' ' + imie AS 'Nazwisko i Imie', 
  CAST(data_urodzin AS DATE) AS 'Data urodzenia', 
  nr_pacjenta AS 'Numer pacjenta' 
FROM 
  Pacjent 
ORDER BY 
  nazwisko;

  --zapytanie 2 
SELECT 
  rodzaj_badania.rodzaj_badania AS nazwa_rodzaj_badanie,
  CAST(rodzaj_badania.dolna_granica AS varchar(10)) + ' - ' + 
  CAST (rodzaj_badania.gorna_granica AS varchar(10))
  + '  ' + jednostka.nazwa_jednostki AS norma
  from rodzaj_badania
  join jednostka on rodzaj_badania.id_jednostka = jednostka.id_jednostka;

  --zapytanie 3
SELECT 
  rodzaj_badania.rodzaj_badania AS nazwa_rodzaj_badanie,
  CAST(rodzaj_badania.dolna_granica AS varchar(10)) + ' - ' + 
  CAST (rodzaj_badania.gorna_granica AS varchar(10))
  + '  ' + jednostka.nazwa_jednostki AS norma
  from rodzaj_badania
 join jednostka on rodzaj_badania.id_jednostka = jednostka.id_jednostka
 join Grupa on rodzaj_badania.id_grupa_badania = grupa.id_grupa_badania
 where grupa.nazwa_grupa_badaia = 'Biochemia'


--zapytanie 4
SELECT 
 nazwisko AS [nazwisko_pacjent],
 imie AS imie_pacjent,
 convert (date, przyjecie.data_przyjecia) as [data_przyjecie]
 from Pacjent
 join przyjecie on przyjecie.id_pacjent = pacjent.id_pacjent
 order by nazwisko_pacjent asc,
 [data_przyjecie] desc

 --zapytanie 5
SELECT 
 nazwisko AS [nazwisko_pacjent],
 imie AS imie_pacjent,
 convert (date, przyjecie.data_przyjecia) as [data_przyjecie],
 rodzaj_badania.rodzaj_badania as nazwa_rodzaj_badanie,
 r_2.wynik_badania,
 r_2.data_badania
 from Pacjent
 join przyjecie on przyjecie.id_pacjent = pacjent.id_pacjent
 join r_2 on r_2.id_przyjecie = przyjecie.id_przyjecie
 join rodzaj_badania on r_2.id_rodzaj_badanie = rodzaj_badania.id_rodzaj_badanie
 order by nazwisko_pacjent asc,
 [data_przyjecie] desc

 --zapytanie 6
SELECT 
 nazwisko AS [nazwisko_pacjent],
 imie AS imie_pacjent,
 convert (date, przyjecie.data_przyjecia) as [data_przyjecie],
 rodzaj_badania.rodzaj_badania as nazwa_rodzaj_badanie,
 r_2.wynik_badania,
 r_2.data_badania
 from Pacjent
 join przyjecie on przyjecie.id_pacjent = pacjent.id_pacjent
 join r_2 on r_2.id_przyjecie = przyjecie.id_przyjecie
 join rodzaj_badania on r_2.id_rodzaj_badanie = rodzaj_badania.id_rodzaj_badanie
 where wynik_badania > rodzaj_badania.dolna_granica
 and wynik_badania < rodzaj_badania.gorna_granica 
 order by nazwisko_pacjent asc,
 [data_przyjecie] desc

 --zapytanie 7
SELECT 
 nazwisko AS [nazwisko_pacjent],
 imie AS imie_pacjent,
 convert (date, przyjecie.data_przyjecia) as [data_przyjecie],
 rodzaj_badania.rodzaj_badania as nazwa_rodzaj_badanie,
 r_2.wynik_badania,
 r_2.data_badania
 from Pacjent
 join przyjecie on przyjecie.id_pacjent = pacjent.id_pacjent
 join r_2 on r_2.id_przyjecie = przyjecie.id_przyjecie
 join rodzaj_badania on r_2.id_rodzaj_badanie = rodzaj_badania.id_rodzaj_badanie
 where pacjent.imie='Kazimiera'
 and pacjent.nazwisko='Kowalska'
 order by nazwisko_pacjent asc,
 [data_przyjecie] desc

 --zapytanie 8
SELECT pacjent.nr_pacjenta,
 pacjent.nazwisko + ' ' + pacjent.imie AS [nazwisko i imie pacjenta],
 convert (date, pacjent.data_urodzin) as [data_urodzenia],
 convert (date, przyjecie.data_przyjecia) as [data_przyjecie],
 grupa.nazwa_grupa_badaia as nazwa_grupa_badanie,
 rodzaj_badania.rodzaj_badania as nazwa_rodzaj_badanie,
 r_2.wynik_badania as wynik,
 cast(rodzaj_badania.dolna_granica as varchar(10)) + ' ' + cast(rodzaj_badania.gorna_granica as varchar(10)) 
 + ' ' + jednostka.nazwa_jednostki as [norma badania],
 convert (date, r_2.data_badania) as [data],
 operacja.identyfikator_operacja,
 operacja.data_operacja,
 lekarz.identyfikator_lekarz_prowadzacy
 from Pacjent
 join przyjecie on przyjecie.id_pacjent = pacjent.id_pacjent
 join r_2 on r_2.id_przyjecie = przyjecie.id_przyjecie
 join rodzaj_badania on r_2.id_rodzaj_badanie = rodzaj_badania.id_rodzaj_badanie
 join grupa on rodzaj_badania.id_grupa_badania = grupa.id_grupa_badania
 join jednostka on rodzaj_badania.id_jednostka = jednostka.id_jednostka
 left join operacja on operacja.id_operacja = przyjecie.id_operacja
 left join lekarz on lekarz.id_lekarz = przyjecie.id_lekarz 

