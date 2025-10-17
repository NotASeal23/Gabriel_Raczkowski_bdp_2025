SELECT pra.imie, pra.nazwisko FROM ksiegowosc.wynagrodzenie  w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
JOIN ksiegowosc.pracownicy pra ON w.id_pracownika = pra.id_pracownika
WHERE p.kwota + pr.kwota > 1500 and p.kwota + pr.kwota < 3000
