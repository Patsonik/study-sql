delete from zal_fun
delete from zaloga
delete from uprawnienia
delete from funkcja
delete from nr_miejsca
delete from pasazer
delete from destynacja
delete from samolot
delete from linia
delete from model_sam 
delete from producenci_sam 


insert into producenci_sam values (1, 'Embraer'), (2, 'Airbus'), (3, 'Boeing'), (4, 'Bombardier');

insert into model_sam values (1, (select id_producenci_sam from producenci_sam where nazwa_producenci_sam =  'Embraer'), '195');
insert into model_sam values (2, (select id_producenci_sam from producenci_sam where nazwa_producenci_sam =  'Airbus'), 'A320');
insert into model_sam values (3, (select id_producenci_sam from producenci_sam where nazwa_producenci_sam =  'Airbus'), 'A330');
insert into model_sam values (4, (select id_producenci_sam from producenci_sam where nazwa_producenci_sam =  'Boeing'), '787 Dreamliner');
insert into model_sam values (5, (select id_producenci_sam from producenci_sam where nazwa_producenci_sam =  'Bombardier'), 'Q400');

insert into linia values (1, 'LOT'), (2, 'Wizzair'), (3, 'British Airways'), (4, 'Eurolot');

insert into samolot values (1,
(select Id_linia from linia where Nazwa_linia = 'LOT'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '195'),
'SP-LNE');

