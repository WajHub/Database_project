-- Tabele slownikowe

-- ADRES
INSERT INTO Adres (Miasto, Ulica, Numer_budynku, Kod_pocztowy) VALUES 
('Warszawa', 'Aleje Jerozolimskie', 123, '00-001'),
('Kraków', 'Rynek Główny', 456, '30-002'),
('Gdańsk', 'Długi Targ', 789, '80-001'),
('Poznań', 'Stary Rynek', 101, '61-001'),
('Wrocław', 'Rynek', 222, '50-001'),
('Katowice', 'Plac Sejmu Śląskiego', 333, '40-001'),
('Łódź', 'Piotrkowska', 444, '90-001'),
('Szczecin', 'Wały Chrobrego', 555, '70-001'),
('Bydgoszcz', 'Stary Rynek', 666, '85-001'),
('Lublin', 'Plac Litewski', 777, '20-001'),
('Gdynia', 'Skwer Kościuszki', 888, '81-001'),
('Rzeszów', 'Rynek', 999, '35-001'),
('Białystok', 'Lipowa', 111, '15-001'),
('Kielce', 'Plac Zamkowy', 222, '25-001'),
('Olsztyn', 'Stare Miasto', 333, '10-001'),
('Toruń', 'Bulwar Filadelfijski', 444, '87-001'),
('Częstochowa', 'Aleja Najświętszej Maryi Panny', 555, '42-001'),
('Gorzów Wielkopolski', 'Plac Grunwaldzki', 666, '66-001'),
('Słupsk', 'Plac Zwycięstwa', 777, '76-001'),
('Elbląg', 'Aleja Grunwaldzka', 888, '82-001');


-- STYL GRY
INSERT INTO Styl_gry (Styl, Opis) VALUES 
('Ofensywny', 'Zawodnik szuka glownie ataku strona forhendowa.'),
('Ofensywny', 'Zawodnik atakuje bardzo szybko ze stolu.'),
('Ofensywny', 'Zawodnik w swoich atakch uzywa bardzo duzej rotacji.'),
('Defensywny', 'Zawodnik broni sie daleko od stolu.'),
('Defensywny', 'Zawodnik broni daleko stolu uzywajac czopa.'),
('Defensywny', 'Zawodnik bazuje na bledach przeciwnika blokujac ataki blisko stolu.'),
('Zrownowazony', 'Zawodnik gra atakuje strona forhendowa jak i backhandowa.'),
('Zrownowazony', 'Zawodnik szuka cierpliwie odpowiedniego momentu do kontrataku.'),
('Zrownowazony', 'Zawodnik jest bardzo regularny, gra lekko, ale celnie.');

-- UCHWYT
INSERT INTO Uchwyt (Reka, Uchwyt) VALUES
('Lewa', 'Europejski'),
('Prawa', 'Europejski'),
('Lewa', 'Piorkowy'),
('Prawa', 'Piorkowy');

-- HALA
INSERT INTO Hala (Adres_id, Pojemnosc_kibicow) VALUES 
(1, 50000),
(2, 30000),
(3, 70000),
(4, 45000),
(5, 80000),
(6, 60000),
(7, 35000),
(8, 90000),
(9, 55000),
(10, 40000),
(11, 72000),
(12, 48000),
(13, 62000),
(14, 53000),
(15, 78000),
(16, 37000),
(17, 95000),
(18, 50000),
(19, 68000),
(20, 42000);

