%Nemecoin Casino
var name : string
var bet, mon, winmon : real
var ran, r, w, chance : int


put "Nemecoin Casino"
put "Type your wallet name"
put ">> " ..
get name

open : r, "w/" + name + ".txt", get
get : r, name
get : r, mon
close : r

put "You have ", mon, "NMC available. Type your bet amount"
put ">> " ..
get bet

put "Choose your chance"
put "98% win rate, 1.0102x multiplier [1]" % <9800
put "97% win rate, 1.0206x multiplier [2]" % <9700
put "95% win rate, 1.0421x multiplier [3]" % <9500
put "90% win rate, 1.1x multiplier [4]" % <9000
put "75% win rate, 1.32x multiplier [5]" % <7500
put "50% win rate, 1.98x multiplier [6]" % <5000
put "25% win rate, 3.96x multiplier [7]" % <2500
put "10% win rate, 9.9x multiplier [8]" % <1000
put "5% win rate, 19.8x multiplier [9]" % <500
put "1% win rate, 99x multiplier [10]" % <100
put "0.1% win rate, 990x multiplier [11]" % <10
put ">> " ..
get chance

if chance = 1 then
    chance := 9800
    winmon := bet * 1.0102
elsif chance = 2 then
    chance := 9700
    winmon := bet * 1.0206
elsif chance = 3 then
    chance := 9500
    winmon := bet * 1.0421
elsif chance = 4 then
    chance := 9000
    winmon := bet * 1.1
elsif chance = 5 then
    chance := 7500
    winmon := bet * 1.32
elsif chance = 6 then
    chance := 5000
    winmon := bet * 1.98
elsif chance = 7 then
    chance := 2500
    winmon := bet * 3.96
elsif chance = 8 then
    chance := 1000
    winmon := bet * 9.9
elsif chance = 9 then
    chance := 500
    winmon := bet * 19.8
elsif chance = 10 then
    chance := 100
    winmon := bet * 99
elsif chance = 11 then
    chance := 10
    winmon := bet * 999
else
end if

put "Betting ", bet, "NMC..."
delay (1000)
randint (ran, 1, 10000)

if ran < chance then
put "Winner! You won ", winmon,"NMC!"
mon := mon + winmon
open : r, "w/" + name + ".txt", put
put : r, name
put : r, mon
close : r
put winmon, "NMC was deposited to your account"
end if

if ran > chance then
put "Aww, you lost! Lost ", bet, "NMC..."
mon := mon - bet
open : r, "w/" + name + ".txt", put
put : r, name
put : r, mon
close : r
put bet, "NMC was withdrawn from your account"
end if

if ran = chance then
put "It's a tie! You didn't win or lose any NMC!"
end if
