module list 

import nat
import bool
import ite
import eq
import Serialized



infixr 7 ::, +++
--r means right associative, has precedent of 7, with a new notation ::

data list a = nil | (::) a (list a)


length : list a -> nat
length nil= O
length(n :: l) = S(length l)

append: list a-> list a -> list a
append  nil l = l
append (n :: l1) l2  = n :: (append l1 l2)
--n is a , l1 is list a 
--if I append a nonempty list to another list, what i get is the head
  --of the first list and the rest of the first list append with the
    --second list.module list 
|||append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h :: (t ++ l2)

|||map a function over the elements of a list 
map:(a->b) ->list a ->list b
map f nil = nil
map f (h::t) = (f h)::(map f t)
--a->b can be any function that takes one type to another type


|||give a list and a predicate on elements 
|||return the sublist of elemtnst for which 
|||the predicate is true
filter:(a->bool) ->list a->list a
filter f nil = nil
filter f (n::t) = ite (f n) (n::(filter f t)) (filter f t)
--if condition holds return one result,
--otherwise return another result 
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

--eql: a -> a-> bool
--eql v1 v2 = ?big_hole

--the function is only applicable whenever a is in eq class

member:(eq a) => a -> list a -> bool
member v nil = false
member v (h::t)= ite (eql v h) true (member v t)


subset_elements: (eq a)=> list a -> list a -> bool
subset_elements nil l =true
subset_elements (h1::t1) l2 = ite (member h1 l2) (subset_elements t1 l2) false

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql nil (n::l) =false
  eql (m::l') nil = false
  eql (h1::l1) (h2::l2) = and (eql h1 h2) (eql l1 l2)

foo: (Serialize (list a), Serialize a) => list a -> String
foo nil = ""
foo (h::nil) = (toString h)
foo (n::l) = (toString n) ++ "," ++ (foo l)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (foo l)  ++ "]"
