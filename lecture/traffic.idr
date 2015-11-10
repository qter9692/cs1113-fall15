module Trafficlight

data Trafficlight = red | amber | green

nextColor: Trafficlight -> Trafficlight
nextColor red = green
nextColor green = amber
nextColor amber = red
