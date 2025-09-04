-- 1) Grundprinzip
zip1 = zip [1..4] ["eins","zwei","drei","vier"]

-- 2) Trunkiert bei der kürzeren Liste
zip2 = zip [10,20] [True,False,True]

-- 3) Praktischer Trick: aufeinanderfolgende Paare (mit tail)
paare :: [a] -> [(a,a)]
paare xs = zip xs (tail xs)

testPaare = paare [1,2,3,4]
