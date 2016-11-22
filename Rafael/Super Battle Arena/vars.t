% Super Battle Arena Variables File
% Rafael Wiska-Ilnicki

% Main Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
var p1fc, p2fc : int % Player's fighter choice
var p1fcs, p2fcs : string % Player's fighter choice (string for opening file)
var ver : string := "DEV ALPHA V1.3.0 WIP" % Version Number
var sg : int % File reading var
var key : string (1) % For any press any key to continue
var chng : string % For getting character names from file
var chcomx : int := 4 % Character count max
var bstmax : int := 3 % Maximum number of times boost can be done

% P1 Vars %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P1 Stats; 0: Current HP, 1: Base HP, 2: ATK, 3: DEF, 4: Speed
var p1s : array 0 .. 4 of int
var p1n : string % P1 Character name
var p1an : array 1 .. 4 of string % P1 Attack Names
var p1as : array 1 .. 4 of int % P1 Attack stats
var p1ac : int % P1 Attack choice
var p1ad : int % P1 Actual Damage
var p1df : int % P1 Defending
var p1cd : int % P1 Calculated Damage
var p1bc : int := 0 % P1 Boost Counter
var p1ch : int % P1 Chance

% P2 Vars %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P2 Stats; 0: Current HP, 1: Base HP, 2: ATK, 3: DEF, 4: Speed
var p2s : array 0 .. 4 of int 
var p2n : string % P1 Character name
var p2an : array 1 .. 4 of string % P1 Attack Names
var p2as : array 1 .. 4 of int % P1 Attack stats
var p2ac : int % P2 Attack choice
var p2ad : int % P2 Actual Damage
var p2df : int % P2 Defending
var p2cd : int % P2 Calculated Damage
var p2bc : int := 0 % P2 Boost Counter
var p2ch : int % P2 Chance
