import Prelude hiding (abs, even, odd, signum)

-- Überlege für die Basis Typen Bool, Char, String, Int, Integer, Float, Double zu welchen Klassen Eq, Ord, Num,
-- Integral, Fractional sie gehören. Stelle das Resultat in übersichtlicher Form dar und prüfe die Korrektheit im GHCi.
--- | Typ                   |  Eq | Ord | Num | Integral | Fractional |
--- | --------------------- | :-: | :-: | :-: | :------: | :--------: |
--- | **Bool**              |  ✓  |  ✓  |  ✗  |     ✗    |      ✗     |
--- | **Char**              |  ✓  |  ✓  |  ✗  |     ✗    |      ✗     |
--- | **String** (`[Char]`) |  ✓  |  ✓  |  ✗  |     ✗    |      ✗     |
--- | **Int**               |  ✓  |  ✓  |  ✓  |     ✓    |      ✗     |
--- | **Integer**           |  ✓  |  ✓  |  ✓  |     ✓    |      ✗     |
--- | **Float**             |  ✓  |  ✓  |  ✓  |     ✗    |      ✓     |
--- | **Double**            |  ✓  |  ✓  |  ✓  |     ✗    |      ✓     |

-- Instanzen inspizieren (zeigt u. a. Instanzlisten):
--- :info Eq
--- :info Ord
--- :info Num
--- :info Integral
--- :info Fractional

-- Kleine Checks mit Operatoren:
-- Eq
--- True == False         -- OK
--- 'a' == 'b'            -- OK
--- "hi" == "hi"          -- OK

-- Ord
--- True < False          -- OK
--- 'a' < 'b'             -- OK
--- "ab" < "ac"           -- OK (lexikografisch)

-- Num
--- 1 + 2                 -- OK (Int, defaulting möglich)
--- 1 :: Int; 1 + 2       -- OK
--- 1 :: Integer; 1 + 2   -- OK
--- 1.0 :: Double; 1.0 + 2.0  -- OK
--- True + 1              -- Fehler (Bool ist nicht Num)
--- "3" + "4"             -- Fehler (String ist nicht Num)

-- Integral vs. Fractional:
--- 7 `div` 2             -- OK (Integral)
--- 7 / 2                 -- OK (Fractional: ergibt 3.5)
--- (7 :: Int) / 2        -- Fehler (Int ist nicht Fractional)
--- (7 :: Int) `div` 2    -- OK
--- (7 :: Double) `div` 2 -- Fehler (`div` braucht Integral)

-- Bekannte Funktionen kombinieren: Man nutzt bereits vorhandene Funktionen und verbindet sie.
even :: Integral a => a -> Bool
even n = n `mod` 2 == 0

odd' :: Integral a => a -> Bool
odd' n = not (even n)

-- If–Else Ausdrücke: Entscheidungen mit zwei Fällen. else ist zwingend nötig.
abs :: Int -> Int
abs n = if n >= 0 then n else -n

-- Guards (| … = …): Übersichtlicher für mehrere Bedingungen.
signum :: Int -> Int
signum n 
  | n > 0     = 1
  | n < 0     = -1
  | otherwise = 0

-- Pattern Matching: Direktes Erkennen von Mustern in den Argumenten.
not' :: Bool -> Bool
not' True  = False
not' False = True
-- Mit Wildcard _ als Platzhalter.
and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _       = False

-- Lambda-Ausdrücke
double :: Num a => a -> a
double x = 2 * x
