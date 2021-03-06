-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool
import Serialized
data bool = true | false


--binary function (bool->bool->bool) implicit
and: bool->bool->bool
and true true = true
and _ _ = false

--this is still binary function 
or: bool->bool->bool
or false false = false
or _ _ = true

xor:bool->bool->bool
xor false true = true
xor true false = true
xor _ _ = false

nand:bool->bool->bool
nand true true =false
nand _ _ = true

uf: bool->bool
uf = (and true)

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

eql_bool: bool -> bool -> bool
eql_bool false false = true
eql_bool true true = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
