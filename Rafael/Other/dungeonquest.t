% DungeonQuest by NotNemesis
View.Set ("title:DungeonQuest;graphics:900;600;nobuttonbar")
colour (white)
colourback (black)
cls

var input : int
var pow : int := 3
var lif : int := 3
var nam : string
var level, mxlvl : int
var mon_chance_min, mon_chance_max : int
var load : int := 0
var ltim : int
var ds1 : string := "Incomplete!"
var ds2, ds3, ds4, ds5, ds6, ds7, ds8 : string := "nodata"
var dunip : int

put "DungeonQuest"
put "By NotNemesis"
put "Type [1] to begin your quest!"
get input

if input = 1 then
    cls
    put "What is your name, hero?"
    get nam : *
end if

for i : 1 .. 101
    cls
    put "Hello ", nam, "! Your quest will begin soon!"
    put "Loading Game..."
    randint (ltim, 0, 3)
    colour (10)
    put load, "%"
    delay (ltim)
    load := load + 1
    colour (white)
end for

cls
put "Hero: ", nam, "                                                                                            HP: ", lif
put "--------------------------------------------------------------------------------------------------------------"
put ""
put "Dungeons:"
put "[1] Little Cave ................................................................................... ", ds1
put "[2] Cave2 ......................................................................................... ", ds2
put "[3] Cave3 ......................................................................................... ", ds3
put "[4] Cave4 ......................................................................................... ", ds4
put "[5] Cave5 ......................................................................................... ", ds5
put "[6] Cave6 ......................................................................................... ", ds6
put "[7] Cave7 ......................................................................................... ", ds7
put "[8] Cave8 ......................................................................................... ", ds8
put ""
put "Select a dungeon!"
get dunip

if dunip = 1 then
cls
put "Hero: ", nam, "                                                                                            HP: ", lif
put "--------------------------------------------------------------------------------------------------------------"
put ""
put " HH    HH                                                                                                      "
put " HH    HH                                                                                                      "
put " HHHHHHHH                                                                                                      "
put " HHHHHHHH
