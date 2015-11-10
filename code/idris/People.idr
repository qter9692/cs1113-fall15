module People
import Person
import bool
import list

-- a few Persons
tom: Person
tom = MkPerson "Tom" 21 77 false

mary: Person
mary = MkPerson "Mary" 30 61 true

ge: Person
ge = MkPerson "Ge" 27 71 true

daryl: Person 
daryl = MkPerson "Daryl" 22 68 false


people: list Person
people = tom::mary::ge::daryl::nil

women:list Person
women = filter gender people

wAges: list Nat
wAges = map age women

--select, project, and reduce

--years:Nat
--years = list.foldr plus 0 wAges



mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t)= (age h)::(mapAge t)

--map:(a->b)-> list a -> list b
--map f nil =nil
--map f (h::t) = (f h) :: (map f t)
