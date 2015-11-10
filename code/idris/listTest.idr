import list
import bool
import nat
import ite
import eq
import Serialized



lngth1: nat
lngth1 = length nil {a = nat}
--expect O


--length of [O]
l0:nat
l0= length(O :: nil)

--length of [bool]
l1:nat
l1 = length(true :: nil)

--length of []
l2: nat
l2 = length nil {a=nat}

lngth2: nat
lngth2 = length (false::false::nil)
--expect (S(S O))

appnd1: list bool
appnd1 = append (nil) (true::nil)
--expect  true:: nil

appnd2:list bool
appnd2 = append (false:: true :: true:: nil) (false:: nil)
--expect false:: true :: true:: false::nil
mp:list bool
mp= map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
--expect true::fasle::true::true::nil
flt:list nat
flt= filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
--expect (O::(S(S O))::(S(S(S(S O))))::nil)

isThree: bool
isThree = (member (S(S(S O))) flt)

s1: String
s1 = toString (true::nil)

s2: String 
s2 = toString (false::true::true::nil)

s3: String
s3 = toString (nil {a = bool})


