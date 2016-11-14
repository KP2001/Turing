var vare : int := Window.Open
("graphics: 100;100, title:FART GPS, position:bottom,left")
var art : int := Window.Open
("graphics: 900;600 title:FART, position:top, center")
var chars : array char of boolean
var x, y, xx, yy : int
var title : int := Font.New ("system:50")
var hud : int := Font.New ("system:20")
var colur : int


x := 0
y := 0
xx := 10
yy:= 10

Font.Draw ("(F)ART", 0, 540, title, black)
Font.Draw ("[A] - [H] for colours 1-6", 0, 500, hud, black)
Font.Draw ("[Z] - [N] for colours 7-12", 0, 470, hud, black)
Font.Draw ("[E] for white", 0, 440, hud, black)
Font.Draw ("[R] for random colour", 0, 410, hud, black)
Font.Draw ("[SPACE] to clear", 0, 380, hud, black)
delay (6000)
randint (colur, 1, 12)
cls

loop
Window.Select (art)
Input.KeyDown (chars)

if chars (KEY_UP_ARROW) then
y := y + 3
yy := yy + 3
end if

if chars (KEY_DOWN_ARROW) then
y := y - 3
yy := yy - 3
end if

if chars (KEY_LEFT_ARROW) then
x := x - 3
xx := xx - 3
end if

if chars (KEY_RIGHT_ARROW) then
x := x + 3
xx := xx + 3
end if

if chars (' ') then
randint (colur, 1, 12)
cls
end if

if chars ('r') then
randint (colur, 1, 12)
end if

if chars ('e') then
colur := 0
end if

if chars ('a') then
colur := 1
end if

if chars ('s') then
colur := 2
end if

if chars ('d') then
colur := 3
end if

if chars ('f') then
colur := 4
end if

if chars ('g') then
colur := 5
end if

if chars ('h') then
colur := 6
end if

if chars ('z') then
colur := 7
end if

if chars ('x') then
colur := 8
end if

if chars ('c') then
colur := 9
end if

if chars ('v') then
colur := 10
end if

if chars ('b') then
colur := 11
end if

if chars ('n') then
colur := 12
end if


drawfillbox (x, y, xx, yy, colur)
Window.Select (vare)
cls
put "Colour : ", colur
put "X : ", x
put "Y : ", y
delay (7)
end loop
