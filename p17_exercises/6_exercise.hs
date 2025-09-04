-- Du hast eine Liste mit ganzen Zahlen gegeben. Addiere das erste Element und das
-- letzte Element und multipliziere die Summe mit der Hälfte der Anzahl Elemente in der Liste.
-- Wie lautet diese Berechnung in Haskell?

--- Gegeben: eine Liste xs :: [Int]
--- Erstes Element → head xs
--- Letztes Element → last xs
--- Summe der beiden → head xs + last xs
--- Anzahl Elemente → length xs
--- Hälfte davon → length xs div 2 (ganzzahlige Division)
--- Alles multiplizieren
---- (head xs + last xs) * (length xs `div` 2)


--- Prelude> let xs = [1,2,3,4,5,6]
--- Prelude> (head xs + last xs) * (length xs `div` 2)
--- 21

--- Erklärung:
--- head xs = 1, last xs = 6 → Summe 7
--- length xs = 6, Hälfte = 3
--- 7 * 3 = 21 ✅