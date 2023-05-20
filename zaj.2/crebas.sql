delete from linia
delete from pasazer
delete from pilot
delete from kierowca
delete from osoba
delete from miasto
delete from R_3
delete from wyposazenie
delete from autokar
delete from model
delete from marka

 

insert into marka values (1,'Toyota')
insert into marka values (2,'BMW')
insert into marka values (3,'Mercedes')
insert into marka values (4,'Scania')
 

insert into model values ( 1, 1, 'Proace', 12)
insert into model values ( 2, 2, 'Tornado h', 75)
insert into model values (3, 3, 'Tornado', 55)
insert into model values (4, 4, 'Setra', 58)

 

insert into autokar values (1,1 , 'DGL04521', 2012)
insert into autokar values (2,2 , 'OB98914', 2014)
insert into autokar values (3,3, 'FNW25214', 2000)
insert into autokar values (4,4, 'RZ14147', 2019)
insert into autokar values (5,4, 'GS87814', 2005)

 
insert into wyposazenie values (1,'WC')
insert into wyposazenie values (2,'GPS')
insert into wyposazenie values (3,'A/C')
insert into wyposazenie values (4,'TV')
insert into wyposazenie values (5,'USB')

 

insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'DGL04521'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'TV'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'OB98914'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'WC'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'FNW25214'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'GPS'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'RZ14147'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'USB'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'GS87814'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'A/C'))


insert into miasto values (1,'G³ogów')
insert into miasto values (2,'Kotla')
insert into miasto values (3,'Bytom Odrzañski')
insert into miasto values (4,'Nowa Sól')
insert into miasto values (5,'Brzeg G³ogowski')


 

insert into osoba values (1,'Bo¿ena', 'Pingwiñska', '67-270', '67-270 ', '67-270')
insert into osoba values (2,'Piotr', 'Pingwiñski', '67-270 ', '67-270', '67-270')
insert into osoba values (3,'Zdzis³awa', 'Prastel', '68-115', '67-200 ', '67-200 ')
insert into osoba values (4,'Henryk', 'Kubiak', '68-115', '67-200', '67-200')
insert into osoba values (5,'Ula', 'Krychowiak', '68-115', '67-200', '67-200')
insert into osoba values (6,'Adam', 'Kurka', '68-115', '67-200', '67-200')
insert into osoba values (7,'Krystynka', 'Kurkowicz', '68-115', '67-200', '67-200')
insert into osoba values (8,'Maja', 'Majowicz', '68-115', '67-200', '67-200')
insert into osoba values (9,'Zuzia', 'Zuzowicz', '68-115', '67-200', '67-200')
insert into osoba values (10,'Jola', 'Jolowicz', '54-524', '54-524', '54-524')
insert into osoba values (11,'Zuzia', 'Zuzowicz', '68-115', '67-200', '67-200')
insert into osoba values (12,'Francesca', 'Francesco', '67-240', '67-240', '67-240')


insert into kierowca values (1, 1, 'B i D')
insert into kierowca values (2, 2, 'B i D')
insert into pilot values (3, 3 , 'Kurs pilotazu')
insert into pasazer values (4, 4 , '688')
insert into pasazer values (5, 5, '578')
insert into pasazer values (6, 6, '578')
insert into kierowca values (7, 7, 'B i D')
insert into kierowca values (8, 8, 'B i D')
insert into pilot values (9, 9 , 'Kurs fluorystyki')
insert into pilot values (10, 10 , 'Kurs akrobatyki')
insert into pilot values (11, 11 , 'Kurs malarstwa')
insert into pasazer values (12, 12, '518')

insert into linia values (1,1,2,3,4,5)
insert into linia values (2,2,3,4,5,1)
insert into linia values (3,3,4,5,1,2)
insert into linia values (4,4,5,1,2,3) 
insert into linia values (5,5,1,2,3,4)




select * from marka order by nazwa_marka asc;
select * from model
select * from autokar
select * from wyposazenie
select * from R_3
select * from miasto
select * from osoba
select * from kierowca
select * from pilot
select * from pasazer
select * from linia
