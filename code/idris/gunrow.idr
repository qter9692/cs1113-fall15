module gunrow

import list

data country = Argentina | Australia  | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000 by gun for homocides, suicides, unintentional, other 

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austlia:gunrow
austlia = mkGunrow Australia 11 62 5 8

austr: gunrow
austr = mkGunrow Austria 18 268 1 8


hond: gunrow
hond = mkGunrow Honduras 648 0 0 0

us: gunrow
us = mkGunrow USA 355 670 16 9


countryfield: gunrow-> country
countryfield (mkGunrow c h s u o)= c

homocidePer10M: gunrow -> Nat
homocidePer10M (mkGunrow c h s u o)= h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o)= s

unintentionalPer10M: gunrow-> Nat
unintentionalPer10M (mkGunrow c h s u o)= u

otherPer10M: gunrow-> Nat
otherPer10M (mkGunrow c h s u o)= o


firearm:list gunrow
firearm = argen :: austlia :: austr :: hond :: us :: nil
