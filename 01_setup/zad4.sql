INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'Warszawa ul. Polna 3', '123456789'),
('Jan', 'Kowalski', 'Kraków ul. Lipowa 10', '416529809'),
('Jan', 'Zieliński', 'Gdańsk ul. Długa 5', '132425436'),
('Jan', 'Nowicka', 'Poznań', '305050132'),
('Anna', 'Wiśniewska', 'Łódź ul. Ogrodowa 22', '543654321'),
('Anna', 'Lewandowska', 'Wrocław, ul. Wiosenna 6', '596321789'),
('Anna', 'Wójcik', 'Lublin, ul. Krótka 7', '417987321'),
('Anna', 'Zawadzka', 'Żory ul. Słoneczna 4', '878654987'),
('Anna', 'Kalinowska', 'Katowice', '509321456'),
('Grzegorz', 'Bąk', 'Bydgoszcz, ul. Budryka 9', '555666777');

INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-09-01', 70, 1), ('2025-09-01', 10, 2), ('2025-09-10', 55, 3),
('2025-09-02', 85, 4), ('2025-09-03', 80, 5), ('2025-09-01', 65, 6),
('2025-09-02', 8, 7), ('2025-09-03', 72, 8), ('2025-09-07', 61, 9), ('2025-09-01', 50, 10);


INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Za wyniki', 100), ('Świąteczna', 500), ('Uznaniowa', 300), ('Premia', 150), ('Premia', 150),
('Za wyniki', 400), ('Pocieszenia', 50), ('Uznaniowa', 250), ('Świąteczna', 600), ('Pocieszenia', 50);


INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Kierownik', 4000), ('Specjalista', 3000), ('Magazynier', 2000),
('Magazynier', 1800), ('Księgowy', 3200), ('Sekretarka', 2200),
('Technik', 2500), ('Technik', 2700), ('Sekretarka', 2100), ('Praktykant', 1200);


INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-09-30', 1, 1, 1, 2), ('2025-09-19', 2, 2, 2, 1),
('2025-09-29', 3, 3, 3, 3), ('2025-09-11', 4, 4, 4, 4),
('2025-09-25', 5, 5, 5, 5), ('2025-09-28', 6, 6, 6, 6),
('2025-09-12', 7, 7, 7, 7), ('2025-09-18', 8, 8, 8, 8),
('2025-09-15', 9, 9, 9, 9), ('2025-09-15', 10, 10, 10, 10)
