%Nemecoin Trader
var acc : array 1 .. 4 of string
var r, w : int
var mon, from, to2 : real

put "Nemecoin Bank"
put "A trading fee of 0.015n will be taken with every transaction"
put "Please input the file name of the from account"
put "From > "..
get acc (1)
put "Please input the file name of the to account"
put "To > "..
get acc (2)
put "Please input the amount that you want to transfer"
put "Ammount > "..
get mon

open : r, "w/" + acc (1) + ".txt", get
get : r, acc(3)
get : r, from
close : r

open : r, "w/" + acc (2) + ".txt", get
get : r, acc(4)
get : r, to2
close : r

to2 := to2 + mon
from := from - mon

open : w, "w/" + acc (1) + ".txt", put
put : w, acc (1)
put : w, from
close : w

open : w, "w/" + acc (2) + ".txt", put
put : w, acc (2)
put : w, to2
close : w

put "Transfer success!"
