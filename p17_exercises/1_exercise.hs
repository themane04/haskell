-- Definiere die Funktionen last und init alleine durch die Funktionen aus 2.3. Erstere gibt das letzte Element
-- einer Liste zurück, und init entfernt das letzte Element einer nicht leeren Liste
-- 🔹 Schritt 1: Welche Tools aus 2.3 gibt’s?
--- head, tail
--- take, drop
--- length
--- reverse
--- elem
--- !!
--- ++
-- Damit können wir last und init bauen.

-- 🔹 Lösung: last
--- Idee: Das letzte Element ist an Position length xs - 1.
last' :: [a] -> a
last' xs = xs !! (length xs - 1)
--- Alternativ mit reverse + head:
last'' :: [a] -> a
last'' xs = head (reverse xs)

-- 🔹 Lösung: init
--- Idee: init gibt die Liste ohne letztes Element zurück.
init' :: [a] -> [a]
init' xs = take (length xs - 1) xs
--- Alternativ mit reverse + tail:
init'' :: [a] -> [a]
init'' xs = reverse (tail (reverse xs))
