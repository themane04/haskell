-- Definiere die Funktion null aus der Prelude, welche prüft, ob eine Liste leer ist oder nicht, auf drei verschiedene Arten:
--- 1. einmal mit Guards,
--- 2. einmal mit Pattern Matching und
--- 3. mit if-else.
-- Versuche danach über https://hoogle.haskell.org/ herauszufinden, wie die Funktion in Haskell konkret
-- implementiert ist, also welche der drei Varianten denn nun effektiv verwendet wird.

-- 1) Mit Guards
nullGuards :: [a] -> Bool
nullGuards xs
  | xs == []  = True     -- braucht Eq-Constraint, obwohl inhaltlich unnötig
  | otherwise = False

-- 2) Mit Pattern Matching
nullPM :: [a] -> Bool
nullPM []     = True
nullPM (_:_)  = False

-- 3) Mit if–else
nullIf :: [a] -> Bool
nullIf xs = if xs == [] then True else False

-- Wie ist null wirklich implementiert?
--- Typ in der Prelude (seit FTP/Foldable)
--- null :: Foldable t => t a -> Bool
--- (also nicht nur Listen!) – siehe Hoogle. 
--- Standarddefinition über foldr in Data.Foldable (polymorph): die Default-Version prüft nur, ob es irgendein erstes Element gibt; konkrete Strukturen können effizientere Spezialfälle definieren.
--- Spezialfall Liste: Implementiert per Pattern Matching (leere vs. nicht-leere Liste) – logisch äquivalent zu unserer Variante 2 und in O(1). (Dok-Hinweise zu Listen in base und geläufige Umsetzung.)