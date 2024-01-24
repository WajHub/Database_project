Use Tenis_stolowy;

-- 1. Zapytanie: "Wyświetl nazwy drużyn, miejsca ich lokalizacji oraz daty założenia, które grają
-- w konkretnej lidze o nazwie 'XXXXXX'."
-- Uzasadnienie: Firma zajmująca się sprzedażą gadżetów sportowych planuje kampanię
-- reklamową związana z ligą piłkarską "XXXXXX". Dzięki zapytaniu o drużyny uczestniczące w
-- tej lidze, firma może spersonalizować swoje reklamy. To pozwoli na lepsze dotarcie do kibiców
-- konkretnych drużyn, zwiększając skuteczność kampanii i potencjalnie generując większe zyski.
SELECT [Druzyna].Nazwa
      ,[Data_zalozenia]
	  ,[Adres].Miasto
  FROM [Zespol]
JOIN Druzyna ON [Zespol].Nazwa = [Druzyna].Nazwa
JOIN Hala On [Druzyna].id_Hali = [Hala].Hala_id
JOIN Adres On [Hala].Adres_id = [Adres].Adres_id
JOIN Liga On [Zespol].[Id_ligi] = [Liga].[Id_ligi]
WHERE [Liga].Nazwa = 'Superliga';


-- 2. Zapytanie: "Pokaż liczbę meczów, jakie odbyły się w sezonie bieżącym dla każdej z drużyn
-- oraz średnią liczbę kibiców na meczu dla każdej drużyny w lidze o nazwie 'X Liga'."
-- Uzasadnienie: Agencja eventowa planuje organizację spotkania kibiców z udziałem drużyn ligi
-- "X Liga". Zapytanie o liczbę meczów i średnią liczbę kibiców dla każdej drużyny w tej lidze
-- pomoże agencji dokładnie ocenić popularność poszczególnych zespołów. Na podstawie tych
-- danych agencja będzie w stanie dostosować program wydarzenia, uwzględniając preferencje
-- kibiców.

Use Tenis_stolowy;

SELECT [Zespol].Nazwa
	, (COUNT([Mecz].[Id_zespolu_A])+COUNT([Mecz].[Id_zespolu_B])) AS liczba_meczow
	, AVG([Mecz].[Liczba_kibicow]) AS srednia_ilosc_kibicow
  FROM [Zespol]
JOIN Druzyna ON [Zespol].Nazwa = [Druzyna].Nazwa
JOIN Mecz ON [Mecz].[Id_zespolu_A] = Zespol_id OR  [Mecz].[Id_zespolu_B] = Zespol_id
GROUP BY [Zespol].Nazwa 


-- 3. Zapytanie: "Dla ligi o identyfikatorze 'X', przedstaw zestawienie trenerów wraz z ich
-- specjalizacją oraz zarobkami, którzy prowadzą drużyny uczestniczące w tej lidze."
-- Uzasadnienie: Klub sportowy z ligi o identyfikatorze 'X' szuka nowych trenerów dla swoich
-- drużyn. Dzięki tym informacjom klub będzie mógł skuteczniej przyciągać doświadczonych
-- trenerów, co z kolei może wpłynąć na wyniki drużyn i ich pozycję w lidze.

Use Tenis_stolowy;

CREATE VIEW SuperligaTrenerzy AS
SELECT 
    [Osoba].[Pesel],
    [Osoba].[Imie],
    [Osoba].[Nazwisko],
    [Trener].[Specjalizacja],
    [Osoba].[Zarobki]
FROM 
    [Liga]
JOIN 
    Zespol ON [Zespol].Id_ligi = [Liga].[Id_ligi]
JOIN 
    Druzyna ON [Druzyna].[Nazwa] = [Zespol].[Nazwa]
JOIN 
    Trener ON [Trener].[Druzyna] = [Druzyna].[Nazwa]
JOIN 
    Osoba ON [Trener].[Pesel] = [Osoba].[Pesel]
WHERE 
    [Liga].[Nazwa] = 'Superliga';


SELECT [SuperligaTrenerzy].[Pesel]
	,[SuperligaTrenerzy].[Imie]
	,[SuperligaTrenerzy].[Nazwisko]
	,[SuperligaTrenerzy].[Specjalizacja]
	,[SuperligaTrenerzy].[Zarobki]
  FROM [SuperligaTrenerzy]

DROP VIEW SuperligaTrenerzy;

-- 1. Strona internetowa oferująca wyświetlanie historii meczy:
-- - Uporządkuj zespoły drużyny według daty ostatnio rozgrywanego przez nie meczu, w ktorych byli gospodarzami

Use Tenis_stolowy;

