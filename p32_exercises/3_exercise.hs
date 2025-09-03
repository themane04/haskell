--- Definiere drei Funktionen, welche für ein 3-Tupel das 1., 2. und 3. Element zurückgeben.
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z
