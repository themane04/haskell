-- Die nachfolgende Tabelle stammt aus einer Datenbank und soll in Haskell definiert werden. Wie lautet der Typ dieser Tabelle und der Wert?
---- Marke Vollkasko Baujahr  Vorname   Nachname
---- Fiat     ja      2021     Anna    Baumgartner
----  VW      ja      2021     Vera      Gurtner
----  BMW    nein     2020     Bob        Wayne
----  VW      ja      2021     Zoe      d’Olivera

----- Marke → String
----- Vollkasko → Bool (ja = True, nein = False)
----- Baujahr → Int
----- Vorname → String
----- Nachname → String

type Tabelle = [(String, Bool, Int, String, String)]

tabelle :: Tabelle
tabelle =
  [ ("Fiat", True , 2021, "Anna", "Baumgartner")
  , ("VW"  , True , 2021, "Vera", "Gurtner")
  , ("BMW" , False, 2020, "Bob" , "Wayne")
  , ("VW"  , True , 2021, "Zoe" , "d’Olivera")
  ]
