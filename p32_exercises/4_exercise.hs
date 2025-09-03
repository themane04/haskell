-- Ergänze in folgender Funktion die Listen Patterns, so dass diese für alle Listen korrekt ist.
tell :: (Show a) => [a] -> String
tell [] = "leere Liste"
tell [x] = "Liste mit genau dem Element " ++ show x
tell [x,y] = "Liste mit 2 Elementen " ++ show x ++ ", " ++ show y
tell (x:y:_) =
  "Beliebig lange Liste mit mindestens den ersten beiden Elementen "
  ++ show x ++ ", " ++ show y
