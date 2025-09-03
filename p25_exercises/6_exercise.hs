-- Der binäre Operator > gibt True zurück, wenn das erste Argument grösser ist als das zweite, sonst False. Definiere durch partielle Funktionsanwendung eine Funktion isNegative, welche True zurückgibt, wenn das
-- Argument negativ ist, sonst False.
--- Prelude> isNegative 0
--- False
--- Prelude> isNegative (-1)
--- True
isNegative :: (Ord a, Num a) => a -> Bool
isNegative = (0 >)
