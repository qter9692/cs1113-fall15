module colors

import bool

import pair

data color = red | green | blue| yellow | cyan| magenta

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement yellow = blue
complement cyan = red
complement magenta = green

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive b = false

subtractive: color -> bool
subtractive a = not (additive a)


complements: pair color color -> bool
complements (mkPair red cyan)= true
complements (mkPair cyan red)= true
complements (mkPair green magenta)= true
complements (mkPair magenta green)= true
complements (mkPair blue yellow)= true
complements (mkPair yellow blue)= true
complements (mkPair _ _)= false

mixink: pair color color -> color
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow cyan) = green





 
 
 
