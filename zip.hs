-- 1) Grundprinzip
zip [1..4] ["eins","zwei","drei","vier"]

-- 2) Trunkiert bei der kürzeren Liste
zip [10,20] [True,False,True]

-- 3) Praktischer Trick: aufeinanderfolgende Paare (mit tail)
paare xs = zip xs (tail xs)
paare [1,2,3,4]     -- [(1,2),(2,3),(3,4)]
