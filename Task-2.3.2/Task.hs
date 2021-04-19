module Task where

instance (Printable a, Printable b) => Printable (a,b) where
  toString p = "(" ++ ((toString.fst) p) ++ "," ++ ((toString.snd) p) ++ ")"