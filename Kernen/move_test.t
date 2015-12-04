var loc : array 1 .. 4 of int % 1 = x1  2 = y1  3 = x2  4 = y23
var ms : int := 6
loc (1) := 0 %x
loc (2) := 0 %y
loc (3) := 10 %x
loc (4) := 10 %y
var key : array char of boolean % takes input 
View.Set ("graphics:max;max, title: character movement for mc47, nobuttonbar")

loop
Input.KeyDown (key)
if key (KEY_UP_ARROW) then
loc (2) := loc (2) + ms
loc (4) := loc (4) + ms
end if

if key (KEY_DOWN_ARROW) then
loc (2) := loc (2) + ms
loc (4) := loc (4) + ms
end if

if key (KEY_LEFT_ARROW) then
loc (1) := loc (1) + ms
loc (3) := loc (3) + ms
end if

if key (KEY_RIGHT_ARROW) then
loc (1) := loc (1) + ms
loc (3) := loc (3) + ms
end if

drawfillbox (loc (1), loc (2), loc (3), loc (4), red)
delay (30)
cls
end loop
