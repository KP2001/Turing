% Super Battle Arena Config File
% Rafael Wiska-Ilnicki

var gc : int % Get config values

procedure config
open : gc, "config.txt", get
get : gc, chcomx % Sets value of maximum number of characters
close : gc
end config