SELECT [Druzyna].[Nazwa]
	,[Mecz].[Data_spotkania]
  FROM [Mecz]
JOIN Zespol ON [Zespol].[Zespol_id] = [Mecz].[Id_zespolu_A]
JOIN Druzyna ON [Druzyna].[Nazwa] = [Zespol].[Nazwa]
ORDER BY [Mecz].[Data_spotkania] DESC


-- 2. Pewien trener chciałby dostać podwyżkę, dlatego zbiera dane o trenerach, których
-- drużyny osiągają sukcesy i ich danych finansowych
-- -Wyszukaj najmłodszego trenera, którego drużyna ma najwięcej zwycięztw, oraz jego
-- zarobki są najwyższe

Use Tenis_stolowy;

SELECT [Osoba].[Pesel]
	,[Osoba].[Imie]
	,[Osoba].[Nazwisko]
	,[Osoba].[Data_urodzenia]
	,[Druzyna].[Nazwa]
	,COUNT([MEcz].Id_meczu) AS Zwyciestwa
  FROM [Trener]
JOIN Osoba ON [Osoba].[Pesel] = [Trener].[Pesel]
JOIN Druzyna ON [Druzyna].[Nazwa] = [Trener].[Druzyna]
JOIN Zespol ON [Zespol].Nazwa = [Druzyna].Nazwa
JOIN Mecz ON ([Mecz].Id_zwyciezcy = [Zespol].Zespol_id)
GROUP BY [Osoba].[Pesel]
,[Osoba].[Imie]
,[Osoba].[Nazwisko]
,[Osoba].[Data_urodzenia]
,[Druzyna].[Nazwa]
ORDER BY [Osoba].[Data_urodzenia] DESC

-- 3. Firma produkująca obuwie sportowe szuka drużyny z którą mogłaby nawiązać współpracę
-- Najlepszym wyborem jest taka, która przyciąga największą widownię:
-- - Sporządź zestawienie 10 meczy (malejąco), które odbyły się w obecnym roku, i na które
-- przyszło najwięcej kibiców

SELECT TOP 10 [Mecz].[Data_spotkania]
	,[Mecz].Id_meczu
	,[Mecz].Liczba_kibicow
  FROM [Mecz]
WHERE YEAR([Mecz].[Data_spotkania]) = '2023'
ORDER BY [Mecz].Liczba_kibicow DESC

-- Polski związek tenisa stołowego planuje utworzenie kadry narodowej. Do tego potrzebuje znalezc najelspzcyh polskich tenistow
-- Wyszukaj polskich zawodnikow z najwieksza iloscia zwyciestw 
SELECT TOP 3 ZwyciescyPolskichZawodnikow.imie, ZwyciescyPolskichZawodnikow.Nazwisko, ZwyciescyPolskichZawodnikow.LiczbaZwyciestw FROM (
    SELECT Zawodnik.PESEL,Osoba.imie,Osoba.Nazwisko, Osoba.Narodowosc, COUNT(*) AS LiczbaZwyciestw
    FROM [Pojedynek_singlowy]
    JOIN Zawodnik ON [Pojedynek_singlowy].Zwyciezca = Zawodnik.PESEL
    JOIN Osoba ON Zawodnik.PESEL = [Osoba].pesel 
    GROUP BY Zawodnik.PESEL,Osoba.imie,Osoba.Nazwisko, Osoba.Narodowosc
) AS ZwyciescyPolskichZawodnikow
ORDER BY LiczbaZwyciestw DESC;

-- Polski zwiazek tenisa stolowego planuje pod koniec sezonu zrobic mistrzostwa polski. 
-- Mistrzosta polski mogą być zorganizowac tylko w hali, w ktorej srednia ilosc kibicow byla wieksza od sredniej ilosci kibicow we wszystkich meczach.

SELECT najpopularniejszeHale.Hala_id, najpopularniejszeHale.srednialibczaKibicow
FROM (
	SELECT Hala.Hala_id, AVG(Mecz.Liczba_kibicow) AS srednialibczaKibicow
	FROM Hala
	JOIN Druzyna ON Druzyna.id_Hali = Hala.Hala_id
	JOIN Zespol ON Druzyna.Nazwa = Zespol.Nazwa
	JOIN MECZ ON (Mecz.Id_zespolu_A = Zespol.Zespol_id OR Mecz.Id_zespolu_B = Zespol.Zespol_id)
	GROUP BY Hala.Hala_id, Zespol.Zespol_id

) AS najpopularniejszeHale
WHERE najpopularniejszeHale.srednialibczaKibicow >  (
    SELECT AVG(Liczba_kibicow)
    FROM Mecz)


