-- Gegeben ist eine Menge und wir wollen die Anzahl Partitionen bestimmen. Zum Beispiel für die Menge {a,b,c}
-- sind das
--- {a,b,c}
--- {a,b}, {c}
--- {a,c}, {b}
--- {b,c}, {a}
--- {a}, {b}, {c}
--- also 5 Partitionen. Dies ist die Bellsche Zahl Bn und kann rekursiv wie folgt bestimmt werden:
---- Bn+1​=k=0∑n​(kn​)Bk​
---- Dabei ist der Binomialkoeffizient (nk) wie folgt definiert:
--- Und die Fakultät n! kennst du ja bereits als Funktion fac.
--- Vielleicht programmierst du ja mal ein Game, wo du wissen musst, auf wie viele Arten du Gegner gruppieren
--- kannst oder was auch immer, dann liest du die Formel irgendwo nach und implementierst sie.
--- Definiere also eine Funktion bell, welche die n’te Bellsche Zahl berechnet. Zum Beispiel
--- Prelude> bell 3
--- 5
--- Du wirst staunen, wie viele Möglichkeiten es gibt, deine Klasse zu partitionieren.
--- Hinweise:
--- › Verwende den Typ Integer anstatt Int.
--- › Benutze für die Fakultät die Funktion fac.
--- › Definiere dann eine Funktion für den Binomialkoeffizienten, welcher immer ganzzahlig ist, pass also auf
--- bei der Division.
--- › Die Summanden kannst du mit einer Listenabstraktion elegant bestimmen.

--- Fakultät (Integer)
fac :: Integer -> Integer
fac 0 = 1
fac n = n * fac (n-1)

--- Binomialkoeffizient: n über k
choose :: Integer -> Integer -> Integer
choose n k = fac n `div` (fac k * fac (n - k))

--- Bellsche Zahl B_n
bell :: Integer -> Integer
bell 0 = 1
bell n = sum [ choose (n-1) k * bell k | k <- [0..n-1] ]


--- Optional (schneller): dynamisch aufbauen
--- Wenn du viele bell-Werte brauchst, kannst du sie iterativ erzeugen:
bells :: [Integer]
bells = bs where
  bs = 1 : [ sum [ choose (n-1) k * bs !! fromIntegral k | k <- [0..n-1] ] | n <- [1..] ]
-- Beispiel: take 6 bells == [1,1,2,5,15,52]
