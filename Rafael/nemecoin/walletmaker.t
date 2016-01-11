%Nemecoin Account Register
var name : string 
var cash : int
var cent : real := Rand.Real
var mon : real
var w : int

randint (cash, 0, 100)
mon := cash + cent
put "Welcome to Nemecoin Wallet Register"
put "Please type your account name (no spaces)"
put ">> "..
get name
put "Account will be registered as ", name, " with ", mon, "n"

open : w, "w/" + name + ".txt", put
put : w, name
put : w, mon
close : w
