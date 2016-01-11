%Nemecoin Wallet Checker
var file, filer, name, mon : string
var r : int 

put "Please type your file name (no need for file extension)"
get file
open : r, "w/" + file + ".txt", get
get : r, name
get : r, mon
close : r
put "Account Name > ", name
put "Ammount > ", mon, "n"
