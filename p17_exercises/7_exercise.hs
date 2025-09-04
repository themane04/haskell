-- Definiere eine Funktion rotate, welche die Elemente in einer Liste um n Positionen nach links rotiert wobei
-- das Ende der Liste an den Anfang anknüpft. Also zum Beispiel:
--- Prelude> rotate 2 [1,2,3,4,5]
--- [3,4,5,1,2]
--- Hinweis: Nimm die Liste ohne die ersten n Elemente und füge die n ersten Elemente an.

--- Idee
---- Wir wollen die Liste um n Positionen nach links verschieben.
---- Dazu:
----- entferne die ersten n Elemente mit drop n xs
-----füge sie hinten wieder an mit ++ take n xs
rotate :: Int -> [a] -> [a]
rotate n xs = drop n xs ++ take n xs