insert into samolot values (2, 
(select Id_linia from linia where Nazwa_linia = 'Wizzair'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A320'),
'HA-LYT');

insert into samolot values (3,
(select Id_linia from linia where Nazwa_linia = 'British Airways'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A330'),
'G-EUYX');

insert into samolot values (4,
(select Id_linia from linia where Nazwa_linia = 'LOT'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '787 Dreamliner'),
'SP-LRA');

insert into samolot values (5,
(select Id_linia from linia where Nazwa_linia = 'Eurolot'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'Q400'),
'SP-DFH');

insert into destynacja values 
(1, 'Warszawa'), (2, 'Ateny'), (3, 'Wroc�aw'), (4, 'Dortmund'), (5, 'Monachium'), (6, 'Londyn'), (7, 'Nowy Jork');

insert into pasazer values
(1, 'Wac�awik', 'Szymon'),
(2, 'Adamiakowa', 'Irena'),
(3, 'Iksi�ska', 'Waldemara'),
(4, 'Nowak', 'Jan');

insert into nr_miejsca values 
(1, '1A'), (2, '2A'), (3, '16B'), (4, '6E'), (5, '7E');

insert into funkcja values 
(1, 'kapitan'), (2, '1 pilot'), (3, 'szef pok�adu'), (4, 'stewardessa');

insert into uprawnienia values (1, 
(select Id_funkcja from funkcja where Nazwa_funkcja = 'kapitan'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '195'));

insert into uprawnienia values (2,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'kapitan'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A320'));

insert into uprawnienia values (3,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'kapitan'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A330'));

insert into uprawnienia values (4,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'kapitan'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '787 Dreamliner'));

insert into uprawnienia values (5,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'kapitan'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'Q400'));

insert into uprawnienia values (6,
(select Id_funkcja from funkcja where Nazwa_funkcja = '1 pilot'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'Q400'));

insert into uprawnienia values (7,
(select Id_funkcja from funkcja where Nazwa_funkcja = '1 pilot'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '787 Dreamliner'));

insert into uprawnienia values (8,
(select Id_funkcja from funkcja where Nazwa_funkcja = '1 pilot'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A330'));

insert into uprawnienia values (9,
(select Id_funkcja from funkcja where Nazwa_funkcja = '1 pilot'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A320'));

insert into uprawnienia values (10,
(select Id_funkcja from funkcja where Nazwa_funkcja = '1 pilot'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '195'));

insert into uprawnienia values (11,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok�adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '195'));

insert into uprawnienia values (12,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok�adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A320'));

insert into uprawnienia values (13,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok�adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A330'));

insert into uprawnienia values (14,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok�adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '787 Dreamliner'));

insert into uprawnienia values (15,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok�adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'Q400'));

insert into uprawnienia values (16,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'stewardessa'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '787 Dreamliner'));

insert into zaloga values
(1, (select Id_linia from linia where Nazwa_linia = 'LOT'), 'Makula', 'Jerzy'),
(2, (select Id_linia from linia where Nazwa_linia = 'Wizzair'), 'Egedy', 'Igor'),
(3, (select Id_linia from linia where Nazwa_linia = 'British Airways'), 'Smith', 'John'),
(4, (select Id_linia from linia where Nazwa_linia = 'LOT'), 'Wrona', 'Jerzy'),
(5, (select Id_linia from linia where Nazwa_linia = 'Eurolot'), 'Nowak', 'Jan'),
(6, (select Id_linia from linia where Nazwa_linia = 'British Airways'), 'Kork', 'Bryan'),
(7, (select Id_linia from linia where Nazwa_linia = 'Eurolot'), 'Sowa', 'Ewa'),
(8, (select Id_linia from linia where Nazwa_linia = 'LOT'), 'Barbicka', 'Barbara'),
(9, (select Id_linia from linia where Nazwa_linia = 'LOT'), 'Nowak', 'Dominika'),
(10, (select Id_linia from linia where Nazwa_linia = 'British Airways'), 'Iksi�ska', 'Wanda'),
(11, (select Id_linia from linia where Nazwa_linia = 'LOT'), 'Kowalska', 'Ewa'),
(12, (select Id_linia from linia where Nazwa_linia = 'Wizzair'), 'Nowak', 'Ewa'),
(13, (select Id_linia from linia where Nazwa_linia = 'Eurolot'), 'Kowalska', 'Sylwia');

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Barbicka' and Imie_zaloga = 'Barbara'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'szef pok�adu' and Nazwa_model_sam = '195'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam ));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Nowak' and Imie_zaloga = 'Ewa'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'szef pok�adu' and Nazwa_model_sam = 'A320'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Iksi�ska' and Imie_zaloga = 'Wanda'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'szef pok�adu' and Nazwa_model_sam = 'A330'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
  (select Id_zaloga from zaloga where Nazwisko_zaloga = 'Kowalska' and Imie_zaloga = 'Ewa'),
  (select Id_uprawnienia from uprawnienia, funkcja, model_sam 
   where Nazwa_funkcja = 'szef pok�adu' and Nazwa_model_sam = '787 Dreamliner'
   and funkcja.Id_funkcja = uprawnienia.Id_funkcja 
   and uprawnienia.Id_model_sam = model_sam.Id_model_sam)
);

insert into zal_fun values (
  (select Id_zaloga from zaloga where Nazwisko_zaloga = 'Kowalska' and Imie_zaloga = 'Sylwia'),
  (select Id_uprawnienia from uprawnienia, funkcja, model_sam 
   where Nazwa_funkcja = 'szef pok�adu' and Nazwa_model_sam = 'Q400'
   and funkcja.Id_funkcja = uprawnienia.Id_funkcja 
   and uprawnienia.Id_model_sam = model_sam.Id_model_sam)
);

insert into zal_fun values (
  (select Id_zaloga from zaloga where Nazwisko_zaloga = 'Nowak' and Imie_zaloga = 'Dominika'),
  (select Id_uprawnienia from uprawnienia, funkcja, model_sam 
   where Nazwa_funkcja = 'stewardessa' and Nazwa_model_sam = '787 Dreamliner'
   and funkcja.Id_funkcja = uprawnienia.Id_funkcja 
   and uprawnienia.Id_model_sam = model_sam.Id_model_sam)
);


insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Makula' and Imie_zaloga = 'Jerzy'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'kapitan' and Nazwa_model_sam = '195'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Wrona' and Imie_zaloga = 'Jerzy'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = '1 pilot' and Nazwa_model_sam = '195'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Egedy' and Imie_zaloga = 'Igor'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'kapitan' and Nazwa_model_sam = 'A320'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Smith' and Imie_zaloga = 'John'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'kapitan' and Nazwa_model_sam = 'A330'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Wrona' and Imie_zaloga = 'Jerzy'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'kapitan' and Nazwa_model_sam = '787 Dreamliner'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Makula' and Imie_zaloga = 'Jerzy'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = '1 pilot' and Nazwa_model_sam = '787 Dreamliner'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Kork' and Imie_zaloga = 'Bryan'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = '1 pilot' and Nazwa_model_sam = 'A330'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Sowa' and Imie_zaloga = 'Ewa'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = '1 pilot' and Nazwa_model_sam = 'Q400'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

insert into zal_fun values (
(select Id_zaloga from zaloga where Nazwisko_zaloga = 'Nowak' and Imie_zaloga = 'Jan'),
(select Id_uprawnienia from uprawnienia, funkcja, model_sam where Nazwa_funkcja = 'kapitan' and Nazwa_model_sam = 'Q400'
and funkcja.Id_funkcja = uprawnienia.Id_funkcja and uprawnienia.Id_model_sam = model_sam.Id_model_sam));

