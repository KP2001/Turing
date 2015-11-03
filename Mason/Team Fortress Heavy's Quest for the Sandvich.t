% Team Fortress: Heavy's Quest for the Sandvich
% Made on the Super Amazing Turing Choosable Adventure Engine

var win1 : int := Window.Open ("position:center;center,graphics:900;600,nobuttonbar,title: Team Fortress: Heavy's Quest for the Sandvich") % Opens main window
var input, inres : int
var res : int := 1

loop
if res = 1 then
cls
color (black)
put "Team Fortress: Heavy's Quest for the Sandvich"
put "Demo by Sonason"
put "Uses SATCA engine made by NotNemesis"
put "Type [0] to begin"
res := 0 
get input
end if

if input = 0 then
put "It's a wonderful day in New Mexico when all of a sudden..."
delay (999)
put "Heavy:"
put "WHERE IS MY SANDVICH!?"
delay (999)
put "Uh oh. Heavy is mad! Help him find it!"
delay (999)
put "Yes![1]"
delay (999)
put "No![2]"
get input
end if

if input = 1 then
put "Heavy:"
put "Thank you! Now who should I ask first?"
delay (999)
put "Engineer[3]"
delay (999)
put "Sasha[4]"
delay (999)
get input
end if

if input = 2 then 
put "Heavy: You must die!"
delay (500)
put "He punched all of your blood out!"
delay (1500)
color (red)
put "GAME OVER, YEAH!"
delay (500)
put "You got the 'Upset Russian' Ending."
put "Type any key to reset the game"
get inres
res := 1
end if

if input = 3 then
put "Heavy:"
put "Engineer! Help me!"
delay (999)
put "Engineer:"
put "Nope."
delay (999)
put "Heavy:"
put "Please?"
delay (999)
put "Engineer:"
put "Nope."
delay (999)
put "Ask Sasha[4]"
delay (999)
put "Kill him[6]"
get input
end if

if input = 4 then
put "Heavy:"
put "Sasha! Can you help me..."
delay (2000)
put "Oh my god, who touched Sasha?"
put "Alright..."
delay (1500)
put "WHO TOUCHED MY GUN!?"
delay (999)
put "Type [5] to continue."
get input
end if

if input = 5 then
put "Heavy:"
put "WHO TOUCHED SASHA!?"
delay (999)
put "Hey you! Who touched Sasha!?"
put "Scout[7]"
delay (999)
put "Undercover Spy[8]"
delay (999)
get input
end if

if input = 6 then 
put "Heavy: You must die!"
delay (500)
put "POW!"
delay (999)
put "BEEP!"
delay (999)
put "Heavy:"
put "Nooooo! Sentry fire!"
delay (1500)
color (red)
put "GAME OVER, YEAH!"
delay (500)
put "You got the 'Texas-Tech Style Revenge' Ending."
put "Type any key to reset the game"
get inres
res := 1
end if

if input = 7 then
put "Heavy:"
put "Scout! You touched Sasha, didn't you?"
delay (999)
put "Scout:"
put "Hey, I never touched her since the Sandvich incident."
put "Ya really want the culprit, ask that guy over there."
delay (999)
put "I can trust him[4]"
delay (999)
put "Nope, kill him[6]"
get input
end if

if input > 7 or input < 0 then
put "End of game/Invalid answer. Please type any key to restart the game."
get inres
res := 1
end if


end loop
