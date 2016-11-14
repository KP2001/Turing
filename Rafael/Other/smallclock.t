View.Set ("graphics:310;120,title:SmallClock,position:center;center,nobuttonbar")
var timeOfDay : string
var today : string
var font : int := Font.New ("system:50")
var cf : int := Font.New ("consolas:7")
colourback (black)
loop
    time (timeOfDay)
    date (today)
    Font.Draw (today, 0, 62, font, 28)
    Font.Draw (timeOfDay, 0, 10, font, 28)
    Font.Draw ("NotNemesis (C) 2015", 200, 0, cf, 28)
    delay (1000)
    cls
end loop
