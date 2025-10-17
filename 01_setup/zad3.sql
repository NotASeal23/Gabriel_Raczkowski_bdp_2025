CREATE TABLE ksiegowosc.pracownicy(
	id_pracownika SERIAL PRIMARY KEY,
	imie varchar(25),
    nazwisko varchar(25),
    adres varchar(50),
	telefon varchar(9)
);

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela zawierajaca dane dotyczace pracownika';

CREATE TABLE ksiegowosc.godziny (
	id_godziny SERIAL PRIMARY KEY,
	data DATE,
	liczba_godzin NUMERIC(4,2),
	id_pracownika INT NOT NULL,
	FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika)
);

COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela zawierajaca dane dotyczace godzin danego pracownika';


CREATE TABLE ksiegowosc.pensja (
	id_pensji SERIAL PRIMARY KEY,
	stanowisko VARCHAR(20),
	kwota NUMERIC(8,2)
);

COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela zawierajaca dane dotyczace pensji';


CREATE TABLE ksiegowosc.premia (
	id_premii SERIAL PRIMARY KEY,
	rodzaj VARCHAR(20),
	kwota NUMERIC(8,2)
);

COMMENT ON TABLE ksiegowosc.premia IS 'Tabela zawierajaca dane dotyczace premii';



CREATE TABLE ksiegowosc.wynagrodzenie (
	id_wynagrodzenia SERIAL PRIMARY KEY,
	data DATE,
	id_pracownika INT,
	id_godziny INT,
	id_pensji INT,
	id_premii INT,
	FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika),
	FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny),
	FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensja(id_pensji),
	FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii)
);

COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela zawierajaca dane dotyczace wynagrodzenia';