--Druzyna
INSERT INTO Druzyna (Nazwa, Data_zalozenia, Stoly, Pileczki, id_Hali) VALUES 
('PingPongTeam1', '2020-01-15', 'Butterfly', 'Butterfly', 1),
 ('PingPongTeam2', '2019-05-20', 'Butterfly', 'Butterfly', 2),
 ('TableTennisClub', '2018-12-10', 'Tibhar', 'Butterfly', 3),
 ('PaddlePros', '2021-02-28', 'Andro', 'Andro', 4),
 ('BallBusters', '2017-08-03', 'Tibhar', 'Tibhar', 5),
 ('SpinMasters', '2019-11-14', 'Tibhar', 'Tibhar', 6),
 ('SmashSquad', '2020-07-22', 'Butterfly', 'Butterfly', 7),
 ('RacketRaiders', '2018-04-05', 'Andro', 'Andro', 8),
 ('NetNinjas', '2022-03-10', 'Tibhar', 'Tibhar', 9),
 ('TableTerrorists', '2016-09-18', 'Andro', 'Andro', 10),
 ('PingPongProwess', '2021-08-07', 'Donic', 'Andro', 11),
 ('PaddlePower', '2017-12-25', 'Donic', 'Andro', 12),
 ('BallBlasters', '2019-06-30', 'Donic', 'Andro', 13),
 ('SpinRivals', '2020-05-12', 'Donic', 'Andro', 14),
 ('SmashMasters', '2018-02-17', 'Donic', 'Tibhar', 15),
 ('RacketRebels', '2021-04-03', 'Butterfly', 'Butterfly', 16),
 ('NetNobles', '2017-10-11', 'Butterfly', 'Tibhar', 17),
 ('TableTitans', '2019-03-27', 'Butterfly', 'Butterfly', 18),
 ('PingPongProdigy', '2022-01-08', 'Butterfly', 'Butterfly', 19),
 ('PaddlePrestige', '2016-07-14', 'Tibhar', 'Tibhar', 20);

--  LIGA
INSERT INTO Liga (Nazwa) VALUES 
('Superliga'),
('I Liga'),
('II Liga'),
('III Liga'),
('IV Liga');

-- ZESPOL
INSERT INTO Zespol (Nazwa, Id_ligi) VALUES 
('PingPongTeam1',1),
('PaddlePros',1),
('NetNinjas',1),
('BallBusters',1),
('SpinMasters',1),
('TableTennisClub',1),

('SpinMasters',2),
('PingPongTeam2',2),
('SmashSquad',2),
('NetNobles',2),
('PingPongTeam1',2),
('RacketRebels',2),

('TableTitans',3),
('PingPongTeam2',3),
('PingPongTeam2',3),
('BallBlasters',3),
('PaddlePrestige',3),
('TableTennisClub',3),

('NetNinjas',4),
('PingPongProdigy',4),
('PingPongProwess',4),
('PaddlePower',4),
('SpinRivals',4),
('PingPongTeam1',4),

('RacketRebels',5),
('TableTerrorists',5),
('RacketRaiders',5),
('BallBusters',5);


