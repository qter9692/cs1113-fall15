module foodMatch

data food = steak | fish
data wine = redwine | whitewine
 

m1: food -> wine
m1 steak = redwine
m1 fish = whitewine

