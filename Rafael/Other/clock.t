View.Set ("graphics:700;210,title:Clock,position:center;center,nobuttonbar")
var timeOfDay : string
var today : string
var font : int := Font.New ("consolas:100")
var cf : int := Font.New ("consolas:7")
colourback (black)

loop
    time (timeOfDay)
    date (today)
    Font.Draw (today, 20, 120, font, 28)
    Font.Draw (timeOfDay, 50, 20, font, 28)
    Font.Draw ("NotNemesis (C) 2015", 600, 0, cf, 28)
    delay (1000)
    cls
end loop
