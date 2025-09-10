-- 6.7.1
--- a) Definiere rekursiv den Multiplikations-Operator (∗) mithilfe der Addition.
mul :: (Eq a, Num a, Ord a) => a -> a -> a
mul _ 0 = 0
mul x n
  | n > 0     = x + mul x (n-1)
  | otherwise = negate (mul x (negate n))  -- optional: für negative n

--- b) Definiere rekursiv den Konkatenations-Operator (++).
append :: [a] -> [a] -> [a]
append []     ys = ys
append (x:xs) ys = x : append xs ys
