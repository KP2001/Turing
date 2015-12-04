var cyoae : int := Window.Open ("position:center;center,graphics:900;600,nobuttonbar") %Adjust the screen size if needed%
View.Set ("title:Mario Simulatior Uncensored")

%%%%%%%%%% Variables %%%%%%%%%%
var start : string
var input, inres : int
var code : string
var code2 : string
var code3 : string
var mo : int := Pic.FileNew ("mo.jpg")
var res : int := 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Text colouring %%%%%%%%%%
colour (black)
colourback (white)
cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if mo = 0 then
    put "SMG4 Presents..."
    put "Loading game, please wait..."
    delay (3000)
    cls
else
    Pic.Draw (mo, 0, 0, picCopy)
    delay (3000)
    cls
end if
%%%%%%% title screen %%%%%%%%%%%%%
    % Title %
put "Mario Simulatior Turing Edition Uncensored"
put "By Sonason"
put ""
put "Official Version"
put "Type [B] to start your adventure!"
put "Type [1] to see the credits!"
put ""
get start

%%%%%%% menu %%%%%%%%%%

if start = "1" then
cls
    put ""
    put "Mario Simulatior Turing Edition Uncensored"
    delay (999)
    colour (9)
    put "ORIGINAL CODE"
    colour (14)
    put "NotNemesis"
    delay (999)
    colour (9)
    put "REPROGRAMMING"
    colour (14)
    put "Sonason"
    delay (999)
    colour (9)
     put "ORIGINAL IDEA"
    colour (14)
    put "SMG4"
    delay (999)
    put "Very special thanks to NotNemesis for the support and code!"
    delay (999)
    colour (white)
    put "MadOctopus (C) 2015"
    colour (42)
    put "[B] to start game"
    put ""
    get start
else
end if



%%%%%% game %%%%%%%
loop

if start = "B" or start = "b" then
cls
color (black)
put "Narrator:"
put "Well, hello there! Welcome to a game where you play as a fat Italian guy. Boy, how fun!"
delay (2000)
put "Mario:"
put "Oh yeah! (runs away)"
delay (999)
put "Narrator:"
put "Where do you think you're going?! We've got to do the tutorial, dumbass!"
delay (1500)
put "Mario:"
put "D'oh!"
delay (500)
put "Narrator:" 
put "When Mario is doing his retardness..." 
delay (500)
color (blue)
put "Press [A] to spawn a Luigi"
color (black)
put "...buttons will show up. Press it if you want him to-"
delay (1500)
put "Luigi: "
put "'laughing'"
delay (500)
put "Narrator:"
put "What the shit?"
delay (500)
put "Luigi:"
put "Luigi, Luigi! Oh yeah! Oh ye-"
delay (999)
color (red)
put "POW!"
color (black)
put "WAAAA!"
delay (500) 
put "Narrator:"
put "Goddammit! Where was I?"
delay (999)
put "???:"
put "'evil laugh'"
delay (999)
put "Mario:"
put "Oh no, oh no, oh no!"
delay (999)
put "Bowser:" 
put "Mario!"
delay (500)
put "Mario:"
put "Hmmmm..."
delay (500)
put "Peach:"
put "Help me!" 
delay (500)
put "Mario:"
put "Oh shit." 
delay (5000)
color (red)
put "Toad:"
put "THE PRINCESS HAS BEEN CAPTURED!!!"
delay (1500)
color (black)
put "Mario:"
put "ARE YOU FUCKING KIDDING ME?!?"
delay (999)
put "Press [1] to start your quest!"
    get input
else
end if

if input = 1 then
cls
put "THE MARIO SIMULATOR ADVENTURE GAME THING :D"
delay (2000)
cls
    put "play 'Swiggity Swooty' here"
    delay (1500)
    put "Mario:"
    put "Hey, stinky! Mamma mia!"
    delay (999)
    put "Narrator:"
    put "Oh dear. What will Mario do now?"
    delay (999)
    put "Eat some spaghetti(2)"
    delay (999)
    put "Get another princess(5)"
    delay(999)
    put "Get that mofo(6)"
    get input
else
end if

if input = 2 then
cls
 put "Mario: 'Eating noises'"
 delay (2000)
    put "Narrator:"
    put "Really?! Eating the crap at a time like this?! You're not just gonna stay here and eat, are you?!"
    delay (999)
    put "Eat more spaghetti(3)"
    delay (999)
    put "Fine go save Peach(6)"
    get input
