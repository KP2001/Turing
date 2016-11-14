% Gambalo! By NotNemesis
View.Set ("graphics:900;600,title:Gambalo!, nobuttonbar")
var money, bet, betwl, d1bet, d1act, plag : int
money := 1000

put "Gambalo! By NotNemesis"
put ""
loop
    put "You have $", money, ".00 , how much will you bet?"
    put ">> $" ..
    get bet

    if bet > money then
        put "Invalid bet, please make a valid one"
        put ">> $" ..
        get bet
    elsif bet < 0 then
        put "Invalid bet, please make a bet higher than $0.00"
        put ">> $" ..
        get bet
    end if

betwl := bet * 2
put "Bet what you will get (1 - 6)"
put ">> "..
get d1bet

if d1bet < 0 then
        put "Invalid bet, please make a higher bet (1 - 6)"
        put ">> " ..
        get bet
    elsif d1bet > 6 then
        put "Invalid bet, please make a lower bet (1 - 6)"
        put ">> " ..
        get bet
    end if
    
put ""
put "Rolling the dice..."
randint (d1act, 1, 6)

put "The dice roll is ", d1act

if d1act = d1bet then
put "Horray! You bet correctly!"
put "$", betwl, ".00 won!"
money := money + betwl
else 
put "Boo! You bet incorrectly!"
put "$", betwl, ".00 lost!"
money := money - betwl
end if

if money < 0 or money = 0 then
put "Oh no! You ran out of money!"
exit
else
put "Would you like to play again? ([1] Yes or [2] No)"
get plag
end if 

if plag = 1 then
cls
elsif plag = 2 then
put "Game Over!"
put "You ended up with $", money, ".00"
exit
elsif plag > 2 then
put "Invalid answer, please give a valid one ([1] Yes or [2] No)"
end if

end loop



