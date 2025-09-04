-- Bestimme den Rückgabewert folgender Funktionsaufrufe:
--- 1) elem (7-4) [1,9,7,3,0]
--- 7-4 = 3
--- Liste: [1,9,7,3,0]
--- elem 3 [1,9,7,3,0] → True
--- ✅ Ergebnis: True

--- 2) take 5 [2,4..]
--- [2,4..] = unendliche Liste der geraden Zahlen [2,4,6,8,10,12,...]
--- Erste 5 Elemente: [2,4,6,8,10]
--- ✅ Ergebnis: [2,4,6,8,10]

--- 3) take 4 (reverse [1,2,3])
--- reverse [1,2,3] = [3,2,1]
--- take 4 [3,2,1] → Liste hat nur 3 Elemente, also: [3,2,1]
--- ✅ Ergebnis: [3,2,1]

--- 4) length (drop 3 [5,7,-12,8,0,-1])
--- Liste: [5,7,-12,8,0,-1]
--- drop 3 entfernt die ersten 3 Elemente → [8,0,-1]
--- length [8,0,-1] = 3
--- ✅ Ergebnis: 3