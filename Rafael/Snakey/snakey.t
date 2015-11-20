% Snakey By NotNemesis

var win : int := Window.Open ("graphics: 900;620, title:SNAKEY, position:top, center")
var key : string (1)
var x, y, poi, col, hs : int
var xinc, yinc : int
var whs, rhs : int
var hsn : string

% drawfillbox (0, 0, 900, 620, red)
% drawfillbox (20, 20, 880, 580, 0)

loop

    open : rhs, "shs.txt", get
    put "Reading high score from file"
    loop
	exit when eof (rhs)
	get : rhs, hsn : *
	get : rhs, hs
    end loop

    close : rhs

    x := 320
    y := 200
    xinc := 0
    yinc := 10
    poi := 0
    drawfillbox (0, 0, 900, 600, red)
    drawfillbox (20, 20, 880, 580, 0)

    loop
	Window.Select (win)
	exit when whatdotcolour (x, y) not= white

	drawfilloval (x, y, 5, 5, 7)

	poi := poi + 1
	locate (1, 1)
	put "Score: ", poi ..
	put "     Hi-Score: ", hs, " by ", hsn
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

    if poi > hs then % writes to high score
    cls
	locate (5, 5)
	put "New high score! ", poi, "! Please type your name"
	get hsn : *
	open : whs, "shs.txt", put
	put "Writing high score to file"
	loop
	    put : whs, hsn
	    put : whs, poi
	    exit
	end loop
	close : whs
    end if

    delay (1000)
    Input.Flush
    cls
end loop
