module nat

import bool
import eq
import Serialized 

data nat = O | S nat

|||given two natural number returns its sum
add: nat-> nat -> nat
add O m = m
add (S n) m = S(add n m)

mult: nat-> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

expp: nat->nat->nat
expp O n = O
expp m O = (S O)
expp n (S m) = mult n (expp n m)

fact:nat->nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

sub: nat-> nat-> nat
sub n O = n
sub O m = O
sub (S n) (S m) =sub n m

fib:nat->nat
fib (S O)=O
fib (S(S O)) = (S O)
fib (S(S n)) = add (fib (S n)) (fib n)

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m 

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
