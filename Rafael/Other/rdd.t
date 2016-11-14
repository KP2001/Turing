% RDD (Random Dot Drawer) by NotNemesis
% Experimental program, draws dots at random cordinates

View.Set ("graphics:max;max,nobuttonbar,title:RDD")
var loc : array 1 .. 2 of int

loop
randint (loc(1),0,maxx)
randint (loc(2),0,maxy)
drawdot (loc(1),loc(2),black)
end loop
