var win : int := Window.Open ("graphics:max;max" )
var numb : int := 0
var add : int := 0
var maxnumb : int := 0
colourback (black)
colour (green)
cls

loop
put add, ", " ..
maxnumb := maxnumb + 1
add := maxnumb + add


if maxnumb = 65537 then 
exit
end if

end loop

% When inserting a number into maxnumb, you must add 1 because of a bug
% The highest number you can go is 65537 (65536 is the acutal number

