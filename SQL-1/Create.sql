--CREATE DATABASE Tenis_stolowy;
USE Tenis_stolowy;



-- Tabele slownikowe

CREATE TABLE Adres (
    Adres_id INT IDENTITY(1,1) PRIMARY KEY,
    Miasto VARCHAR(255) NOT NULL,
    Ulica VARCHAR(255) NOT NULL,
    Numer_budynku INT CHECK(Numer_budynku>0) NOT NULL,
    Kod_pocztowy VARCHAR(10) NOT NULL,

);

CREATE TABLE Styl_gry(
    Styl_id INT IDENTITY(1,1) PRIMARY KEY,
    Styl  VARCHAR (20) NOT NULL CHECK (Styl IN('Ofensywny', 'Defensywny', 'Zrownowazony')) DEFAULT 'Zrownowazony',
    Opis VARCHAR(255) NOT NULL
);


CREATE TABLE Uchwyt(
    Uchwyt_id INT IDENTITY (1,1) PRIMARY KEY,
    Reka VARCHAR (20) NOT NULL CHECK (Reka IN ('Lewa', 'Prawa'))DEFAULT 'Prawa',
    Uchwyt VARCHAR (20) NOT NULL CHECK (Uchwyt IN ('Europejski', 'Piorkowy'))DEFAULT 'Europejski',

);


-- Tabele

CREATE TABLE Hala (
    Hala_id INT IDENTITY(1,1) PRIMARY KEY,
	Adres_id INT ,
	Pojemnosc_kibicow DECIMAL(10,0) CHECK (Pojemnosc_kibicow>=0 AND Pojemnosc_kibicow <=1000000),
    FOREIGN KEY (Adres_id) REFERENCES Adres (Adres_id) ON DELETE CASCADE 
);

CREATE TABLE Druzyna(
    Nazwa varchar (255) NOT NULL PRIMARY KEY ,
   --Miejscowosc VARCHAR(255) NOT NULL,
    Data_zalozenia DATE NOT NULL,
    Stoly VARCHAR(255),
    Pileczki VARCHAR(255),
    id_Hali INT,
    FOREIGN KEY (id_Hali) REFERENCES Hala (Hala_id) ON DELETE CASCADE 
);

CREATE TABLE Osoba (
    Pesel VARCHAR(11) CHECK (LEN(Pesel) = 11 AND Pesel NOT LIKE '%[^0-9]%') PRIMARY KEY,
    Imie Varchar(31) NOT NULL,
    Nazwisko Varchar(31) NOT NULL,
    Narodowosc VARCHAR(50) NOT NULL,
    Zarobki DECIMAL(7, 2),
    Data_urodzenia DATE
);


CREATE TABLE Trener(
    Pesel VARCHAR(11) PRIMARY KEY,
    Druzyna VARCHAR(255),
    Specjalizacja VARCHAR (255) NOT NULL
    FOREIGN KEY (Pesel) REFERENCES Osoba(Pesel),
    FOREIGN KEY (Druzyna) REFERENCES Druzyna(Nazwa)
);

CREATE TABLE Liga (
    Id_ligi INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa VARCHAR(50) NOT NULL
);

CREATE TABLE Zespol(
    Zespol_id INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa VARCHAR(255) NOT NULL,
    FOREIGN KEY (Nazwa) REFERENCES Druzyna(Nazwa),
    Id_ligi INT FOREIGN KEY (Id_ligi) REFERENCES Liga(Id_ligi)
);

CREATE TABLE Zawodnik (
    Pesel VARCHAR(11) PRIMARY KEY,
    FOREIGN KEY (Pesel) REFERENCES Osoba(Pesel),
    Uchwyt INT NOT NULL,
    FOREIGN KEY (Uchwyt) REFERENCES Uchwyt(Uchwyt_id),
    Styl_gry INT NOT NULL,
    FOREIGN KEY (Styl_gry) REFERENCES Styl_gry(Styl_id),
    Deska VARCHAR(31) NOT NULL,
    Zespol INT,
    FOREIGN KEY (Zespol) REFERENCES Zespol(Zespol_id),
);

CREATE TABLE Sedzia(
    Pesel VARCHAR(11) PRIMARY KEY,
    FOREIGN KEY (Pesel) REFERENCES Osoba(Pesel),
    Data_przystapienia DATE,
);

CREATE TABLE Para_deblowa (
    Id_pary INT PRIMARY KEY IDENTITY(1,1),
    PESEL_A VARCHAR(11),
    PESEL_B VARCHAR(11),
    FOREIGN KEY (PESEL_A) REFERENCES Zawodnik(PESEL),
    FOREIGN KEY (PESEL_B) REFERENCES Zawodnik(PESEL)
);

-- Gospodarzem jest Zespol A
CREATE TABLE Mecz(
Id_meczu INT PRIMARY KEY IDENTITY(1,1),
    Liczba_kibicow INT,
    kolejka INT NOT NULL,
    Data_spotkania DATE NOT NULL,
    Id_zespolu_A INT NOT NULL,
    Id_zespolu_B INT NOT NULL,
    Pesel_sedziego VARCHAR(11),
    Id_zwyciezcy INT,
    FOREIGN KEY (Id_zespolu_A) REFERENCES Zespol(Zespol_id),
    FOREIGN KEY (Id_zespolu_B) REFERENCES Zespol(Zespol_id),
    FOREIGN KEY (Pesel_sedziego) REFERENCES Sedzia(Pesel),
    FOREIGN KEY (Id_zwyciezcy) REFERENCES Zespol(Zespol_id),
    CHECK (Id_zespolu_A != Id_zespolu_B),
    CHECK (Id_zwyciezcy = Id_zespolu_A OR Id_zwyciezcy = Id_zespolu_B),
    CHECK (Liczba_kibicow >= 0)
);

CREATE TABLE Pojedynek_singlowy (
    Id_poj_sing INT PRIMARY KEY IDENTITY(1,1),
    Zawodnik_A VARCHAR(11) NOT NULL,
    Zawodnik_B VARCHAR(11) NOT NULL,
    Zwyciezca VARCHAR(11),
    Id_meczu INT NOT NULL,
    FOREIGN KEY (Zawodnik_A) REFERENCES Zawodnik(Pesel),
    FOREIGN KEY (Zawodnik_B) REFERENCES Zawodnik(Pesel),
    FOREIGN KEY (Zwyciezca) REFERENCES Zawodnik(Pesel),
    FOREIGN KEY (Id_meczu) REFERENCES Mecz(Id_meczu),
    CHECK (Zawodnik_A != Zawodnik_B),
    CHECK (Zwyciezca = Zawodnik_A OR Zwyciezca = Zawodnik_B)
);

CREATE TABLE  Pojedynek_deblowy (
    Id_pojd_deb INT PRIMARY KEY IDENTITY(1,1),
    Id_pary_a INT NOT NULL,
    Id_pary_b INT NOT NULL,
    Id_wygranych INT,
    Id_meczu INT NOT NULL,
    FOREIGN KEY (Id_pary_a) REFERENCES Para_deblowa(Id_pary),
    FOREIGN KEY (Id_pary_b) REFERENCES Para_deblowa(Id_pary),
    FOREIGN KEY (Id_wygranych) REFERENCES Para_deblowa(Id_pary),
    FOREIGN KEY (Id_meczu) REFERENCES Mecz(Id_meczu),
    CHECK (Id_pary_a != Id_pary_b),
    CHECK (Id_wygranych = Id_pary_a OR Id_wygranych = Id_pary_b)
);

