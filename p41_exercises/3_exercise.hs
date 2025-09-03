-- Sei xss eine beliebige Liste von Listen. Was gibt folgende Listenabstraktion zurück?
xss = [[1,2],[3,4],[5]]
l9 = [x | x <- xss]
-- sagt:
--- „Nimm jedes x aus der Liste xss und baue daraus eine neue Liste.“
--- Wenn xss eine Liste von Listen ist, dann wird jedes x ein Element aus dieser Liste sein, also selbst wieder eine Liste.
--- Ergebnis: Man bekommt einfach wieder xss zurück (es wird nichts verändert).

-- Oder mit Strings:
xss2 = ["hi","hallo","servus"]
l10 = [x | x <- xss2]