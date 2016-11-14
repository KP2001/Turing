%BTTNMSHR by NotNemesis
View.Set ("graphics:200;200,title:BTTNMSHR, position:center;center, nobuttonbar")

var key : string (1)
var bmr, bmw : int
var score : int := 0
put "MASH THE SPACE KEY!!!"

open : bmr, "bms.txt", get
loop
    exit when eof (bmr)
    get : bmr, score
end loop

close : bmr

loop

    locate (2, 1)
    put "Score ", score
    if hasch then
        getch (key)
        if key = chr (32) then
            score := score + 1
        end if
    end if


    open : bmw, "bms.txt", put
    loop
        put : bmw, score
        exit
    end loop

    close : bmw

    delay (10)
end loop



