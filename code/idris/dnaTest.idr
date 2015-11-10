import dna

c_a: base
c_a = complement_base A 
--expect T

c_g: base
c_g = complement_base G
--expect C

c_t:base
c_t = complement_base T
--expect A

c_c:base
c_c = complement_base C
--expect G
