module dna
import list
import pair
import nat


data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base C = G
 
complement_strand: list base -> list base
complement_strand s = map complement_base s

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair a b)::p) = (a::(strand1 p))

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair a b)::p) = (b::(strand2 p))

makepair: base -> pair base base
makepair a = mkPair a (complement_base a)

complete: list base -> list (pair base base)
complete nil = nil
complete f = map makepair f


match_base: pair base base-> nat
match_base (mkPair A A) = (S O)
match_base (mkPair T T) = (S O)
match_base (mkPair G G) = (S O)
match_base (mkPair C C) = (S O)
match_base (mkPair _ _) = O

mkList: pair base (list base) -> list (pair base base)
mkList (mkPair a nil) = nil
mkList (mkPair a (b::l)) = (mkPair a b)::(mkList (mkPair a l))

countBase: pair (list base) base -> nat
countBase (mkPair (b::l) a) = list.foldr add O (map match_base (mkList (mkPair a (b::l))))
