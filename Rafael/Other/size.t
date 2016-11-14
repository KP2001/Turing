% Size Thinger
% Makes a rectangle to your specifications

var window : int := Window.Open ("graphics:max;max,title:Size Thinger")
var height, width : int

loop
put "Width of square?"
get width
put "Height of square?"
get height

drawfillbox (0, 0, width, height, 12)
delay (10000)
cls
end loop

