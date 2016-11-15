% Super Battle Arena Conditionals File
% Rafael Wiska-Ilnicki

% Variables

% Player 1 Conditionals
procedure p1cond
    if p1fc = 4 and p1ac = 2 then
        for i : 1 .. 4
            randint (p1as (3), 0, 55)
            p1cd := p1s (2) + p1as (3)

            % Calculate actual damage
            p1ad := p1cd - p2s (3)

            if p1ad < 0 then
                p1ad := 1
            end if

            p2s (0) -= p1ad
            put p1n, "(P1) used ", p1an (p1ac), " for ", p1ad, " damage! "..
            getch (key)
            put ""
        end for
        p1ad := 0

    elsif p1fc = 4 and p1ac = 3 then
        p2s (0) += p1ad
        p1ad := 0
        put p1n, " (P1) healed for 100HP!"
        if p1s (0) > p1s (1) - 100 then
            p1s (0) := p1s (1)
        else
            p1s (0) += 100
        end if
    else
        put p1n, "(P1) used ", p1an (p1ac), " for ", p1ad, " damage! " ..
    end if
end p1cond

% Player 2 Conditionals
procedure p2cond
    if p2fc = 4 and p2ac = 2 then
        for i : 1 .. 4
            randint (p2as (3), 0, 55)
            p2cd := p2s (2) + p2as (3)

            % Calculate actual damage
            p2ad := p2cd - p1s (3)

            if p2ad < 0 then
                p2ad := 1
            end if

            p1s (0) -= p2ad
            put p2n, "(P2) used ", p2an (p2ac), " for ", p2ad, " damage! " ..
            getch (key)
            put ""
        end for
        p2ad := 0

    elsif p2fc = 4 and p2ac = 3 then
        p1s (0) += p2ad
        p2ad := 0
        put p2n, " (P2) healed for 100HP!"
        if p2s (0) > p2s (1) - 100 then
            p2s (0) := p2s (1)
        else
            p2s (0) += 100
        end if
    else
        put p2n, "(P2) used ", p2an (p2ac), " for ", p2ad, " damage! " ..
    end if
end p2cond
