SELECT AVG(kwota) AS sr, MIN(kwota) AS min, MAX(kwota) AS max
FROM ksiegowosc.pensja
WHERE stanowisko = 'Kierownik';
