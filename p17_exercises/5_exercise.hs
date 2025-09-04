-- Der nachfolgende Haskellcode weist drei syntaktische Fehler auf. Korrigiere diese und prüfe mit GHCi oder
-- GHC, dass dein Code syntaktisch korrekt ist.
--- Foo x = a 'div' length xs
--- where a = -10 + x
--- xs = [1,2,3,4]

---- Funktionsnamen beginnen klein, Foo muss foo heißen.
---- Backticks statt Hochkomma: 'div' ist falsch, es muss `div` sein.
---- Einrückung im where-Block: a und xs müssen eingerückt sein, damit sie zu foo gehören.
foo x = a `div` length xs
  where
    a  = -10 + x
    xs = [1,2,3,4]
