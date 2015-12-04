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
    put "Mario Simulatior Turing Edition Uncensored"
    delay (999)
    put "ORIGINAL CODE"
    put "NotNemesis"
    delay (999)
    put "REPROGRAMMING"
    put "Sonason"
    delay (999)
     put "ORIGINAL IDEA"
    put "SMG4"
    delay (999)
    put "Very special thanks to NotNemesis for the support and code!"
    delay (999)
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
delay (2000)
put "Mario:"
put "D'oh!"
delay (500)
put "Narrator:" 
put "When Mario is doing his retardness..." 
delay (999)
color (blue)
put "Press [A] to spawn a Luigi"
color (black)
put "...buttons will show up. Press it if you want him to-"
delay (2000)
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
delay (999)
put "Mario:"
put "Hmmmm..."
delay (500)
put "Peach:"
put "Help me!" 
delay (999)
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
delay (3000)
cls
    put "play 'Swiggity Swooty' here"
    delay (1500)
    put "Mario:"
    put "Hey, stinky! Mamma mia!"
    delay (999)
    put "Narrator:"
    put "Oh dear. What will Mario do now?"
    delay (1500)
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
    put "Really?! Eating the crap at a time like this?!"
    put "You're not just gonna stay here and eat, are you?!"
    delay (1500)
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
    put "Oh, still going?! That's fine, I can wait, fatass!"
    put "You're just trying to piss me off, aren't you?! Well, it ain't working!"
    delay (2000)
    put "Eat even more spaghetti(4)"
    delay (999)
    put "Fine go save Peach(6)"
    get input
else
end if

if input = 4 then
cls
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
put "Type [1] to reset the game(enough spaghetti for you!)"
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
     put "(Picks up the phone)"
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
     delay (1500)
       put "Toad:"
    put "Okie-dokie!"
    delay (999)
    put "Mario:"
     put "NO!"
       delay (999)
     put "NO!"
       delay (999)
     put "NO!"
     delay (999)
     put "GRRRR!"
     delay (500)
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
        delay (999)
        put "(Mario gave up!)"
        delay (1500)
        color (black)
        put "GOOD-A-WORK! YOU GOT-A THE: Discount Princess ending"
delay (1500)
put "0/10 - cmon are you that lazy Mario?"
delay (999)
put "Type [1] to reset the game(Go save her now!)"
        get inres
        res := 1
        end if

if input = 6 then
cls
 put "Mario:"
    put "This is gonna be one of those days, isn't it?"
    delay (999)
    put "'cue unexciting chase scene'"
    delay (999)
    put "AH-HAHAHAHAHAHA!"
    delay (999)
    put "Bowser:"
    put "Haters gonna hate, I laugh 'cause you're fake!"
delay (5000)
put "Mario:"
put "YAHOO-ugh! I'm-a-tired."
    delay (999)
    put "Narrator:"
    put "Oh, dear, looks like somebody forgot that they never exercise."
    delay (1500)
    put "Mario:"
    put "Come on!"
    delay (500)
    put "Oooh! Ooh-hoo-hoo-hoo! Hmm..."
  delay (999)
    put "Narrator:"
    put "Well, looks like Mario found some modes of transportation."
        delay (500)
    put "Which one should he choose?"
        delay (1500)
        put "Kart(7)"
        delay (999)
        put "Warp Pipe(8)"
        delay (999)
        put "Yoshi(9)"
        get input
    else
    end if

    if input = 7 then
cls
 put "*VROOM*"
put "Mario:"
    put "Wa-ha! Wahoo! Yahoo-hoo! Yay, yeah!"
    delay (999)
    put "Ha ha, I'm-a-gonna get you!"
delay (2000)
put "Mama f***er!"
    delay (999)
    put "Narrator:"
    put "Uh oh, looks like you were caught speeding."
        delay (1500)
        put "Surprise Ninja Attack(10)"
        delay (999)
        put "Warp Pipe(11)"
        get input
    else
    end if

            if input = 8 then
        cls
 put "Mario:"
   put "Let's-a-go! Hoo hoo hoo! La la la, hm hm hmm!"
 delay (2000)
 put "Hmm..."
   put "Weegee Head:"
    put " It's a MEEEEE!"
    delay (999)
     put "Mario:"
     put "Whoa!"
     delay (500)
     put "Weegee Head:"
     put "Hello, sir, can I take your order?"
     delay (2000)
      put "Mario:"
     put "Hmm, you have a nice place here."
   delay (999)
   put "Poop Face: 300 coins"
