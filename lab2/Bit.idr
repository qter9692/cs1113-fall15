module Bit

data Bit = zero | one

change: Bit -> Bit
change zero = one
change one = zero

id: Bit -> Bit
id one = one
id zero = zero


