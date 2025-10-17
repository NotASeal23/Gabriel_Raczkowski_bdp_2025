SELECT p.stanowisko,COUNT(pr.kwota) AS ilosc_premii
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY p.stanowisko;