delay (999)
   put "Mario:"
    put "Whoa! No!"
     delay (999)
     put "Wario's Underwear: 50000 coins"
     delay (999)
    put "Mario:"
     put "Oh, hell no!"
    delay (999)
     put "Random Toad: 1000 coins"
     delay (999)
    put "Mario:"
     put "Oomph, f*** no!"
    delay (999)
       put "Bombs: 100 coins each"
     delay (999)
    put "Mario:"
     put "Ooh hoo hoo hoo! Oh yeah! So long, king Bowser!"
     delay (999)
     put "Can I have it?"
    delay (999)
       put "Weegee Head:"
    put "Bombs? You want it? It's yours, my friend!"
     delay (2000)
        put "Mario:"
     put "WAAAH! AHH! (Screams)"
     delay (999)
          put "Toad:"
    put "I JUST SH*T MY PANTS!"
    delay (999)
        delay (500)
   colour (12)
        put "BOOM!"
        delay (1500)
        color (blue)
        put "1 of 10 Toads Destroyed! Try to find them all!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (1500)
        put "Weegee Head:"
        put "Ha ha!"
        delay (999)
        color (black)
        put "GOOD-A-WORK! YOU GOT-A THE: Weegee bomb ending"
delay (1500)
put "0/10 - never EVER trust a weegee"
delay (999)
put "Type [1] to reset the game(no pipe for you)"
        get inres
        res := 1
        end if
    
            if input = 9 then
cls
 put "*VROOM*"
put "Mario:"
    put "Here we go! Let's-a-go!"
    delay (2000)
    put "Come on! Hurry up already!"
delay (2000)
put "Mama f***er!"
    delay (999)
    put "Yoshi:"
    put "Yoshi!"
    delay (2000)
    put "Mario:"
put "Oomph!"
    delay (500)
    put "Old Man:"
    put "Nice job, dickface!"
        delay (1500)
        put "Smoke shrooms erry day!(12)"
        delay (999)
        put "Feed it curry!(13)"
        get input
    else
    end if
        
    if input > 9 then
cls
    put "Invalid input."
    put "Please press [1] to restart."
    delay (1500)
    get inres
        res := 1
        end if
end loop

