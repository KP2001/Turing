% Super Battle Arena Conditionals File
% Rafael Wiska-Ilnicki

% Player 1 Conditionals
procedure p1cond
    if p1fc = 4 and p1ac = 3 then
	p1cd := p2s (3)
	p1ad := 0
	put p1n, " (P1) healed for 100HP!"
	if p1s (0) > p1s (1) - 100 then
	    p1s (0) := p1s (1)
	else
	    p1s (0) += 100
	end if
    end if
end p1cond

% Player 2 Conditionals
procedure p2cond
    if p2fc = 4 and p2ac = 3 then
	p2cd := p1s (3)
	p2ad := 0
	put p2n, " (P2) healed for 100HP!"
	if p2s (0) > p2s (1) - 100 then
	    p2s (0) := p2s (1)
	else
	    p2s (0) += 100
	end if
    end if
end p2cond
