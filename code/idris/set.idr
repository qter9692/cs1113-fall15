module set
import list
import ite
import bool
import eq

|||mkSet is meant to be privae
data set a =mkSet (list a)

|||a starting for building any set
new_set : set a 
new_set = mkSet nil

set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l) (mkSet l) (mkSet (v::l))

eql_set: (eq (list a), eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = same_elements l1 l2
  
instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2
  

--same member, two lists if contain same elements , regardless of order
--use member: a->list a-> bool
--list inequality function,tells you whether two elements contain same
  --elements 
  --and (every element in l1 is in l2) (every element in l2 is in l1)
   