% %%%Text to Insert%%%
% % 
% 
% %If the viewer chooses "Smoke shrooms erry day!"Edit
% %Mario: Mama mia! (Throws a weird rainbow colored mushroom)
% 
% %Yoshi: Whoa! Mmm! (Eats the rainbow colored mushroom and starts tripping out) WHOOOOOAH!
% 
% %Mario: Hmm, hey, I'm-a-hungry! (Eats another rainbow colored mushroom and starts tripping out as well) WHOOOOOAH!
% 
% %(Mario looks at Yoshi)
% 
% %Mario: (Shows a troll face) Let's-a-go!
% 
% %Yoshi: (Shows a troll face and puts his shades on) Aw, yeah!
% 
% %(Both Mario and Yoshi are partying, and suddenly, Mario saw "Peach")
% 
% %"Peach": (giggles) Mario!
% 
% %Mario: Whoa! Princess! Oh yeah! (Starts humping "Peach", but what he didn't realise is that he is humping an old man)
% 
% %Yoshi: (Singing) I'm a banana! I'm a banana!
% 
% %Old Man: You darn kids get off my pingas!
% 
% %(Old Man kills Mario with his shotgun)
% 
% %GAME OVER YEAAAAAAAH
% 
% %Yoshi: (To the viewer) I'M A BANANA!
% 
% %Text: GOOD-A-WORK! YOU GOT-A THE: Mario "party" ending. banana/10 - what did I tell you about humping old people?
% 
% %Mario: Thank you so much for to playing my game, f***er!
% 
% %<---might wanna go back a video
% 
% %If the viewer chooses "Feed it curry!"Edit
% %Mario: Hyah, I got it! (throws a super spicy curry. Cut to Yoshi)
% 
% %Yoshi: Whoa! Mmm! (eats the curry) ...AHH! OH MY GOD! (Yoshi starts running faster while screaming, as Mario holds on to him) OH FREAKING GOD, OH MY GOD!
% 
% %(Mario lets go of Yoshi and lands in pain. The Yoshi flies into the sky like a firework while screaming and explodes.)
% 
% %Mario: Mama mia! (notices Smexy Town) Ooh hoo hoo hoo! Let's-a-go!
% 
% %If the viewer chooses the kartEdit
% %(Mario jumps on the kart and starts driving)
% 
% %Mario: Wa-ha! Wahoo! Yahoo-hoo! Yay, yeah!
% 
% %(Mario sees Bowser in his Koopa Clown Car flying away)
% 
% %Mario: Ha ha, I'm-a-gonna get you! (hears and sees a police car behind him) Mama f***er! (pulls over)
% 
% %Narrator: Uh oh, looks like you were caught speeding.
% 
% %Mario: (grunts)
% 
% %(The viewer has a chance to pick "Surprise Ninja Attack".)
% 
% %If the viewer chooses "Surprise Ninja Attack"Edit
% %Mario: Super Mario... BWAAAH!
% 
% %(He shoots a laser "Shoop-da-whoop" style at the Policeman, but misses and hits a tree instead. Cut to Toad.)
% 
% %Toad: Hello, what are you doing?! (the tree falls on Toad)
% 
% %Text: 1 of 10 Toads destroyed!
% 
% %Mario: Nah, I guess that counts.
% 
% %(Whether the viewer chose "Surprise Ninja Attack" or not, the Policeman appears in front of him.)
% 
% %Policeman: Hey, I'm a cop, and you will respect my authoritah!
% 
% %Mario: No!
% 
% %Policeman: Get your ass in jail! (loads his shotgun and aims at Mario)
% 
% %Mario: Oh shit.
% 
% %(The viewer has two choices: ""Persuade" the cop" or "Screw da law run Mario!". A line says "Try and find all the Toads" only after Mario used a "Surprise Ninja Attack".)
% 
% %If the viewer chooses ""Persuade" the cop"Edit
% %Mario: Officer...(strips himself naked)...is there anything I could do, ahem, to get out of this-
% 
% %Policeman: (Screams)
% 
% %(Mario is arrested and sent to jail for life)
% 
% %Mario: Mama f***er!
% 
% %GAME OVER YEAAA-
% 
% %Mario: SHUT THE F*CK UP!
% 
% %Text: GOOD-A-WORK! YOU GOT-A THE: Not very sexy ending. 1/10 - you're sexy, but not that sexy.
% 
% %Mario: Oh-ho, mama!
% 
% %<---re-evaluate your life.
% 
% %If the viewer chooses "Screw da law run Mario!"Edit
% %Mario: (laughs at the Policeman with his troll face and gets away)
% 
% %Policeman: BULLSH*T!
% 
% %Mario: (Still laughing at the Policeman while being unaware that there is a dead end on that bridge)
% 
% %(The viewer has a chance to pick "OH GOD MARIO! WATCH OUT!")
% 
% %If the viewer chooses "OH GOD MARIO! WATCH OUT!Edit
% %Viewer: Hey, watch out!
% 
% %Mario: Hmm? Wah! (Looks at a dead end, jumps off his kart and lands safely) Wa-ha! Ah-hoo-hoo! Oh yeah! (Turns to viewer) Thank you very much, thank you.
% 
% %(Suddenly, the police car appears and the Policeman came out of his car)
% 
% %Policeman: STAHP RIGHT THERE!
% 
% % Mario: (Turns to the Policeman) Mamaf*cker!
% % 
% % Policeman: Maybe this will teach you to listen to authoritah!
% % 
% % Mario: Is something-(Policeman hits Mario)
% % 
% % (Mario is then arrested and sent to jail for life)
% % 
% % Mario: (Turns to viewer) Guys, way to go, a-hole!
% % 
% % GAME OVER YEAAAAAAAH
% % 
% % Text: GOOD-A-WORK! YOU GOT-A THE: Thanks a lot (butthole) ending. 5/10 - you're quick but he would have been better off.
% % 
% % Mario: Hey, stinky!
% % 
% % <---let him crash!!
% % 
% % If the viewer does nothingEdit
% % (Mario crashes to a dead end and falls down to "Smexy Town", somehow)
% % 
% % Mario: Mama mia! Ooh-hoo-hoo-hoo! Let's-a-go!
