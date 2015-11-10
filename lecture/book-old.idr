module bool

data bool =  true | false
id: bool -> bool
id b=b

constTrue: bool -> bool
--constTrue true = true
--constTrue false = true
constTrue b = true

constFalse: bool -> bool
constFalse _ = false