-- OSOBA
INSERT INTO Osoba (Pesel, Imie, Nazwisko, Narodowosc, Zarobki, Data_urodzenia) VALUES 
--trenerzy
('12345678901', 'Jan', 'Nowak', 'Polska', 5000.50, '1990-01-15'),
('23456789012', 'Anna', 'Kowalska', 'Niemcy', 6000.75, '1985-05-20'),
('34567890123', 'Piotr', 'Lewandowski', 'Francja', 7000.00, '1992-08-30'),
('45678901234', 'Katarzyna', 'Mazur', 'Włochy', 5500.25, '1988-12-05'),
('56789012345', 'Marek', 'Zając', 'Hiszpania', 6500.50, '1995-04-18'),
('67890123456', 'Ewa', 'Kaczmarek', 'Anglia', 8000.00, '1987-09-22'),
('78901234567', 'Adam', 'Wójcik', 'Holandia', 7500.75, '1993-03-10'),
('89012345678', 'Monika', 'Szymańska', 'Szwecja', 6200.25, '1989-06-27'),
('90123456789', 'Rafał', 'Duda', 'Portugalia', 5800.50, '1994-11-14'),
('01234567890', 'Joanna', 'Krawczyk', 'Grecja', 7300.00, '1986-07-03'),
('11223344556', 'Paweł', 'Jabłoński', 'Norwegia', 6700.75, '1991-02-09'),
('22334455667', 'Kamila', 'Nowakowska', 'Irlandia', 6800.25, '1996-08-16'),
('33445566778', 'Krzysztof', 'Czarnecki', 'Belgia', 7200.50, '1984-04-25'),
('44556677889', 'Iwona', 'Klimek', 'Szkocja', 6900.00, '1997-01-31'),
('55667788990', 'Michał', 'Sikora', 'Dania', 6100.75, '1983-10-08'),
('66778899001', 'Agnieszka', 'Szewczyk', 'Finlandia', 6400.25, '1998-05-07'),
('77889900112', 'Rafał', 'Baran', 'Austria', 7700.50, '1982-12-12'),
('88990011223', 'Karolina', 'Piotrowska', 'Czechy', 7400.00, '1999-09-19'),
('99001112234', 'Łukasz', 'Jaworski', 'Słowacja', 5900.75, '1981-06-26'),
('00112233445', 'Patrycja', 'Szymańska', 'Węgry', 6800.25, '2000-03-03'),
--sedziowie 
('11112222333', 'Mariusz', 'Kaczor', 'Bułgaria', 6200.50, '1990-01-15'),
('22223333444', 'Magdalena', 'Kucharska', 'Chorwacja', 6800.00, '1985-05-20'),
('33334444555', 'Dariusz', 'Kalinowski', 'Hiszpania', 7400.75, '1992-08-30'),
('44445555666', 'Kinga', 'Sawicka', 'Francja', 5600.25, '1988-12-05'),
('55556667777', 'Bartosz', 'Olszewski', 'Niemcy', 6100.50, '1995-04-18'),
('66667778888', 'Aleksandra', 'Czerwińska', 'Włochy', 7200.00, '1987-09-22'),
('77778889999', 'Sebastian', 'Stępień', 'Holandia', 6800.75, '1993-03-10'),
('88889990000', 'Natalia', 'Kowalczyk', 'Szwecja', 7500.25, '1989-06-27'),
('99990001111', 'Tomasz', 'Sobczak', 'Portugalia', 6000.50, '1994-11-14'),
('00001111222', 'Marta', 'Jóźwiak', 'Grecja', 7100.00, '1986-07-03'),
('11112222334', 'Przemysław', 'Leszczyński', 'Norwegia', 6400.75, '1991-02-09'),
('22223333445', 'Karina', 'Górska', 'Irlandia', 6700.25, '1996-08-16'),
('33334444556', 'Dawid', 'Kalinowski', 'Belgia', 7000.50, '1984-04-25'),
('44445555667', 'Ewelina', 'Krajewska', 'Szkocja', 6900.00, '1997-01-31'),
('55556667778', 'Łukasz', 'Adamski', 'Dania', 6200.75, '1983-10-08'),
('66667778889', 'Weronika', 'Olszewska', 'Finlandia', 6500.25, '1998-05-07'),
('77778889990', 'Piotr', 'Szymczak', 'Austria', 7800.50, '1982-12-12'),
('88889990001', 'Monika', 'Pawlak', 'Czechy', 7300.00, '1999-09-19'),
('99990001112', 'Kamil', 'Kowal', 'Słowacja', 5700.75, '1981-06-26'),
('00001111223', 'Anna', 'Kasprzak', 'Węgry', 6800.25, '2000-03-03'),

