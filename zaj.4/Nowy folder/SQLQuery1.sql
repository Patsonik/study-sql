--zapytanie 28
SELECT nm.numer_miejsca
FROM pasazer p
INNER JOIN lot_pas lp ON p.id_pasazer = lp.id_pasazer
INNER JOIN nr_miejsca nm ON lp.id_nr_miejsca = nm.id_nr_miejsca
INNER JOIN lot l ON lp.id_lot = l.id_lot
INNER JOIN destynacja d ON l.des_id_destynacja = d.id_destynacja
WHERE p.nazwisko_pasazer = 'Adamiakowa' AND d.nazwa_destynacja = 'Ateny';
