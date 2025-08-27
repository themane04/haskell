import Prelude hiding (abs, even, odd, signum)

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
