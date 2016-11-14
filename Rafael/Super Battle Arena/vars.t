% Super Battle Arena Variables File
% Rafael Wiska-Ilnicki

% Main Variables
var p1fc, p2fc : int % Player's fighter choice
var p1fcs, p2fcs : string
var ver : string := "DEV ALPHA V1.3.0 WIP" % Version Number
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
