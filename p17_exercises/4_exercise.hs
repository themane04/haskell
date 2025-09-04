-- Schreibe alle Funktionen aus Kapitel 2.3, sofern möglich,
-- inInfix-Notationund die Operatoren inPrefix-Notation

--- Regel:
---- Funktion infix: a \f` b`
---- Operator prefix: (op) a b

--- Funktionen aus 2.3 → Infix (sofern möglich)
---- take :: Int -> [a] -> [a]
---- Prefix: take 2 xs
---- Infix: 2 \take` xs`

---- drop :: Int -> [a] -> [a]
---- Prefix: drop 3 xs
---- Infix: 3 \drop` xs`

---- elem :: Eq a => a -> [a] -> Bool
---- Prefix: elem 3 [1..10]
---- Infix: 3 \elem` [1..10]`

---- Nicht möglich als Infix (einargumentig): head, tail, length, reverse.

--- Operatoren aus 2.3 → Prefix

---- !! :: [a] -> Int -> a
---- Infix: xs !! 2
---- Prefix: (!!) xs 2

---- (++) :: [a] -> [a] -> [a]
---- Infix: [1,2] ++ [3,4]
---- Prefix: (++) [1,2] [3,4]