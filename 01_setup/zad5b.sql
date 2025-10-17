SELECT * FROM ksiegowosc.wynagrodzenie  w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
WHERE p.kwota + pr.kwota > 1000
