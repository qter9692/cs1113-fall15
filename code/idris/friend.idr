module friend

import bool

|||a friend is someone who is or isn't trustworthy, who has a name, who has an age in years




data friend = mkFriend bool String Nat

f1:friend
f1 = mkFriend true "Emma" 20

f2:friend
f2 = mkFriend true "Carina" 21


getAge:friend ->Nat
getAge (mkFriend b s n) = n

getName:friend ->String
getName (mkFriend b s n) = s

getTrust:friend ->bool
getTrust (mkFriend b s n) = b

--record person where constructer Mkperson
--name:string
--age:Nat
--newName: PErson->string -> Person
--new Name p n = record {name =n} p

