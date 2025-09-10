-- 6.7.2
--- Definiere eine rekursive Funktion reverse, welche eine Liste umkehrt. reverse "haskell" gibt "lleksah" zurück.
reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]
