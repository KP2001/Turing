% Super Battle Arena
% Rafael Wiska-Ilnicki

% Include files %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
include "vars.t"
include "cond.t"
include "config.t"

% Procedures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P1 Attack
procedure p1atk
    % Calculate P1's calculated damage
    randint (p1ch, 1, 20)
    if p1ch > 1 then
        p1cd := p1s (2) + p1as (p1ac)

        % Calculate actual damage
        p1ad := p1cd - p2s (3)

        % If the actual damage is below 0, it will set it to zero
        if p1ad < 0 then
            p1ad := 0
        end if

        p2s (0) -= p1ad

        p1cond
    else
        put p1n, " (P1) tried to use ", p1an (p1ac), " but missed!"..
    end if

    getch (key)
    put ""

end p1atk

% P2 Attack
procedure p2atk
    % Calculate P2's calculated damage
    randint (p2ch, 1, 20)
    if p2ch > 1 then
        p2cd := p2s (2) + p2as (p2ac)

        % Calculate actual damage
        p2ad := p2cd - p1s (3)

        % If the actual damage is below 0, it will set it to zero
        if p2ad < 0 then
            p2ad := 0
        end if

        p1s (0) -= p2ad

        p2cond
    else
        put p2n, " (P2) tried to use ", p2an (p2ac), " but missed!"..
    end if

    getch (key)
    put ""

end p2atk

% Configure Game %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
config

% Title %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
put "Super Battle Arena"
put "By Rafael Wiska-Ilnicki"
put "Version ", ver
put "Press any key to begin"
getch (key)
cls

% Display fighter choices for player 1
loop
    cls
    put "PLAYER 1: Choose your fighter!"

    % Opens file of character names and displays them on the screen
    open : sg, "CHARS/chars.txt", get
    for i : 1 .. chcomx
        get : sg, chng
        put chng, " [", i, "]"
    end for
    close : sg

    % Asks for choice
    put ">> " ..
    get p1fc
    exit when p1fc >= 1 and p1fc <= chcomx
    put "ERROR! Invalid choice! Please choose from one of the options!" ..
    getch (key)
end loop

p1fcs := intstr (p1fc)

% Set stats and attacks for P1
open : sg, "CHARS" + p1fcs + ".txt", get
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
    cls
    put "PLAYER 2: Choose your fighter!"

    % Opens file of character names and displays them on the screen
    open : sg, "CHARS/chars.txt", get
    for i : 1 .. chcomx
        get : sg, chng
        put chng, " [", i, "]"
    end for
    close : sg

    % Asks for choice
    put ">> " ..
    get p2fc
    exit when p2fc >= 1 and p2fc <= chcomx
    put "ERROR! Invalid choice! Please choose from one of the options!" ..
    getch (key)
end loop

p2fcs := intstr (p2fc)

% Set stats and attacks for P2
open : sg, "CHARS" + p2fcs + ".txt", get
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
        put p1n, " (P1), choose your attack"
        for i : 1 .. 4
            put "[", i, "] ", p1an (i)
        end for
        get p1ac
        exit when p1ac >= 1 and p1ac <= 4
        put "Error! Invalid attack choice!"
    end loop

    loop
        % Get P2's attack
        put p2n, " (P2), choose your attack"
        for i : 1 .. 4
            put "[", i, "] ", p2an (i)
        end for
        get p2ac
        exit when p2ac >= 1 and p2ac <= 4
        put "Error! Invalid attack choice!"
    end loop

    % If P1 is faster than P2 or if they are equal
    if p1s (4) > p2s (4) or p1s (4) = p2s (4) then
        p1atk
        exit when p2s (0) <= 0
        p2atk
        exit when p1s (0) <= 0

        % If P2 is faster than P1
    elsif p1s (4) < p2s (4) then
        p2atk
        exit when p1s (0) <= 0
        p1atk
        exit when p2s (0) <= 0
    end if
    cls
    exit when p1s (0) <= 0 or p2s (0) <= 0

    % Ensures that HP doesn't go over base
    if p1s (0) > p1s (1) then
        p1s (0) := p1s (1)
    elsif p2s (0) > p2s (1) then
        p2s (0) := p2s (1)
    end if
end loop

% Winning message
if p1s (0) > p2s (0) then
    put p1n, "(P1) won!"
else
    put p2n, "(P2) won!"
end if

