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



insert into marka values ('Toyota')
insert into marka values ('BMW')
insert into marka values ('Mercedes')
insert into marka values ('Scania')


insert into model values ((select id_marka from marka where nazwa_marka = 'Toyota'), 'Proace', 12)
insert into model values ((select id_marka from marka where nazwa_marka = 'Mercedes'), 'Tornado h', 75)
insert into model values ((select id_marka from marka where nazwa_marka = 'Mercedes'), 'Tornado', 55)
insert into model values ((select id_marka from marka where nazwa_marka = 'Scania'), 'Setra', 58)



insert into autokar values ((select id_model from model where nazwa_model = 'Tornado'), 'DGL04521', 2012)
insert into autokar values ((select id_model from model where nazwa_model = 'Tornado h'), 'OB98914', 2014)
insert into autokar values ((select id_model from model where nazwa_model = 'Setra'), 'FNW25214', 2000)
insert into autokar values ((select id_model from model where nazwa_model = 'Proace '), 'RZ14147', 2019)
insert into autokar values ((select id_model from model where nazwa_model = 'Tornado'), 'GS87814', 2005)


insert into wyposazenie values ('WC')
insert into wyposazenie values ('GPS')
insert into wyposazenie values ('A/C')



insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'DGL04521'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'WC'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'OB98914'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'WC'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'FNW25214'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'GPS'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'RZ14147'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'GPS'))
insert into R_3 values ((select id_autokar from autokar where nr_rejestracyjny = 'GS87814'), (select id_wyposazenie from wyposazenie where nazwa_wyposazenie = 'A/C'))


insert into miasto values ('G�og�w')
insert into miasto values ('Kotla')
insert into miasto values ('Bytom Odrza�ski')
insert into miasto values ('Nowa S�l')
insert into miasto values ('Brzeg G�ogowski')



insert into osoba values ('Bo�ena', 'Pingwi�ska', '67-270', '67-270 ', '67-270')
insert into osoba values ('Piotr', 'Pingwi�ski', '67-270 ', '67-270', '67-270')
insert into osoba values ('Zdzis�awa', 'Prastel', '68-115', '67-200 ', '67-200 ')
insert into osoba values ('Henryk', 'Kubiak', '68-115', '67-200', '67-200')
insert into osoba values ('Ula', 'Krychowiak', '68-115', '67-200', '67-200')
insert into osoba values ('Adam', 'Kurka', '68-115', '67-200', '67-200')



insert into kierowca values ((select id_osoba from osoba where nazwisko = 'Pingwi�ska'), 'B i D')
insert into kierowca values ((select id_osoba from osoba where nazwisko = 'Prastel'), 'B i D')
insert into pilot values ((select id_osoba from osoba where nazwisko = 'Pingwi�ski'), 'Kurs pilotazu')
insert into pasazer values ((select id_osoba from osoba where nazwisko = 'Krychowiak'), '688')
insert into pasazer values ((select id_osoba from osoba where nazwisko = 'Kurka'), '578')


insert into linia values ((select id_miasto from miasto where nazwa_miasto = 'Kotla'), 
                          (select id_miasto from miasto where nazwa_miasto = 'Bytom Odrza�ski'), 
                          (select id_miasto from miasto where nazwa_miasto = 'Nowa S�l'), 
                          (select id_miasto from miasto where nazwa_miasto = 'Brzeg G�ogowski'), 
                          (select id_miasto from miasto where nazwa_miasto = 'G�og�w'))
insert into linia values ((select id_miasto from miasto where nazwa_miasto = 'G�og�w'), 
                          (select id_miasto from miasto where nazwa_miasto = 'Kotla'), 
                          (select id_miasto from miasto where nazwa_miasto = 'Bytom Odrza�ski'), 
                          (select id_miasto from miasto where nazwa_miasto = 'Nowa S�l'), 
                          (select id_miasto from miasto where nazwa_miasto = 'Brzeg G�ogowski'))

insert into polaczenie values ('Kotla')
insert into polaczenie values ('Bytom Odrza�ski')
insert into polaczenie values ('Nowa S�l')
insert into polaczenie values ('Brzeg G�ogowski')
insert into polaczenie values ('G�og�w')

select * from marka
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