--zawodnicy
('11112222335', 'Kacper', 'Kowalewski', 'Bułgaria', 7000.50, '1990-01-15'),
('22223333446', 'Aleksandra', 'Zawadzka', 'Chorwacja', 7500.00, '1985-05-20'),
('33334444557', 'Jaroslaw', 'Kaczynski', 'Polska', 5900.75, '1992-08-30'),
('44445555668', 'Donald', 'Tusk', 'Niemcy', 6800.25, '1988-12-05'),
('55556667779', 'Krzysztof', 'Grabowski', 'Niemcy', 7100.50, '1995-04-18'),
('66667778890', 'Dominika', 'Zielińska', 'Włochy', 7600.00, '1987-09-22'),
('77778889991', 'Robert', 'Kowalewski', 'Holandia', 7300.75, '1993-03-10'),
('88880001111', 'Alicja', 'Nowak', 'Polska', 6000.25, '1994-11-14'),
('99991112222', 'Mikołaj', 'Kowalski', 'Niemcy', 6700.50, '1986-07-03'),
('00002223333', 'Klaudia', 'Lewandowska', 'Francja', 7200.00, '1991-02-09'),
('11113334444', 'Tadeusz', 'Mazur', 'Włochy', 5800.75, '1996-08-16'),
('22224445555', 'Aurelia', 'Zając', 'Hiszpania', 6300.25, '1984-04-25'),
('33335556666', 'Szymon', 'Kaczmarek', 'Anglia', 7600.50, '1999-09-19'),
('44446667777', 'Zofia', 'Wójcik', 'Holandia', 7100.00, '1981-06-26'),
('55557778888', 'Artur', 'Szymański', 'Szwecja', 6800.75, '2000-03-03'),
('66668889999', 'Olga', 'Duda', 'Portugalia', 6400.25, '1990-01-15'),
('77779990000', 'Damian', 'Krawczyk', 'Grecja', 7800.50, '1985-05-20'),
('88880001112', 'Kornelia', 'Jabłońska', 'Norwegia', 6900.00, '1992-08-30'),
('99991112223', 'Radosław', 'Nowakowski', 'Irlandia', 7000.75, '1988-12-05'),
('00002223334', 'Ewa', 'Czarnecka', 'Belgia', 6400.25, '1995-04-18'),
('11113334445', 'Marek', 'Klimek', 'Szkocja', 6800.50, '1987-09-22'),
('22224445556', 'Eliza', 'Sikora', 'Dania', 7100.75, '1993-03-10'),
('33335556667', 'Hubert', 'Szewczyk', 'Finlandia', 6000.50, '1989-06-27'),
('44446667778', 'Oliwia', 'Baran', 'Austria', 7500.25, '1994-11-14'),
('55557778889', 'Filip', 'Piotrowski', 'Czechy', 6200.50, '1986-07-03'),
('66668889990', 'Patryk', 'Jaworski', 'Słowacja', 6900.75, '1991-02-09'),
('77779990001', 'Laura', 'Szymańska', 'Węgry', 7400.00, '1996-08-16'),
('11112222346', 'Alicja', 'Jankowska', 'Polska', 5500.25, '1990-01-15'),

('22223333455', 'Ryszard', 'Michalski', 'Niemcy', 6300.50, '1985-05-20'),
('33334444568', 'Eliza', 'Kowalczyk', 'Francja', 7100.00, '1992-08-30'),
('44445555679', 'Bartłomiej', 'Sobczyk', 'Włochy', 5900.75, '1988-12-05'),
('55556667780', 'Kamila', 'Zielińska', 'Hiszpania', 6700.50, '1995-04-18'),
('66667778891', 'Tomasz', 'Nowak', 'Anglia', 8200.00, '1987-09-22'),
('77778889902', 'Klaudia', 'Wójcik', 'Holandia', 7800.75, '1993-03-10'),
('88889990013', 'Sebastian', 'Szymański', 'Szwecja', 6600.25, '1989-06-27'),
('99990001124', 'Marta', 'Duda', 'Portugalia', 6200.50, '1994-11-14'),
('00001111235', 'Kamil', 'Krawczyk', 'Grecja', 7400.00, '1986-07-03'),
('11112222345', 'Karolina', 'Jabłońska', 'Norwegia', 6900.75, '1991-02-09'),
('22223333456', 'Paweł', 'Nowakowski', 'Irlandia', 7000.25, '1996-08-16'),
('33334444567', 'Anna', 'Czarnecka', 'Belgia', 6500.50, '1984-04-25'),
('44445555678', 'Krzysztof', 'Klimek', 'Szkocja', 7000.75, '1997-01-31'),
('55556667789', 'Iwona', 'Sikora', 'Dania', 6400.25, '1983-10-08'),
('66667778892', 'Michał', 'Szewczyk', 'Finlandia', 6700.25, '1998-05-07'),
('77778889901', 'Agnieszka', 'Baran', 'Austria', 7900.50, '1982-12-12'),
('88889990012', 'Rafał', 'Piotrowski', 'Czechy', 7600.00, '1999-09-19'),
('99990001123', 'Monika', 'Jaworska', 'Słowacja', 5900.75, '1981-06-26'),
('00001111234', 'Łukasz', 'Szymańska', 'Węgry', 7200.25, '2000-03-03'),
('11112222347', 'Natalia', 'Wojciechowska', 'Bułgaria', 6800.50, '1990-01-15'),
('22223333458', 'Rafał', 'Krawiec', 'Chorwacja', 7200.00, '1985-05-20'),
('33334444569', 'Katarzyna', 'Mazurek', 'Hiszpania', 7500.75, '1992-08-30'),
('44445555680', 'Marcin', 'Kubiak', 'Francja', 5900.25, '1988-12-05'),
('55556667791', 'Alicja', 'Kowalik', 'Niemcy', 6400.50, '1995-04-18'),
('66667778869', 'Tomasz', 'Zawada', 'Włochy', 7700.00, '1987-09-22'),
('77778889903', 'Paulina', 'Wrona', 'Holandia', 7300.75, '1993-03-10'),
('88889990014', 'Paweł', 'Michalak', 'Szwecja', 6200.25, '1989-06-27'),
('99990001125', 'Kamila', 'Kozłowska', 'Portugalia', 5800.50, '1994-11-14'),

