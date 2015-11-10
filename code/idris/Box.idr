module Box
import bool
import unit
import eq
import Serialized

data Box t = mkBox t

unbox: Box t -> t
unbox (mkBox c) = c

instance (eq a)=> eq (Box a) where
  eql (mkBox m1) (mkBox m2) = eql m1 m2 

 instance (Serialize a)=> Serialize  (Box a) where
   toString (mkBox b) = "(" ++ (toString b) ++ ",)"
