-- 6.7.3
--- Zeige die rekursive Berechnung von fib(6) auf, indem du die Funktionsaufrufe in einem binären Baum darstellst. Warum ist diese Berechnung nicht effizient?
fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)
--- Warum ineffizient?
--- Viele Wiederholungen (z. B. fib 3 und fib 4 werden mehrfach berechnet).
--- Laufzeit wächst exponentiell (~Φⁿ). Besser wären Memoisierung oder eine lineare Variante:
fibLinear :: Int -> Int
fibLinear n = go n (1,1)  -- (fib i, fib (i-1))
  where
    go 1 (a,_) = a
    go 2 (a,_) = a
    go k (a,b) = go (k-1) (a+b, a)
