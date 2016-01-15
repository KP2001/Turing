% NemBrowser
View.Set ("graphics:max,max")
var site : string
var data : array 1 .. 1000 of string
var r,i, len : int 
i := 1

put "Type the site you would like to visit"
put ">> "..
get site

loop
open : r, "s/" + site + ".txt", get
get : r, len

for a : 1 .. len
get : r, data (a) : *
end for
close : r

for b : 1 .. len
put data (b)
end for
exit
end loop

