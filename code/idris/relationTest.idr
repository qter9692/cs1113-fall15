import relation
import Person
import People
import bool
import pair
import list


years': Nat
years' = query plus 0 age gender people
--expect 57

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = query plus 0 height gender people
--expect 132

names: String
names = query (++) "" name gender people
--expect "MaryGe"

years'': Nat
years'' = query2 people gender age plus 0
--expect 57

totalInches'': Nat
totalInches'' = query2 people gender height mult 1
--expect 4331

names'': String
names'' = query2 people gender name (++) ""
--expect "MaryGe"

number: Nat
number = query2 people gender countOne plus 0
--expect 2


aveAge: pair Nat Nat
aveAge = mkPair 
           (query2 people gender age plus 0) 
           (query2 people gender countOne plus 0)
--expect  mkPair 57 2
           
aveAge': pair Nat Nat
aveAge' = ave_rel people gender age
--expect mkPair 57 2

aveHeight: pair Nat Nat
aveHeight = ave_rel people gender height
--expect mkPair 132 2
