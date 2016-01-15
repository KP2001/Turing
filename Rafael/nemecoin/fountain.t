%Nemecoin Fountain, gives between 0 and 0.50 NMC
var name : string
var cash : real
var earn : real := Rand.Real / 2
var r, w : int

put "Nemecoin Fountain"
put "Please give your wallet name"
put ">> "..
get name

put "Adding ", earn, " to ", name

open : r, "w/" + name + ".txt", get
get : r, name
get : r, cash
close : r

cash := cash + earn

open : w, "w/" + name + ".txt", put
put : w, name
put : w, cash
close : w

put "Nemecoin successfully added!"
