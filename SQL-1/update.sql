-- UPDATE 

-- Transfery zawodnikow:
UPDATE Zawodnik SET Zespol = 7 WHERE Pesel = '00001111236';
UPDATE Zawodnik SET Zespol = 8 WHERE Pesel = '11112222344';
UPDATE Zawodnik SET Zespol = 9 WHERE Pesel = '22223333457';
UPDATE Zawodnik SET Zespol = 10 WHERE Pesel = '33334444560';

-- Podwyzki dla pracowniko:
UPDATE Osoba SET Zarobki = 10000 WHERE Pesel = '33334444555';
UPDATE Osoba SET Zarobki = 80000 WHERE Pesel = '44445555666';
UPDATE Osoba SET Zarobki = 90000 WHERE Pesel = '55556667777';
UPDATE Osoba SET Zarobki = 100 WHERE Pesel = '66667778888';

-- Zmiana sprzetu zawodnikow:
UPDATE Zawodnik SET Deska = 'Butterfly' WHERE Pesel = '44446667777';
UPDATE Zawodnik SET Deska = 'Butterfly' WHERE Pesel = '55557778888';
UPDATE Zawodnik SET Deska = 'Tibhar' WHERE Pesel = '66668889999';
UPDATE Zawodnik SET Deska = 'Andro' WHERE Pesel = '77779990000';

-- Awans lub spadek zespolu do innej ligi:
UPDATE Zespol SET Id_ligi = 4 WHERE Nazwa = 'RacketRebels';
UPDATE Zespol SET Id_ligi = 5 WHERE Nazwa = 'PingPongTeam1';
UPDATE Zespol SET Id_ligi = 4 WHERE Nazwa = 'TableTennisClub';
UPDATE Zespol SET Id_ligi = 3 WHERE Nazwa = 'NetNinjas';

-- Trener zmienia specjalizacje:
UPDATE Trener SET Specjalizacja = 'Fizyczność' WHERE Pesel =   '77889900112';
UPDATE Trener SET Specjalizacja = 'Strategia' WHERE Pesel =   '88990011223';
UPDATE Trener SET Specjalizacja = 'Technika' WHERE Pesel =   '99001112234';
UPDATE Trener SET Specjalizacja = 'Taktyka' WHERE Pesel =  '00112233445';

-- Druzyna zmienia sprzet na ktorym trenuje i rozgrywa mecze:
UPDATE Druzyna SET Stoly = 'Tibhar'  WHERE Nazwa = 'TableTitans';
UPDATE Druzyna SET Stoly = 'Andro'  WHERE Nazwa = 'PingPongProdigy';
UPDATE Druzyna SET Stoly = 'Butterfly' WHERE  Nazwa = 'PaddlePrestige';
UPDATE Druzyna SET Stoly = 'Tibhar' WHERE  Nazwa = 'PingPongTeam1';

-- Zawodnik opuszcza klub i staje sie niestowarzyszony:
UPDATE Zawodnik SET Zespol = NULL WHERE Pesel = '99990001125';




--DELETE

--Sedzia odchodzi na emeryture:
UPDATE Mecz SET Pesel_sedziego = NULL WHERE Pesel_sedziego = '00001111223';
DELETE FROM Sedzia WHERE Pesel = '00001111223';
UPDATE Mecz SET Pesel_sedziego = NULL WHERE Pesel_sedziego = '99990001112';
DELETE FROM Sedzia WHERE Pesel = '99990001112';

-- Usuniecie hali (np z powodu warunkow nienadajacyh sie do gry lub planu przebudowy hali)
UPDATE Druzyna SET id_Hali = NULL WHERE  id_Hali = 20;
DELETE FROM Adres WHERE Adres_id = 20;

--Anulowanie meczu w zwiazku z nieprzepisowymi warunkami:
DELETE FROM Pojedynek_singlowy WHERE Id_meczu = 1;
DELETE FROM Pojedynek_deblowy WHERE Id_meczu = 1;
DELETE FROM Mecz WHERE Id_meczu = 1;
 
