import team
import relation
import list
import bool
import pair

total_experience: Nat
total_experience = sum_rel teammates female yearsofexperience
-- query2 teammates female yearsofexperience plus 0
--expect 32

number_f: Nat
number_f =count_rel teammates female  
--query2 teammates female countOne plus 0 
--expect 3

aveExp:pair Nat Nat
aveExp = ave_rel teammates female yearsofexperience
--expect mkPair 32 3
