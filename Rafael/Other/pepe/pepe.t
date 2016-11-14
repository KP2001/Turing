
var pepe: int := Pic.FileNew("pepe.jpg")
var gpepe: int := Pic.FileNew("gpepe.jpg")
var xx,yy, col : int
var pic : int
View.Set ("graphics:max;max,nobuttonbar")

loop
randint (xx,0, maxx)
randint (yy, 0, maxy)
randint (col,0,255)
randint (pic,0,100)

if pic > 1 then
Pic.Draw (pepe,xx,yy,0)else
Pic.Draw (gpepe,xx,yy,0)
end if
    put ""
    colourback (col)
end loop
