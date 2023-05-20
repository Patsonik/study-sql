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