('00001111236', 'Tomasz', 'Rutkowski', 'Grecja', 7200.00, '1986-07-03'),
('11112222344', 'Dominika', 'Kaczmarek', 'Norwegia', 6600.75, '1991-02-09'),
('22223333457', 'Krzysztof', 'Kowalski', 'Irlandia', 6900.25, '1996-08-16'),
('33334444560', 'Ewa', 'Nowak', 'Belgia', 7100.50, '1984-04-25');


-- TRENER
INSERT INTO Trener (Pesel, Druzyna, Specjalizacja) VALUES
('12345678901', 'PingPongTeam1', 'Technika'),
('23456789012', 'PingPongTeam2', 'Taktyka'),
('34567890123', 'TableTennisClub', 'Fizyczność'),
('45678901234', 'PaddlePros', 'Strategia'),
('56789012345', 'BallBusters', 'Taktyka'),
('67890123456', 'SpinMasters', 'Technika'),
('78901234567', 'SmashSquad', 'Fizyczność'),
('89012345678', 'RacketRaiders', 'Strategia'),
('90123456789', 'NetNinjas', 'Taktyka'),
('01234567890', 'TableTerrorists', 'Technika'),
('11223344556', 'PingPongProwess', 'Fizyczność'),
('22334455667', 'PaddlePower', 'Strategia'),
('33445566778', 'BallBlasters', 'Taktyka'),
('44556677889', 'SpinRivals', 'Technika'),
('55667788990', 'SmashMasters', 'Fizyczność'),
('66778899001', 'RacketRebels', 'Strategia'),
('77889900112', 'NetNobles', 'Taktyka'),
('88990011223', 'TableTitans', 'Technika'),
('99001112234', 'PingPongProdigy', 'Fizyczność'),
('00112233445', 'PaddlePrestige', 'Strategia');

--ZAWODNIK
INSERT INTO Zawodnik (Pesel, Uchwyt, Styl_gry, Deska, Zespol) VALUES
('11112222335', 1, 1, 'Butterfly', 1),
('22223333446', 2, 2, 'Andro', 2),
('33334444557', 1, 3, 'Butterfly', 3),
('44445555668', 2, 1, 'Andro', 4),
('55556667779', 1, 2, 'Tibhar', 5),
('66667778890', 2, 3, 'Tibhar', 6),
('77778889991', 1, 1, 'Butterfly', 7),
('88880001111', 2, 2, 'Andro', 8),
('99991112222', 1, 3, 'Tibhar', 9),
('00002223333', 2, 1, 'Andro', 10),
('11113334444', 1, 2, 'Donic', 11),
('22224445555', 2, 3, 'Donic', 12),
('33335556666', 1, 1, 'Donic', 13),
('44446667777', 2, 2, 'Andro', 14),
('55557778888', 1, 3, 'Tibhar', 15),
('66668889999', 2, 1, 'Butterfly', 16),
('77779990000', 1, 2, 'Butterfly', 17),
('88880001112', 2, 3, 'Butterfly', 18),
('99991112223', 1, 1, 'Tibhar', 19),
('00002223334', 2, 2, 'Tibhar', 20),
('11113334445', 1, 1, 'Andro', 21),
('22224445556', 2, 2, 'Andro', 22),
('33335556667', 3, 1, 'Andro', 23),
('44446667778', 1, 3, 'Donic', 24),
('55557778889', 2, 2, 'Donic', 25),
('66668889990', 3, 1, 'Tibhar', 26),
('77779990001', 1, 3, 'Tibhar', 27),
('11112222346', 2, 2, 'Tibhar', 28),

