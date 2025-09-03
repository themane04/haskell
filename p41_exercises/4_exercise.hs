-- Definiere eine Funktion, welche eine Liste mit allen Positionen zurück gibt, an denen sich ein gesuchter Wert
-- in einer Liste befindet. Tipp: Benutze dazu die zip Funktion, um jeden Wert in der Liste mit seiner Position zu
-- paaren und dann nur diese Paare zu wählen, welche den gesuchten Wert enthalten.
-- Idee
--- Mit zip [0..] xs verknüpfen wir jede Position mit dem Element.
--- Dann filtern wir genau die Paare heraus, wo das Element dem gesuchten Wert entspricht.
--- Schließlich geben wir die Positionen zurück.
positions :: Eq a => a -> [a] -> [Int]
positions y xs = [i | (i,x) <- zip [0..] xs, x == y]
