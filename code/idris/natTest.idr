import nat
import Serialized


|||test add
a1: nat
a1 = add (S(S(S(S O)))) (S O)
--expect (s(s(s(s(s o)))))

a2: nat
a2 = add O (S(S(S O)))
--expect (s(s(s o)))

||| test mult
m1:nat
m1 = mult O (S O)
--expect o

m2:nat 
m2 = mult (S(S O)) (S(S O))
--expect (s(s(s(s o))))

|||test expp
ep1:nat
ep1 = expp O (S O)
--expecting 0

ep2: nat
ep2 = expp (S(S(S O))) O
--expecting (s o)

ep3: nat
ep3= expp (S(S O)) (S(S O))
-- expecting (s(s(s(s o))))

|||test fact
fc1:nat
fc1 = fact (S(S O))
--expecting (s(s o))

fc2:nat
fc2 = fact O
--expect (s o)

fc3:nat
fc3 = fact (S(S(S O)))
--expect (s(s(s(s(s(s o))))))

||| test for sub
s1:nat
s1= sub (S O) O
--expecting (s o)

s2:nat
s2= sub O (S(S O))
--expecting o

s3:nat
s3 = sub (S(S(S O))) (S O)
--expecing (s(s o))

|||test fib
f1:nat
f1= fib(S(S(S(S(S(S O))))))
--expecting 5

f2:nat
f2=fib(S(S(S(S(S(S(S O)))))))
--expecting 8

s:String
s = toString f1
