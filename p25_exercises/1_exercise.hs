-- Bestimme die Typen folgender Werte.
value1 = ['a','b','c'] -- [Char]
value2 = ('a','b', 'c') -- (Char, Char, Char)
value3 = [(False,'0'),(True, '1')] -- [(Bool, Char)]
value4 = ([False,True],['0','1']) -- ([Bool], [Char])
value5 = [tail,init,reverse] -- [[a] -> [a]]
value6 = ((+),(*),(/)) -- (Integer -> Integer -> Integer, Integer -> Integer -> Integer, Double -> Double -> Double)
