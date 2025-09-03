-- Betrachte folgende Funktionsdefinitionen:
first = head
second xs = head (tail xs)
swap(a,b) = (b,a)
pair a b = (a,b)
palindrome xs = reverse xs == xs
twice f x = f (f x)
-- Wie lauten die Typen folgender Ausdrücke? Überlege zuerst und notiere deine Antwort, bevor du allenfalls im GHCi nachprüfts.
--- 1. first = [a] -> a
--- 2. first "haskell" = Char
--- 3. second = [a] -> a
--- 4. swap = (b, a) -> (a, b)
--- 5. pair = a -> b -> (a, b)
--- 6. pair True = b -> (Bool, b)
--- 7. palindrome = Eq a => [a] -> Bool
--- 8. twice = (t -> t) -> t -> t
