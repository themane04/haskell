-- Definiere eine Funktion product, welche das Produkt aus allen Zahlen in einer Liste zurück gibt. Warum kann
-- das Produkt der leeren Liste nicht 0 sein, wie bei der Summenfunktion summe?
product' :: Num a => [a] -> a
product' []     = 1
product' (x:xs) = x * product' xs
