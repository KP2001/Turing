View.Set ("graphics:200;200, title:RaPixGen,nobuttonbar, position:center;center")
var col, yn, x, y, xx, yy : int

procedure dothing
    randint (col, 1, 12)
    % ROW 1
    x := 0
    xx := 40
    y := 0
    yy := 40

    for i : 1 .. 5
        randint (yn, 0, 1)

        if yn = 1 then
            drawfillbox (x, y, xx, yy, col)
            x := x + 40
            xx := xx + 40
        else
            x := x + 40
            xx := xx + 40
        end if
    end for

    %ROW 2
    x := 0
    xx := 40
    y := 40
    yy := 80
    for i : 1 .. 5
        randint (yn, 0, 1)

        if yn = 1 then
            drawfillbox (x, y, xx, yy, col)
            x := x + 40
            xx := xx + 40
        else
            x := x + 40
            xx := xx + 40
        end if
    end for

    %ROW 3
    x := 0
    xx := 40
    y := 80
    yy := 120
    for i : 1 .. 5
        randint (yn, 0, 1)

        if yn = 1 then
            drawfillbox (x, y, xx, yy, col)
            x := x + 40
            xx := xx + 40
        else
            x := x + 40
            xx := xx + 40
        end if
    end for

    %ROW 4
    x := 0
    xx := 40
    y := 120
    yy := 160
    for i : 1 .. 5
        randint (yn, 0, 1)

        if yn = 1 then
            drawfillbox (x, y, xx, yy, col)
            x := x + 40
            xx := xx + 40
        else
            x := x + 40
            xx := xx + 40
        end if
    end for

    %ROW 5
    x := 0
    xx := 40
    y := 160
    yy := 200
    for i : 1 .. 5
        randint (yn, 0, 1)

        if yn = 1 then
            drawfillbox (x, y, xx, yy, col)
            x := x + 40
            xx := xx + 40
        else
            x := x + 40
            xx := xx + 40
        end if
    end for
end dothing

loop
    cls
    dothing
    delay (1000)
end loop
