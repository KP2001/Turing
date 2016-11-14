% Super Battle Arena Conditionals File
% Rafael Wiska-Ilnicki

% Player 1 Conditionals
procedure p1conditionals
    if p1fc = 3 and p1ac = 3 then
        put p1n, " (P1) healed for 100HP!"
        p1s (0) += 100
    end if
end p1conditionals

% Player 2 Conditionals
procedure p2conditionals
    if p2fc = 3 and p2ac = 3 then
        put p2n, " (P2) healed for 100HP!"
        p2s (0) += 100
    end if
end p2conditionals
