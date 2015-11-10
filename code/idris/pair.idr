module pair

import eq

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair f s) = f

snd: pair a b -> b
snd (mkPair f s) = s

instance (eq a, eq b) => eq (pair a b) where
  eql (mkPair v1 v2) (mkPair n1 n2) =
    and (eql v1 n1) (eql v2 n2)
