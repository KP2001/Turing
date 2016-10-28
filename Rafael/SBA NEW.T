% Super Battle Arena
% Rafael Wiska-Ilnicki

% Variables
var p1fc, p2fc : int % Player's fighter choice
var ver : string := "DEV ALPHA" % Version Number

% P1 Vars
var p1f : array 0 .. 4 of int % P1 Stats
var p1an : array 1 .. 4 of string % P1 Attack Names
var p1a : array 1 .. 4 of int % P1 Attack stats

% P2 Vars
var p2f : array 0 .. 4 of int % P2 Stats
var p2an : array 1 .. 4 of string % P1 Attack Names
var p2a : array 1 .. 4 of int % P1 Attack stats

% Title
put "Super Battle Arena"
put "By Rafael Wiska-Ilnicki"
put "Version ", ver
put ""

% Display fighter choices for player 1
loop
    put "PLAYER 1: Choose your fighter!"
    put "Swordman (TEST) [1]"
    put "Punchman (TEST) [2]"
    put "Magedude (TEST) [3]"
    put ">> " ..
    get p1fc
    exit when p1fc >= 1 and p1fc <= 3
    put "ERROR! Invalid choice! Please choose from one of the options!"
end loop

% Set stats and attacks for P1
if p1fc = 1 then
    p1f (1) := 500
    p1f (2) := 250
    p1f (3) := 250
    p1f (4) := 100
elsif p1fc = 2 then
    p1f (1) := 400
    p1f (2) := 300
    p1f (3) := 100
    p1f (4) := 200
elsif p1fc = 3 then
    p1f (1) := 410
    p1f (2) := 270
    p1f (3) := 250
    p1f (4) := 150
end if

cls

% Display fighter choices for player 2
loop
    put "PLAYER 2: Choose your fighter!"
    put "Swordman (TEST) [1]"
    put "Punchman (TEST) [2]"
    put "Magedude (TEST) [3]"
    put ">> " ..
    get p1fc
    exit when p1fc >= 1 and p1fc <= 3
    put "ERROR! Invalid choice! Please choose from one of the options!"
end loop

% Set stats and attacks for P2
if p2fc = 1 then
    p2f (1) := 500
    p2f (2) := 250
    p2f (3) := 250
    p2f (4) := 100
elsif p2fc = 2 then
    p2f (1) := 400
    p2f (2) := 300
    p2f (3) := 100
    p2f (4) := 200
elsif p2fc = 3 then
    p2f (1) := 410
    p2f (2) := 270
    p2f (3) := 250
    p2f (4) := 150
end if

