-- Definiere die signum Funktion durch if–else Bedingungen anstelle der Guards.
signum n
  | n > 0     = 1
  | n < 0     = -1
  | otherwise = 0

-- Mit if–else:
signum2 :: (Ord a, Num a) => a -> Int
signum2 n
  | n > 0 = 1
  | n < 0 = - 1
  | otherwise = 0
