import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialized
import list
import ite


f1: set bool
f1 = set_remove true (mkSet (false::true::nil))
--mkSet (false::nil)

f2: nat
f2 = set_cardinality (mkSet (S(S(S O))::(S O)::(S(S O))::nil))
--expect S(S(S O))

f3: bool
f3 = set_member (S O) (mkSet (S(S O)::nil))
--expect false

f4: set bool
f4 = set_union (mkSet (false::nil)) (mkSet (true::nil))
--expect mkSet (false::true::nil)

f5: set nat
f5 = set_intersection (mkSet (S(S O)::(S O)::(S(S(S(S O))))::nil)) (mkSet ((S O)::nil))
--expect mkSet (S O :: nil)

f6: set bool
f6 = set_difference (mkSet (true::nil)) (mkSet (false::nil))
--expect true::nil

f7: bool
f7 = set_forall evenb (mkSet (S(S O)::(S O)::nil))
--expect false

f7':bool
f7' = set_forall evenb (mkSet (S(S O)::O::nil))
--expect true

f8: bool
f8 = set_exists evenb (mkSet (S O::nil))
--expect false

f9: option bool
f9 = set_witness constFalse (mkSet (true::nil))
--expect none

f10: set (pair nat bool)
f10 = set_product (mkSet (S O::(S(S O))::nil)) (mkSet (false::true::nil))
--expect mkSet (mkPair (S O) false ::mkPair (S O) true ::mkPair (S (S O)) false :: mkPair (S (S O)) true :: nil)

 
