% Super Battle Arena
% Rafael Wiska-Ilnicki

% Include files %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
include "vars.t"
include "cond.t"

% Procedures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P1 Attack
procedure p1atk
    % Calculate P1's calculated damage
    p1cd := p1s (2) + p1as (p1ac)

    % Calculate actual damage
    p1ad := p1cd - p2s (3)
    p2s (0) -= p1ad

    p1cond
    put p1n, "(P1) used ", p1an (p1ac), " for ", p1ad, " damage! " ..
    getch (key)
    put ""

end p1atk

% P2 Attack
procedure p2atk
    % Calculate P2's calculated damage
    p2cd := p2s (2) + p2as (p2ac)

    % Calculate actual damage
    p2ad := p2cd - p1s (3)
    p1s (0) -= p2ad

    p2cond
    put p2n, "(P2) used ", p2an (p2ac), " for ", p2ad, " damage! " ..
    getch (key)
    put ""


end p2atk

% Title %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
    put "Healdude (TEST) [4]"
    put ">> " ..
    get p1fc
    exit when p1fc >= 1 and p1fc <= 4
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
    put "Healdude (TEST) [4]"
    put ">> " ..
    get p2fc
    exit when p2fc >= 1 and p1fc <= 4
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
