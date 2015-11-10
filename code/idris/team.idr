module Team
import bool
import list
import relation

--a record type that is where we give names to fields, a team member
  --has a name, an age, and whether is female or not
  
record Team  where
    constructor MkTeam
    name : String
    age : Nat
    yearsofexperience: Nat
    female: bool

member1: Team
member1 = MkTeam "Andrew" 23 2 false

member2: Team
member2 = MkTeam "Lisa" 41 17 true

member3: Team
member3 = MkTeam "Taylor" 33 10 true

member4: Team
member4 = MkTeam "Hillary" 27 5 true

teammates: list Team
teammates = member1::member2::member3::member4::nil

women:list Team
women = filter female teammates

wAges: list Nat
wAges = map age women



