% Super Battle Arena
% Rafael Wiska-Ilnicki
% TODO: Add test attacks and test attack stats

% Variables
var p1fc, p2fc : int % Player's fighter choice
var p1fcs, p2fcs : string
var ver : string := "DEV ALPHA V1.2.5" % Version Number
var sg : int % File reading var
var key : string (1) % For any press any key to continue

% P1 Vars
var p1n : string % P1 Character name
var p1s : array 0 .. 4 of int % P1 Stats
var p1an : array 1 .. 4 of string % P1 Attack Names
var p1as : array 1 .. 4 of int % P1 Attack stats
var p1ac : int % P1 Attack choice
var p1ad : int % P1 Actual Damage
var p1df : int % P1 Defending
var p1cd : int % P1 Calculated Damage

% P2 Vars
var p2n : string % P1 Character name
var p2s : array 0 .. 4 of int % P2 Stats
var p2an : array 1 .. 4 of string % P1 Attack Names
var p2as : array 1 .. 4 of int % P1 Attack stats
var p2ac : int % P2 Attack choice
var p2ad : int % P2 Actual Damage
var p2df : int % P2 Defending
var p2cd : int % P2 Calculated Damage

% Title
put "Super Battle Arena"
put "By Rafael Wiska-Ilnicki"
put "Version ", ver
put "Press any key to begin"
getch (key)
cls

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

p1fcs := intstr (p1fc)

% Set stats and attacks for P1
open : sg, p1fcs + ".txt", get
get : sg, p1n : *
get : sg, p1s (0)
p1s (1) := p1s (0)
get : sg, p1s (2)
get : sg, p1s (3)
get : sg, p1s (4)
get : sg, p1an (1) : *
get : sg, p1an (2) : *
get : sg, p1an (3) : *
get : sg, p1an (4) : *
get : sg, p1as (1)
get : sg, p1as (2)
get : sg, p1as (3)
get : sg, p1as (4)
close : sg

cls

% Display fighter choices for player 2
loop
    put "PLAYER 2: Choose your fighter!"
    put "Swordman (TEST) [1]"
    put "Punchman (TEST) [2]"
    put "Magedude (TEST) [3]"
    put ">> " ..
    get p2fc
    exit when p2fc >= 1 and p1fc <= 3
    put "ERROR! Invalid choice! Please choose from one of the options!"
end loop

p2fcs := intstr (p2fc)

% Set stats and attacks for P2
open : sg, p2fcs + ".txt", get
get : sg, p2n : *
get : sg, p2s (0)
p2s (1) := p2s (0)
get : sg, p2s (2)
get : sg, p2s (3)
get : sg, p2s (4)
get : sg, p2an (1) : *
get : sg, p2an (2) : *
get : sg, p2an (3) : *
get : sg, p2an (4) : *
get : sg, p2as (1)
get : sg, p2as (2)
get : sg, p2as (3)
get : sg, p2as (4)
close : sg

cls

loop
    % Display fighter's names
    put p1n : 15, " (P1)  HP: ", p1s (0) : 3, "/", p1s (1)
    put p2n : 15, " (P2)  HP: ", p2s (0) : 3, "/", p2s (1)

    loop
        % Get P1's attack
        put p1n, "(P1), choose your attack"
        put "[1] ", p1an (1)
        put "[2] ", p1an (2)
        put "[3] ", p1an (3)
        put "[4] ", p1an (4)
        get p1ac
        exit when p1ac >= 1 and p1ac <= 4
        put "Error! Invalid attack choice!"
    end loop

    loop
        % Get P2's attack
        put p2n, "(P2), choose your attack"
        put "[1] ", p2an (1)
        put "[2] ", p2an (2)
        put "[3] ", p2an (3)
        put "[4] ", p2an (4)
        get p2ac
        exit when p2ac >= 1 and p2ac <= 4
        put "Error! Invalid attack choice!"
    end loop

    % If P1 is faster than P2 or if they are equal
    if p1s (4) > p2s (4) or p1s (4) = p2s (4) then

        % P1's attack
        % Calculate P1's calculated damage
        p1cd := p1s (2) + p1as (p1ac)
        put p1n, "(P1) used ", p1an (p1ac), " for ", p1cd, " damage!"
        delay (4000)

        % Calculate actual damage
        p1ad := p1cd - p2s (3)
        p2s (0) -= p1ad
        exit when p2s (0) <= 0

        % P2's attack
        % Calculate P2's calculated damage
        p2cd := p2s (2) + p2as (p2ac)
        put p2n, "(P2) used ", p2an (p2ac), " for ", p2cd, " damage!"
        delay (4000)

        % Calculate actual damage
        p2ad := p1cd - p1s (3)
        p1s (0) -= p2ad
        exit when p1s (0) <= 0

        % If P2 is faster than P1
    elsif p1s (4) < p2s (4) then

        % P2's attack
        % Calculate P2's calculated damage
        p2cd := p2s (2) + p2as (p2ac)
        put p2n, "(P2) used ", p2an (p2ac), " for ", p2cd, " damage!"
        delay (4000)

        % Calculate actual damage
        p2ad := p1cd - p1s (3)
        p1s (0) -= p2ad
        exit when p1s (0) <= 0

        % P1's attack
        % Calculate P1's calculated damage
        p1cd := p1s (2) + p1as (p1ac)
        put p1n, "(P1) used ", p1an (p1ac), " for ", p1cd, " damage!"
        delay (4000)

        % Calculate actual damage
        p1ad := p1cd - p2s (3)
        p2s (0) -= p1ad
        exit when p2s (0) <= 0

    end if
    cls
    exit when p1s (0) <= 0 or p2s (0) <= 0
end loop

if p1s (0) > p2s (0) then
    put p1n, "(P1) won!"
else
    put p2n, "(P2) won!"
end if