('22223333455', 1, 1, 'Butterfly', 1),
('33334444568', 2, 2, 'Tibhar', 2),
('44445555679', 3, 1, 'Donic', 3),
('55556667780', 1, 3, 'Butterfly', 4),
('66667778891', 2, 2, 'Tibhar', 5),
('77778889902', 3, 1, 'Donic', 6),
('88889990013', 1, 3, 'Butterfly', 7),
('99990001124', 2, 2, 'Tibhar', 8),
('00001111235', 3, 1, 'Donic', 9),
('11112222345', 1, 3, 'Butterfly', 10),
('22223333456', 2, 2, 'Tibhar', 11),
('33334444567', 3, 1, 'Donic', 12),
('44445555678', 1, 3, 'Butterfly', 13),
('55556667789', 2, 2, 'Tibhar', 14),
('66667778892', 3, 1, 'Donic', 15),
('77778889901', 1, 3, 'Butterfly', 16),
('88889990012', 2, 2, 'Tibhar', 17),
('99990001123', 3, 1, 'Donic', 18),
('00001111234', 1, 3, 'Butterfly', 19),
('11112222347', 2, 2, 'Tibhar', 20),
('22223333458', 3, 1, 'Tibhar', 21),
('33334444569', 1, 3, 'Butterfly', 22),
('44445555680', 2, 2, 'Tibhar', 23),
('55556667791', 3, 1, 'Donic', NULL),
('66667778869', 1, 3, 'Butterfly', NULL),
('77778889903', 2, 2, 'Butterfly', NULL),
('88889990014', 3, 1, 'Donic', NULL),
('99990001125', 1, 3, 'Butterfly', 28),
                                      -- Transfery
('00001111236', 2, 2, 'Butterfly', 1), -- > 7
('11112222344', 3, 1, 'Tibhar', 2),    -- > 8
('22223333457', 1, 3, 'Butterfly', 3), -- > 9
('33334444560', 2, 2, 'Tibhar', 4);    -- > 10


-- SEDZIA
INSERT INTO Sedzia (Pesel, Data_przystapienia) VALUES
('11112222333', '2020-01-15'),
('22223333444', '2019-05-20'),
('33334444555', '2018-12-10'),
('44445555666', '2021-02-28'),
('55556667777', '2017-08-03'),
('66667778888', '2019-11-14'),
('77778889999', '2020-07-22'),
('88889990000', '2018-04-05'),
('99990001111', '2022-03-10'),
('00001111222', '2016-09-18'),
('11112222334', '2021-08-07'),
('22223333445', '2017-12-25'),
('33334444556', '2019-06-30'),
('44445555667', '2020-05-12'),
('55556667778', '2018-02-17'),
('66667778889', '2021-04-03'),
('77778889990', '2017-10-11'),
('88889990001', '2019-03-27'),
('99990001112', '2022-01-08'),
('00001111223', '2016-07-14');

-- PARA DEBLOWA
INSERT INTO Para_deblowa (PESEL_A, PESEL_B)
VALUES                              -- Numer Zespolu
  ('11112222335', '22223333455'),   --1
  ('22223333446', '33334444568'),   --2
  ('33334444557', '44445555679'),   --3
  ('44445555668', '55556667780'),   --4
  ('55556667779', '66667778891'),   --5
  ('66667778890', '77778889902'),   --6
  ('77778889991', '88889990013'),   --7
  ('88880001111', '99990001124'),   --8
  ('99991112222', '00001111235'),   --9
  ('00002223333', '11112222345'),   --10
  ('11113334444', '22223333456'),   --11
  ('22224445555', '33334444567'),   --12
  ('33335556666', '44445555678'),   --13
  ('44446667777', '55556667789'),   --14
  ('55557778888', '66667778892'),   --15
  ('66668889999', '77778889901'),   --16
  ('77779990000', '88889990012'),   --17
  ('88880001112', '99990001123'),   --18
  ('99991112223', '00001111234'),   --19
  ('00002223334', '11112222347'),   --20
  ('11113334445', '22223333458'),   --21
  ('22224445556', '33334444569'),   --22
  ('33335556667', '44445555680'),   --23
  ('44446667778', '55556667791'),   --24
  ('55557778889', '66667778869'),   --25
  ('66668889990', '77778889903'),   --26
  ('77779990001', '88889990014'),   --27
  ('11112222346', '99990001125');   --28

