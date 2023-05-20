delete from lot_pas
delete from lot
delete from miejs_sam
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
(1, 'Warszawa'), (2, 'Ateny'), (3, 'Wroc³aw'), (4, 'Dortmund'), (5, 'Monachium'), (6, 'Londyn'), (7, 'Nowy Jork');

insert into pasazer values
(1, 'Wac³awik', 'Szymon'),
(2, 'Adamiakowa', 'Irena'),
(3, 'Iksiñska', 'Waldemara'),
(4, 'Nowak', 'Jan');

insert into nr_miejsca values 
(1, '1A'), (2, '2A'), (3, '16B'), (4, '6E'), (5, '7E');

insert into funkcja values 
(1, 'kapitan'), (2, '1 pilot'), (3, 'szef pok³adu'), (4, 'stewardessa');

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
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok³adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '195'));

insert into uprawnienia values (12,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok³adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A320'));

insert into uprawnienia values (13,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok³adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = 'A330'));

insert into uprawnienia values (14,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok³adu'),
(select Id_model_sam from model_sam where Nazwa_model_sam = '787 Dreamliner'));

insert into uprawnienia values (15,
(select Id_funkcja from funkcja where Nazwa_funkcja = 'szef pok³adu'),
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
(10, (select Id_linia from linia where Nazwa_linia = 'British Airways'), 'Iksiñska', 'Wanda'),
(11, (select Id_linia from linia where Nazwa_linia = 'LOT'), 'Kowalska', 'Ewa'),
(12, (select Id_linia from linia where Nazwa_linia = 'Wizzair'), 'Nowak', 'Ewa'),
(13, (select Id_linia from linia where Nazwa_linia = 'Eurolot'), 'Kowalska', 'Sylwia');

insert into zal_fun values (8,11)
insert into zal_fun values (12,12)
insert into zal_fun values (15,13)
insert into zal_fun values (1,1)
insert into zal_fun values (2,2)
insert into zal_fun values (3,3)
insert into zal_fun values (4,4)
insert into zal_fun values (5,5)
insert into zal_fun values (7,6)
insert into zal_fun values (1,7)
insert into zal_fun values (6,8)
insert into zal_fun values (4,10)

insert into miejs_sam values (1,1)
insert into miejs_sam values (1,2)
insert into miejs_sam values (2,3)
insert into miejs_sam values (3,3)
insert into miejs_sam values (4,4)
insert into miejs_sam values (4,5)
insert into miejs_sam values (5,1)

INSERT INTO lot (id_lot, id_samolot, id_zaloga, zal_id_zaloga, zal_id_zaloga2, id_destynacja, des_id_destynacja, zal_id_zaloga3, identyfikator_lot, data_wylot, data_przylot)
VALUES (1, 1,null, 1, 4, 1, 2, 8, '0018', '2011-08-02 18:00:00', '2011-08-02 21:00:00');
INSERT INTO lot (id_lot, id_samolot, id_zaloga, zal_id_zaloga, zal_id_zaloga2, id_destynacja, des_id_destynacja, zal_id_zaloga3, identyfikator_lot, data_wylot, data_przylot)
VALUES (2, 2,null, null, 2, 3, 4, 12, '1648', '2011-08-08 16:50:00', '2011-08-08 18:20:00');
INSERT INTO lot (id_lot, id_samolot, id_zaloga, zal_id_zaloga, zal_id_zaloga2, id_destynacja, des_id_destynacja, zal_id_zaloga3, identyfikator_lot, data_wylot, data_przylot)
VALUES (3, 2,null, 3, 6, 5, 6, 10, '5829', '2011-08-08 10:00:00', '2011-08-08 13:50:00');
INSERT INTO lot (id_lot, id_samolot, id_zaloga, zal_id_zaloga, zal_id_zaloga2, id_destynacja, des_id_destynacja, zal_id_zaloga3, identyfikator_lot, data_wylot, data_przylot)
VALUES (4, 3, 4, 1, 11, 1, 7, 9, '1518', '2011-08-10 08:00:00', '2011-08-10 20:50:00');
INSERT INTO lot (id_lot, id_samolot, id_zaloga, zal_id_zaloga, zal_id_zaloga2, id_destynacja, des_id_destynacja, zal_id_zaloga3, identyfikator_lot, data_wylot, data_przylot)
VALUES (5, 4, null, 5, 7, 3, 1, 13, '4859', '2014-01-12 06:50:00', '2014-01-12 07:40:00');

insert into lot_pas values (1, 1, 1)
insert into lot_pas values (1, 2, 2)
insert into lot_pas values (2, 3, 3)
insert into lot_pas values (3, 1, 3)
insert into lot_pas values (4, 2, 4)
insert into lot_pas values (4, 4, 5)
insert into lot_pas values (5, 2, 1)

select * from producenci_sam
select * from model_sam
select * from linia
select * from samolot
select * from destynacja
select * from pasazer
select * from nr_miejsca
select * from funkcja
select * from uprawnienia
select * from zaloga
select * from zal_fun
select * from miejs_sam
select * from lot
select * from lot_pas


--zapytanie 1
SELECT Nazwa_model_sam
FROM model_sam
JOIN producenci_sam ON model_sam.Id_producenci_sam = producenci_sam.Id_producenci_sam
WHERE producenci_sam.Nazwa_producenci_sam = 'Airbus';
 
 --zapytanie 2
SELECT CONCAT(producenci_sam.Nazwa_producenci_sam, ' ', model_sam.Nazwa_model_sam) AS 'Producent model samochodu'
FROM model_sam
JOIN producenci_sam ON model_sam.Id_producenci_sam = producenci_sam.Id_producenci_sam
ORDER BY producenci_sam.Nazwa_producenci_sam, model_sam.Nazwa_model_sam;

--zapytanie 3
SELECT CONCAT(ps.Nazwa_producenci_sam, ' ', ms.Nazwa_model_sam) AS "Producent model samolotu",
       s.nr_samolotu AS "Nr_samolotu"
FROM model_sam AS ms
JOIN producenci_sam AS ps ON ms.Id_producenci_sam = ps.Id_producenci_sam
JOIN samolot AS s ON ms.Id_model_sam = s.id_model_sam
ORDER BY ps.Nazwa_producenci_sam, ms.Nazwa_model_sam;

--zapytanie 4
SELECT CONCAT(ps.Nazwa_producenci_sam, ' ', ms.Nazwa_model_sam) AS "Producent model samolotu",
       s.nr_samolotu AS "Nr_samolotu"
FROM model_sam AS ms
JOIN producenci_sam AS ps ON ms.Id_producenci_sam = ps.Id_producenci_sam
JOIN samolot AS s ON ms.Id_model_sam = s.id_model_sam
JOIN linia AS l ON s.id_linia = l.id_linia
WHERE l.nazwa_linia = 'LOT'
ORDER BY ps.Nazwa_producenci_sam, ms.Nazwa_model_sam;

--zapytanie 5
SELECT CONCAT(ps.Nazwa_producenci_sam, ' ', ms.Nazwa_model_sam) AS "Producent model samolotu",
       s.nr_samolotu AS "Nr_samolotu"
FROM model_sam AS ms
JOIN producenci_sam AS ps ON ms.Id_producenci_sam = ps.Id_producenci_sam
JOIN samolot AS s ON ms.Id_model_sam = s.id_model_sam
JOIN linia AS l ON s.id_linia = l.id_linia
WHERE l.nazwa_linia = 'Eurolot'
ORDER BY ps.Nazwa_producenci_sam, ms.Nazwa_model_sam;


--zapytanie 6
SELECT nm.numer_miejsca
FROM miejs_sam ms
JOIN samolot s ON ms.id_samolot = s.id_samolot
JOIN model_sam msam ON s.id_model_sam = msam.id_model_sam
JOIN nr_miejsca nm ON ms.id_nr_miejsca = nm.id_nr_miejsca
WHERE msam.nazwa_model_sam = '787 Dreamliner'

--zapytanie 7
SELECT nm.numer_miejsca
FROM miejs_sam ms
JOIN samolot s ON ms.id_samolot = s.id_samolot
JOIN model_sam msam ON s.id_model_sam = msam.id_model_sam
JOIN nr_miejsca nm ON ms.id_nr_miejsca = nm.id_nr_miejsca
WHERE msam.nazwa_model_sam = '195'

--zapytanie 8
SELECT imie_zaloga, nazwisko_zaloga 
FROM zaloga 
INNER JOIN linia ON zaloga.id_linia = linia.id_linia 
WHERE linia.nazwa_linia = 'Eurolot';

--zapytanie 9
SELECT imie_zaloga, nazwisko_zaloga 
FROM zaloga 
INNER JOIN linia ON zaloga.id_linia = linia.id_linia 
WHERE linia.nazwa_linia = 'Lot';

--zapytanie 10
SELECT z.nazwisko_zaloga, z.imie_zaloga
FROM zaloga z
INNER JOIN zal_fun zf ON z.id_zaloga = zf.id_zaloga
INNER JOIN uprawnienia u ON zf.id_uprawnienia = u.id_uprawnienia
INNER JOIN funkcja f ON u.id_funkcja = f.id_funkcja
WHERE f.nazwa_funkcja = '1 pilot' OR f.nazwa_funkcja = 'kapitan';

--zapytanie 11
SELECT z.nazwisko_zaloga, z.imie_zaloga
FROM zaloga z
INNER JOIN zal_fun zf ON z.id_zaloga = zf.id_zaloga
INNER JOIN uprawnienia u ON zf.id_uprawnienia = u.id_uprawnienia
INNER JOIN funkcja f ON u.id_funkcja = f.id_funkcja
WHERE f.nazwa_funkcja = 'szef pok³adu' OR f.nazwa_funkcja = 'stewardessa';

--zapytanie 13

SELECT z.nazwisko_zaloga, z.imie_zaloga
FROM zaloga z
INNER JOIN zal_fun zf ON z.id_zaloga = zf.id_zaloga
INNER JOIN uprawnienia u ON zf.id_uprawnienia = u.id_uprawnienia
INNER JOIN funkcja f ON u.id_funkcja = f.id_funkcja
INNER JOIN linia l ON z.id_linia = l.id_linia
WHERE f.nazwa_funkcja = 'kapitan' AND l.nazwa_linia = 'LOT';

--zapytanie 16

SELECT z.nazwisko_zaloga, z.imie_zaloga
FROM zaloga z
INNER JOIN zal_fun zf ON z.id_zaloga = zf.id_zaloga
INNER JOIN uprawnienia u ON zf.id_uprawnienia = u.id_uprawnienia
INNER JOIN funkcja f ON u.id_funkcja = f.id_funkcja
INNER JOIN linia l ON z.id_linia = l.id_linia
INNER JOIN model_sam msam ON msam.id_model_sam = u.id_model_sam
WHERE f.nazwa_funkcja = 'szef pok³adu' AND l.nazwa_linia = 'Eurolot' AND msam.nazwa_model_sam = 'Q400';

--zapytanie 17
SELECT l.identyfikator_lot, l.data_wylot, l.data_przylot, d1.nazwa_destynacja AS Wylot, d2.nazwa_destynacja AS Przylot
FROM lot l
INNER JOIN destynacja d1 ON l.id_destynacja = d1.id_destynacja
INNER JOIN destynacja d2 ON l.des_id_destynacja = d2.id_destynacja;

--zapytanie 18
SELECT l.identyfikator_lot, l.data_wylot, l.data_przylot, d1.nazwa_destynacja AS Wylot, d2.nazwa_destynacja AS Przylot,
    zkap.imie_zaloga + ' ' + zkap.nazwisko_zaloga AS [Pilot],
    zszef.imie_zaloga + ' ' + zszef.nazwisko_zaloga AS [szef pok³adu],
    zste.imie_zaloga + ' ' + zste.nazwisko_zaloga AS Stewardessa,
    zkap.imie_zaloga + ' ' + zkap.nazwisko_zaloga AS Kapitan
FROM lot l
INNER JOIN destynacja d1 ON l.id_destynacja = d1.id_destynacja
INNER JOIN destynacja d2 ON l.des_id_destynacja = d2.id_destynacja
LEFT JOIN zaloga zkap ON l.zal_id_zaloga = zkap.id_zaloga
    AND EXISTS (SELECT 1 FROM zal_fun zf1 INNER JOIN uprawnienia u1 ON zf1.id_uprawnienia = u1.id_uprawnienia
                WHERE zf1.id_zaloga = zkap.id_zaloga AND u1.id_funkcja = (SELECT id_funkcja FROM funkcja WHERE nazwa_funkcja = 'kapitan'))
LEFT JOIN zaloga zszef ON l.zal_id_zaloga2 = zszef.id_zaloga
    AND EXISTS (SELECT 1 FROM zal_fun zf2 INNER JOIN uprawnienia u2 ON zf2.id_uprawnienia = u2.id_uprawnienia
                WHERE zf2.id_zaloga = zszef.id_zaloga AND u2.id_funkcja = (SELECT id_funkcja FROM funkcja WHERE nazwa_funkcja = 'szef pok³adu'))
LEFT JOIN zaloga zste ON l.zal_id_zaloga3 = zste.id_zaloga
    AND EXISTS (SELECT 1 FROM zal_fun zf3 INNER JOIN uprawnienia u3 ON zf3.id_uprawnienia = u3.id_uprawnienia
                WHERE zf3.id_zaloga = zste.id_zaloga AND u3.id_funkcja = (SELECT id_funkcja FROM funkcja WHERE nazwa_funkcja = 'stewardessa'));


--zapytanie 19
SELECT l.identyfikator_lot, l.data_wylot, l.data_przylot, 
    zkap.imie_zaloga + ' ' + zkap.nazwisko_zaloga AS [Pilot],
    zszef.imie_zaloga + ' ' + zszef.nazwisko_zaloga AS [szef pok³adu],
    zste.imie_zaloga + ' ' + zste.nazwisko_zaloga AS Stewardessa,
    zkap.imie_zaloga + ' ' + zkap.nazwisko_zaloga AS Kapitan
FROM lot l

LEFT JOIN zaloga zkap ON l.zal_id_zaloga = zkap.id_zaloga
    AND EXISTS (SELECT 1 FROM zal_fun zf1 INNER JOIN uprawnienia u1 ON zf1.id_uprawnienia = u1.id_uprawnienia
                WHERE zf1.id_zaloga = zkap.id_zaloga AND u1.id_funkcja = (SELECT id_funkcja FROM funkcja WHERE nazwa_funkcja = 'kapitan'))
LEFT JOIN zaloga zszef ON l.zal_id_zaloga2 = zszef.id_zaloga
    AND EXISTS (SELECT 1 FROM zal_fun zf2 INNER JOIN uprawnienia u2 ON zf2.id_uprawnienia = u2.id_uprawnienia
                WHERE zf2.id_zaloga = zszef.id_zaloga AND u2.id_funkcja = (SELECT id_funkcja FROM funkcja WHERE nazwa_funkcja = 'szef pok³adu'))
LEFT JOIN zaloga zste ON l.zal_id_zaloga3 = zste.id_zaloga
    AND EXISTS (SELECT 1 FROM zal_fun zf3 INNER JOIN uprawnienia u3 ON zf3.id_uprawnienia = u3.id_uprawnienia
                WHERE zf3.id_zaloga = zste.id_zaloga AND u3.id_funkcja = (SELECT id_funkcja FROM funkcja WHERE nazwa_funkcja = 'stewardessa'));

--zapytanie 20
SELECT linia.nazwa_linia
FROM pasazer
INNER JOIN lot_pas ON pasazer.id_pasazer = lot_pas.id_pasazer
INNER JOIN lot ON lot_pas.id_lot = lot.id_lot
INNER JOIN samolot ON lot.id_samolot = samolot.id_samolot
INNER JOIN linia ON samolot.id_linia = linia.id_linia
WHERE pasazer.nazwisko_pasazer = 'Adamiakowa';


--zapytanie 21
SELECT linia.nazwa_linia
FROM pasazer
INNER JOIN lot_pas ON pasazer.id_pasazer = lot_pas.id_pasazer
INNER JOIN lot ON lot_pas.id_lot = lot.id_lot
INNER JOIN samolot ON lot.id_samolot = samolot.id_samolot
INNER JOIN linia ON samolot.id_linia = linia.id_linia
WHERE pasazer.nazwisko_pasazer = 'Wac³awik';


--zapytanie 22
SELECT producenci_sam.nazwa_producenci_sam
FROM pasazer
INNER JOIN lot_pas ON pasazer.id_pasazer = lot_pas.id_pasazer
INNER JOIN lot ON lot_pas.id_lot = lot.id_lot
INNER JOIN samolot ON lot.id_samolot = samolot.id_samolot
INNER JOIN model_sam ON samolot.id_model_sam = model_sam.id_model_sam
INNER JOIN producenci_sam ON model_sam.id_producenci_sam = producenci_sam.id_producenci_sam
WHERE pasazer.nazwisko_pasazer = 'Wac³awik';

--zapytanie 23
SELECT producenci_sam.nazwa_producenci_sam
FROM pasazer
INNER JOIN lot_pas ON pasazer.id_pasazer = lot_pas.id_pasazer
INNER JOIN lot ON lot_pas.id_lot = lot.id_lot
INNER JOIN samolot ON lot.id_samolot = samolot.id_samolot
INNER JOIN model_sam ON samolot.id_model_sam = model_sam.id_model_sam
INNER JOIN producenci_sam ON model_sam.id_producenci_sam = producenci_sam.id_producenci_sam
WHERE pasazer.nazwisko_pasazer = 'Adamiakowa';

--zapytanie 24
SELECT d.id_destynacja AS Wylot
FROM pasazer p
INNER JOIN lot_pas lp ON p.id_pasazer = lp.id_pasazer
INNER JOIN lot l ON lp.id_lot = l.id_lot
INNER JOIN destynacja d ON l.id_destynacja = d.id_destynacja
WHERE p.nazwisko_pasazer = 'Adamiakowa';


--zapytanie 25
SELECT DISTINCT d.nazwa_destynacja AS Wylot
FROM pasazer p
INNER JOIN lot_pas lp ON p.id_pasazer = lp.id_pasazer
INNER JOIN lot l ON lp.id_lot = l.id_lot
INNER JOIN destynacja d ON l.id_destynacja = d.id_destynacja
WHERE p.nazwisko_pasazer = 'Adamiakowa';

--zapytanie 26
SELECT DISTINCT d.nazwa_destynacja AS Przylot
FROM pasazer p
INNER JOIN lot_pas lp ON p.id_pasazer = lp.id_pasazer
INNER JOIN lot l ON lp.id_lot = l.id_lot
INNER JOIN destynacja d ON l.des_id_destynacja = d.id_destynacja
WHERE p.nazwisko_pasazer = 'Adamiakowa';

--zapytanie 27
SELECT nm.numer_miejsca
FROM pasazer p
INNER JOIN lot_pas lp ON p.id_pasazer = lp.id_pasazer
INNER JOIN nr_miejsca nm ON lp.id_nr_miejsca = nm.id_nr_miejsca
WHERE p.nazwisko_pasazer = 'Adamiakowa';

--zapytanie 28
SELECT nm.numer_miejsca
FROM pasazer p
INNER JOIN lot_pas lp ON p.id_pasazer = lp.id_pasazer
INNER JOIN nr_miejsca nm ON lp.id_nr_miejsca = nm.id_nr_miejsca
INNER JOIN lot l ON lp.id_lot = l.id_lot
INNER JOIN destynacja d ON l.des_id_destynacja = d.id_destynacja
WHERE p.nazwisko_pasazer = 'Adamiakowa' AND d.nazwa_destynacja = 'Ateny';