else
end if

if input = 3 then
cls
 put "Mario: 'Eating noises'"
   delay (999)
    put "Narrator:"
    put "Oh, still going?! That's fine, I can wait, fatass! You're just trying to piss me off, aren't you?! Well, it ain't working!"
    delay (2000)
    put "Eat even more spaghetti(4)"
    delay (999)
    put "Fine go save Peach(6)"
    get input
else
end if

if input = 4 then
cls
    put ""
 put "Mario: 'Eating noises'"
   delay (999)
    put "Narrator:"
    put "Are you done yet?! Holy moly!"
    delay (999)
     put "Mario:"
     put "Hey, I'm-a-hungry, have you got any food?"
     delay (999)
     put "Narrator:"
     put "NO, SCREW YOU!"
      put "Mario:"
     put "Oh, WHAT THE FU-?!"
   delay (500)
   colour (12)
        put "BOOM!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
           delay (1500)
        color (black)
        put "GOOD-A-WORK! YOU GOT-A THE: (FATASS) Spaghetti Lover ending"
delay (1500)
put "2/10 - you're persistent, but you like doing pointless things."
delay (999)
put "Type any key to reset the game(enough spaghetti for you!)"
        get inres
        res := 1
        end if
        
        if input = 5 then
        cls
 put "'Phone ringing'"
   delay (999)
    put "Toad:"
    put "Ha ha ha HA! Yay, party!"
    delay (999)
     put "(Picks up the phone"
     delay (999)
     put "Hello!"
     delay (999)
      put "Mario:"
     put "Hello!"
   delay (500)
   put "Toad:"
    put "Oh, hey, Mario!"
     delay (999)
    put "Mario:"
     put "Yes yes... Is this where I can order a new princess?"
    delay (999)
      put "Toad:"
    put "Hey, Mario, what are you doing?!"
     delay (999)
       put "Mario:"
     put "Hey!"
    delay (999)
       put "Toad:"
    put "I'm freaking out!"
     delay (999)
        put "Mario:"
     put "Hey!"
     delay (999)
          put "Toad:"
    put "I'm getting back till you work today!"
    delay (999)
    put "Mario:"
     put "SHUT UP!! Can I just order a sexy princess please?"
     delay (999)
       put "Toad:"
    put "Okie-dokie!"
    delay (500)
    put "Mario:"
     put "NO!"
       delay (500)
     put "NO!"
       delay (500)
     put "NO!"
     delay (500)
     put "GRRRR!
     delay (999)
     put "Toad:"
     put "Ahh!"
        delay (500)
   colour (12)
        put "BOOM!"
        delay (1500)
        color (blue)
        put "1 of 10 Toads Destroyed! Try to find them all!"
        delay (1500)
        color (black)
          put "Mario:"
     put "F*** this! Hey, I'm-a-hungry!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        put "(Mario gave up!)"
        delay (1500)
        color (black)
        put "GOOD-A-WORK! YOU GOT-A THE: Discount Princess ending"
delay (1500)
put "0/10 - cmon are you that lazy Mario?"
delay (999)
put "Type any key to reset the game(%<---go save her now!)"
        get inres
        res := 1
        end if
    
    if input > 6 then
put ""
    put "Hello and thank you for playing the Alpha!"
    put "This is the end for now, but expect updates soon!"
    put "Bye!"
    put "-Sonason, dev"
end if

end loop
%%%Code to insert as text%%%
%If the viewer chooses "Get that mofo"/"Fine go save Peach"Edit
%Mario: (Turns to viewer) This is gonna be one of those days, isn't it?

%(Mario starts chasing Bowser)

%(Bowser laughs)

%Mario: AH-HAHAHAHAHAHA!

%Bowser: Haters gonna hate, I laugh cause you're fake!

%(Mario starts getting tired)

%Mario: YAHOO-ugh! I'm-a-tired.

%Narrator: Oh, dear, looks like somebody forgot that they never exercise.

%Mario: (Grunts) Come on!

%(As Bowser gets away with Peach, Mario sees a kart, Yoshi, and a warp pipe)

%Mario: Oooh! Ooh-hoo-hoo-hoo! Hmm...

%(The viewer has three choices: A Kart, Yoshi, or a Warp Pipe)

%Mario: (To the viewer) Hurry up already!

