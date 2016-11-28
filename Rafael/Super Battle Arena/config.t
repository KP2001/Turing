% Super Battle Arena Config File
% Rafael Wiska-Ilnicki

var gc : int % Get config values

procedure config
open : gc, "config.txt", get,seek
seek : gc, 14
get : gc, chcomx % Sets value of maximum number of characters
seek : gc, 25
get : gc, ver : *
close : gc
end config
