% Snakey By NotNemesis

var win : int := Window.Open ("graphics: 1200;820, title:SNAKEY, position:top, center")
var key : string (1)
var x, y, poi, col : int
var xinc, yinc : int

drawfillbox (0, 0, 1200, 800, red)
drawfillbox (20, 20, 1180, 780, 0)

loop
x := 320
y := 200
xinc := 0
yinc := 10
poi := 0
drawfillbox (0, 0, 1200, 800, red)
drawfillbox (20, 20, 1180, 780, 0)

loop
    Window.Select (win)
    exit when whatdotcolour (x, y) not= white
randint (col,1,10)

if col < 9 then
    drawfilloval (x, y, 5, 5, 7)
    else
    drawfilloval (x, y, 5, 5, 0)
    end if
    
    poi := poi + 1
    locate (1,1)
    put "Score", poi
    delay (50)

    %drawfilloval (x, y, 5, 5, white)

    x += xinc
    y += yinc

    if hasch then
        getch (key)
        if key = chr (203) then
            xinc := -10
            yinc := 0
        elsif key = chr (208) then
            xinc := 0
            yinc := -10
        elsif key = chr (200) then
            xinc := 0
            yinc := 10
        elsif key = chr (205) then
            xinc := 10
            yinc := 0
        end if
    end if


end loop
delay (1000)
Input.Flush
cls
end loop