-- MECZ (superliga[1-6], I liga[7-12], II Liga[13-18], III LIga[19-24], IV Liga[25-29])
INSERT INTO Mecz (Liczba_kibicow, kolejka, Data_spotkania, Id_zespolu_A, Id_zespolu_B, Pesel_sedziego,  Id_zwyciezcy)
VALUES
--Superliga
-- kolejka 1
(5000, 1, '2023-01-28', 6, 1, '44445555666', 6),
(6000, 1, '2023-02-04', 2, 5, '33334444555', 2),
(7000, 1, '2023-02-11', 3, 4, '22223333444', 3),
-- kolejka 2
(5500, 2, '2023-04-17', 4, 6, '88889990001', 4),
(6500, 2, '2023-04-20', 5, 3, '88889990000', 5),
(4000, 2, '2023-04-18', 1, 2, '22223333445', 1),

(5500, 3, '2023-05-11', 2, 6, '44445555666', 2),
(6500, 3, '2023-05-12', 3, 1, '88889990000', 3),
(2000, 3, '2023-05-10', 4, 5, '44445555667', 4),

(1500, 4, '2023-06-28', 6, 5, '55556667777', 6),
(6500, 4, '2023-06-04', 1, 4, '00001111223', NULL),
(4000, 4, '2023-06-10', 2, 3, '44445555667', NULL),

(5500, 5, '2023-07-28', 4, 6, '22223333445', NULL),
(10500, 5, '2023-07-27', 5, 3, '88889990000', NULL),
(8000, 5, '2023-08-01', 1, 2, '00001111223', NULL),

-- Liga 1
(800, 1, '2023-01-29', 12, 7, '55556667777',  NULL),
(900, 1, '2023-02-05', 8, 11, '55556667777',  NULL),
(100, 1, '2023-02-12', 9, 10, '66667778888',  NULL);

--POJEDYNEK SINGLOWY
INSERT INTO Pojedynek_singlowy(Zawodnik_A, Zawodnik_B, Zwyciezca, Id_meczu) VALUES
--Superliga 
-- Numery meczow
--1 
('66667778890','11112222335','11112222335',1),
('22223333455','77778889902','77778889902',1),
--2
('22223333446','55556667779','22223333446',2),
('00001111236','66667778891','00001111236',2),
--3
('22223333457','44445555668','22223333457',3),
('33334444557','55556667780','33334444557',3),
--4
('44445555668','66667778890','66667778890',4),
('33334444560','77778889902','77778889902',4),
--5
('55556667779','33334444557','33334444557',5),
('22223333455','44445555679','44445555679',5),
--6
('11112222335','22223333446','11112222335',6),
('22223333455','33334444568','22223333455',6),
--7
('22223333446','66667778890','66667778890',7),
('33334444568','77778889902','77778889902',7),
--8
('33334444557','11112222335','33334444557',8),
('44445555679','22223333455','44445555679',8),
--9
('44445555668','55556667779','44445555668',9),
('55556667780','66667778891','55556667780',9),
--10
('77778889902','55556667779','55556667779',10),
('66667778890','66667778891','66667778891',10);

--POJEDYNEK DEBLOWY
INSERT INTO Pojedynek_deblowy(Id_pary_a, Id_pary_b, Id_wygranych, Id_meczu) VALUES
--Superliga 
--1
(6,1,6,1),
--2
(2,5,2,2),
--3
(3,4,3,3),
--4
(4,6,4,4),
--5
(5,3,5,5),
--6
(1,2,1,6),
--7
(2,6,6,7),
--8
(3,1,1,8),
--9
(4,5,4,9),
--10
(6,5,6,10);