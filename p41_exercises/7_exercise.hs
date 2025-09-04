import Data.Char (isLower, ord, chr)

-- Im besprochenen Verfahren zum Knacken der Caesar-Chiffrierung dekodieren wir den Geheimtext 26 Mal und
-- bestimmen jedesmal die Häufigkeitsverteilung. Ein effizienteres Vorgehen ist die Häufigkeitsverteilung des
-- Geheimtextes nur einmal zu bestimmen, und dann diese Verteilung um alle 0, . . . , 25 Positionen zu rotieren
-- und damit die Chi-Test-Werte zu bestimmen. Verwende dazu die rotate Funktion aus 2.7.7.

--- Definitionen:
---- chisqr (Chi-Quadrat-Test)
chisqr :: [Float] -> [Float] -> Float
chisqr os es = sum [ (o - e)^2 / e | (o,e) <- zip os es ]
---- os = observed (gemessene Häufigkeiten im Geheimtext)
---- es = expected (theoretische Häufigkeiten, z. B. deutsche Sprache)

---- Die Häufigkeitsverteilung von Buchstaben im Text:
freqs :: String -> [Float]
freqs xs = [ percent (count c xs) n | c <- ['a'..'z'] ]
  where
    n = length [x | x <- xs, isLower x]
    count c ys = length [y | y <- ys, y == c]
    percent m total = (fromIntegral m / fromIntegral total) * 100

---- Referenz-Häufigkeiten für Buchstaben im Deutschen (im Skript sind sie vorgegeben, z. B. aus einer Statistik).
---- Beispiel (vereinfacht):
table :: [Float]
table =
  [ 6.5, 1.9, 3.1, 5.1, 17.4, 1.7, 3.0, 4.5, 7.6, 0.3
  , 1.3, 3.4, 2.5, 9.8, 2.5, 0.8, 0.02, 7.0, 7.3, 6.1
  , 4.1, 0.9, 1.5, 0.04, 0.04, 1.3
  ]
---- (Das Array hat 26 Werte, je ein Prozentwert pro Buchstabe.)

---- Caesar-Shift für ein einzelnes Zeichen
shift :: Int -> Char -> Char
shift n c
  | isLower c = chr (((ord c - ord 'a' + n) `mod` 26) + ord 'a')
  | otherwise = c

---- Encode-Funktion
encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]

---- Die Umkehrung von encode (Caesar):
decode :: Int -> String -> String
decode n xs = encode (-n) xs

--- Schritt 1: rotate (aus 2.7.7)
rotate :: Int -> [a] -> [a]
rotate n xs = drop n xs ++ take n xs

--- Schritt 2: Häufigkeiten im Geheimtext
---- Angenommen, wir haben schon Hilfsfunktionen (wie im Skript Kap. 5.10):
---- freqs :: String -> [Float] → Häufigkeitsverteilung der Buchstaben im Text
---- chisqr :: [Float] -> [Float] -> Float → Chi-Quadrat-Test
---- table :: [Float] → erwartete Häufigkeitsverteilung in Deutsch

--- Schritt 3: Effiziente Berechnung mit rotate
---- Statt für jeden Schlüssel neu freqs zu berechnen,
---- machen wir es einmal und rotieren die Häufigkeitsliste.
positions :: String -> [Float]
positions xs =
  [ chisqr (rotate n obs) table | n <- [0..25] ]
  where obs = freqs xs

--- Schritt 4: crack-Funktion
---- Wir suchen den Index mit dem kleinsten Chi-Wert → das ist der Schlüssel.
crack :: String -> String
crack xs = decode factor xs
  where
    factor = snd (minimum [(chisqr (rotate n obs) table, n) | n <- [0..25]])
    obs    = freqs xs



-- Dieses File implementiert die Caesar-Verschlüsselung und eine Funktion,
-- um Geheimtexte automatisch zu entschlüsseln.
-- Caesar-Verschlüsselung (encode / decode)
-- encode n text verschiebt jeden Kleinbuchstaben im Text um n Positionen im Alphabet.
-- → Beispiel: encode 3 "angriff" = "dqjulii".
-- decode n text verschiebt zurück (encode (-n)).
-- Hilfsfunktionen
-- shift verschiebt ein einzelnes Zeichen.
-- rotate rotiert eine Liste um n Positionen (benutzt später bei der Analyse).
-- freqs berechnet die Buchstabenhäufigkeit (wie oft kommt „a“, „b“, … vor?).
-- chisqr berechnet, wie gut zwei Häufigkeitsverteilungen zueinander passen.
-- table ist die erwartete Häufigkeitsverteilung der Buchstaben im Deutschen.
-- Automatisches Knacken (crack)
-- crack geheimtext probiert alle 26 möglichen Verschiebungen aus.
-- Es vergleicht dabei die Buchstabenhäufigkeit des Textes mit table.
-- Der beste Treffer (kleinster Chi-Wert) wird als Entschlüsselung gewählt.