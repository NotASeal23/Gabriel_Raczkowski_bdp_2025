SELECT p.stanowisko,SUM(p.kwota + pr.kwota) AS suma_wynagrodzenia
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY p.stanowisko;