%If the viewer chooses "Warp Pipe"Edit
%Mario: Let's-a-go! Hoo hoo hoo! (Sings) La la la, hm hm hmm! (Goes underground by a warp pipe) Hmm...

%(Suddenly, Weegee Head appears out of nowhere in "Weegee's Stuff Shop")

%Weegee Head: It's a MEEEEE!

%Mario: Whoa!

%Weegee Head: Hello, sir, can I take your order?

%(Mario goes to check some of the stuff)

%Mario: Hmm, you have a nice place here.

%(Mario looks at the poop face, which costs 300 coins)

%Mario: Whoa! No!

%(Mario then looks at Wario's underwear, which costs 50000 coins)

%Mario: Oh, hell no!

%(Mario then looks at Toad, which costs 1000 coins)

%Mario: Oomph, f*** no!

%(Mario then looks at a bomb, which costs 100 coins)

%Mario: Ooh hoo hoo hoo! Oh yeah! So long, king Bowser! (Turns to Weegee Head) Can I have it?

%Weegee Head: Bombs? You want it? It's yours, my friend!

%(Weegee Head drops bob-ombs on Mario)

%Mario: WAAAH! AHH! (Screams)

%Toad: I JUST SH*T MY PANTS!

%(Bob-ombs explode, killing Toad)

%1 of 10 Toads destroyed! Try and find them all!

%(But at the same time, Mario died in an explosion)

%GAME OVER YEAAAAAAAH

%Weegee Head: Ha ha!

%Text:GOOD-A-WORK! YOU GOT-A THE: Weegee bomb ending. 0/10 - never EVER trust a weegee

%<---no pipe for you

%If the viewer chooses YoshiEdit
%(Mario jumps on Yoshi for a ride)

%Mario: Here we go! Let's-a-go!

%(Yoshi starts walking, slowly)

%Mario: Come on! Hurry up already!

%Yoshi: Yoshi!

%Mario: Oomph!

%(Yoshi walks so slow that even an old man can go faster than him)

%Old Man: (To Mario) Nice job, dickface!

%Yoshi: Yoshi!

%Mario: (Grunts)

%(The viewer has two choices: "Smoke shrooms erry day!" or "Feed it curry!")

%If the viewer chooses "Smoke shrooms erry day!"Edit
%Mario: Mama mia! (Throws a weird rainbow colored mushroom)

%Yoshi: Whoa! Mmm! (Eats the rainbow colored mushroom and starts tripping out) WHOOOOOAH!

%Mario: Hmm, hey, I'm-a-hungry! (Eats another rainbow colored mushroom and starts tripping out as well) WHOOOOOAH!

%(Mario looks at Yoshi)

%Mario: (Shows a troll face) Let's-a-go!

%Yoshi: (Shows a troll face and puts his shades on) Aw, yeah!

%(Both Mario and Yoshi are partying, and suddenly, Mario saw "Peach")

%"Peach": (giggles) Mario!

%Mario: Whoa! Princess! Oh yeah! (Starts humping "Peach", but what he didn't realise is that he is humping an old man)

%Yoshi: (Singing) I'm a banana! I'm a banana!

%Old Man: You darn kids get off my pingas!

%(Old Man kills Mario with his shotgun)

%GAME OVER YEAAAAAAAH

%Yoshi: (To the viewer) I'M A BANANA!

%Text: GOOD-A-WORK! YOU GOT-A THE: Mario "party" ending. banana/10 - what did I tell you about humping old people?

%Mario: Thank you so much for to playing my game, f***er!

%<---might wanna go back a video

%If the viewer chooses "Feed it curry!"Edit
%Mario: Hyah, I got it! (throws a super spicy curry. Cut to Yoshi)

%Yoshi: Whoa! Mmm! (eats the curry) ...AHH! OH MY GOD! (Yoshi starts running faster while screaming, as Mario holds on to him) OH FREAKING GOD, OH MY GOD!

%(Mario lets go of Yoshi and lands in pain. The Yoshi flies into the sky like a firework while screaming and explodes.)

%Mario: Mama mia! (notices Smexy Town) Ooh hoo hoo hoo! Let's-a-go! (goes to town when suddenly, he hears an old lady who needs help when her cat is stuck in a tree)

%Old Lady: Help, somebody! My cat! HELP ME! (she tries to get her cat by jumping but fails)

%(The viewer has two choices: "Help the poor lady" or "Screw-a this! I got princesses to save!")
