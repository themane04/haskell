import Data.Char (chr, ord, isLower)

-- Erweitere die encode Funktion so, dass nur Kleinbuchstaben kodiert werden und alle anderen Zeichen nicht
-- verändert werden. Tipp: Suche inHoogle eine Funktion vom Typ Char -> Bool, welche genutzt werden kann,
-- um Kleinbuchstaben zu erkennen. Teste dann den Code wie folgt:
shift :: Int -> Char -> Char
shift n c
  | isLower c = chr (((ord c - ord 'a' + n) `mod` 26) + ord 'a')
  | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
