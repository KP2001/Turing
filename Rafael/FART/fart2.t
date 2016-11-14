% FART2 (Fantastic ART 2)
% By NotNemesis @ MadOctopus

View.Set ("graphics:900;600,title:FART2 ALPHA, nobuttonbar")
var mx, my, bm: int
var key : array char of boolean

loop
Mouse.Where (mx,my, bm)
Input.KeyDown (key)

locate (1,1)
put "x: ", mx, "  y: ", my, "  button:", bm

if bm = 1 then
drawfillbox (mx,my,mx + 3, my + 3, black)
% also possible: drawfilloval (mx,my,3,3, black)
end if

if key (' ') then
cls
end if

end loop

