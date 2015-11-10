module Person
import bool
import list
||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
  constructor MkPerson 
  name: String
  age:Nat
  height: Nat
  gender: bool
    
--data Person'= mkPerson' String Nat Nat bool

-- An example value of type Person
p1: Person
p1 = MkPerson "Tommy" 3 12 false

p2:Person
p2 = MkPerson "Anny"  24 56 true

p3:Person
p3 = MkPerson "Linda" 50 55 true



Plist:list Person
Plist = p1::p2::p3::nil


Agelist: list Nat
Agelist = map age Plist


--getName': Person' -> String
--getName' (mkPerson' name age height gender) = name

--getAge': Person' -> Nat
--getAge' (mkPerson' name age height gender) = age

--field update function
--setName': Person' -> String -> Person'
--setName' (mkPerson' n a h g) n' = mkPerson' n' a h g
--just create a name, not overwrite

--setAge': Person' -> Nat -> Person's 
--setAge' (mkPerson' n a h g) a' = mkPerson' n a' h g


  
--projection function takes record to field, type of age is Person to Nat

--record { fieldName = value } for field override
setName: Person -> String -> Person 
setName p n = record {name = n} p

--{name=n} takes person record  produce a new person record, with only name is now n


setAge: Person -> Nat -> Person
setAge p a = record {age = a} p



