var mste : int := Window.Open ("position:center;center,graphics:1100;1000,nobuttonbar") %Adjust the screen size if needed%
View.Set ("title:Mario Simulator Turing Edition Alpha")

%%%%%%%%%% Variables %%%%%%%%%%
var start : string
var input : int
var code : string
var code2 : string
var code3 : string
var mo : int := Pic.FileNew ("mo.jpg")
var sfm : int := 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Text colouring %%%%%%%%%%
colour (black)
colourback (gray)
cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if mo = 0 then
    put "<mo.jpg was not found in default file directory>"
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
put "Mario Simulator Turing Edition Alpha"
put "By Sonason"
put ""
put "Version Alpha 7"
put "Type [B] to start your adventure!"
put "Type [M] for menu"
get start

%%%%%%% menu %%%%%%%%%%

if start = "m" or start = "M" then
    cls
    put "CREDITS [1]"
    delay (200)
    put "NEWS [2]"
    delay (200)
    put "START GAME [B]"
    delay (200)
    put "TYPE YOUR CHOICE."
    put ""
    get start
else
end if

if start = "1" then
    cls
    put ""
    put "Mario Simulator Turing Edition"
    put "Alpha 7"
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
    put "Very special thanks NotNemesis for the support and code!"
    delay (999)
    colour (white)
    put "MadOctopus (C) 2015-2017"
    colour (42)
    put "[B] to start game"
    put ""
    get start
else
end if

if start = "2" then
    cls
    colour (14)
    put "NEWS"
    colour (42)
    put "October 2, 2015"
    colour (white)
    put "First alpha!(Alpha 1)"
    colour (42)
    put "October 29, 2015"
    colour (white)
    put "Can you survive a Chain Chomp?(Alpha 2)"
    colour (42)
    put "October 30, 2015"
    colour (white)
    put "Find a way to Bowser's Base!(Alpha 3)"
    color (42)
    put "November 2, 2015"
    colour (white)
    put "Start you journey to Port Toadstool!(Alpha 4)"
    color (42)
    put "November 2, 2015"
    colour (white)
    put "Minor edits.(Alpha 4.1)"
    color (42)
    put "November 9, 2015"
    colour (white)
    put "Restart system! Play without the annoyance of constantly restarting upon game over!"
    put "Also added Mad Octopus logo(Alpha 4.2)"
    color (42)
    put "November 20, 2015"
    colour (white)
    put "Start yer pirate adventure!(Alpha 5)"
    colour (42)
    put "November 24, 2015"
    colour (white)
    put "Tweaks and improvements. Thanks, NotNemesis!(Alpha 5.1)"
    colour (42)
    put "October 2, 2015"
    colour (white)
    put "WHO DUNNIT? Mutiny is aboard!(Alpha 6)"
    colour (42)
    put "February 2, 2017"
    colour (white)
    put "NEW MSTE UPDATE WOOT!"
    put "...but it's mostly improvements to the game. Expect a proper update in the future.(Alpha 6.1)"
    put "February 27, 2017"
    colour (white)
    put "The High Seas adventure is finally over!(Alpha 7)"
    put "[B] to start game"
    put "[B] to start game"
    get start
else
end if

%%%%%% game %%%%%%%
loop

    if start = "B" or start = "b" then
        cls
        color (black)
        put "Hello and welcome to Mario Simulator: Turing Edition!"
        put "You will start by noticing options to follow."
        put "Type the number in to go to that option."
        put "Let's-a go! [0]"
        get input
    end if

    if input = 0 then
        cls
        put "Our story starts with the princess once again being kidnapped by Bowser."
        put "What will Mario do now?"
        delay (999)
        put "Nothing!(1)"
        delay (999)
        put "Eat spaghetti(2)"
        delay (999)
        put "Get another princess(5)"
        delay (999)
        put "Get that mofo!(6)"
        get input
    else
    end if

    if input = 1 then
        cls
        color (red)
        put "Mario:"
        put "Hey, stinky!"
        delay (500)
        color (black)
        put "'Explosion sound'"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (500)
        color (black)
        put "What the heck!?"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 2 then
        cls
        color (red)
        put "Mario: 'Eating noises'"
        color (black)
        put "Seriously!?"
        delay (999)
        put "You're eating that stuff of all times NOW?"
        delay (999)
        put "Eat more spaghetti(3)"
        delay (999)
        put "Fine! Save the princess (6)"
        get input
    else
    end if

    if input = 3 then
        cls
        color (red)
        put "Mario: 'Eating noises'"
        delay (999)
        color (black)
        put "Okay, I can wait for you to finish eating."
        delay (999)
        put "It's not like the entire Mushroom Kingdom is at risk..."
        delay (999)
        put "Eat even more spaghetti(4)"
        delay (999)
        put "Fine! Save the princess (6)"
        get input
    else
    end if

    if input = 4 then
        cls
        color (red)
        put "Mario: 'Eating noises'"
        delay (999)
        color (black)
        put "Seriously, how much longer do you have to eat!?"
        delay (999)
        color (red)
        put "Mario:"
        put "Hey, I'm hungry!"
        delay (999)
        color (black)
        put "Well, maybe this will make you hurry up!"
        delay (2000)
        color (red)
        put "Mario:"
        put "Wait, where'd that bomb-"
        delay (500)
        put "BOOM!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 5 then
        cls
        put "Phone: 'Rings'"
        delay (999)
        color (white)
        put "Toad:(on phone)"
        put "Oh, hey Mario!"
        delay (999)
        color (red)
        put "Mario:"
        put "Yes, yes..."
        put "Is this where I can hire a princess?"
        delay (2000)
        color (white)
        put "Toad:"
        put "Take a look!"
        delay (2000)
        color (red)
        put "Mario:"
        put "NO!"
        delay (999)
        color (black)
        put "'Phone hangs up'"
        delay (999)
        color (red)
        put "Mario:"
        put "I'm out! I'm gonna grab some food!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        put "(Mario Gave Up!)"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 6 then
        cls
        color (red)
        put "Mario:"
        put "This is gonna be one of those days, isn't it?"
        delay (999)
        color (black)
        put "'Cue unexciting chase sequence'"
        delay (5000)
        color (red)
        put "Mario:"
        put "'pant' 'pant' 'gasp'"
        put "I'm tired!"
        delay (999)
        color (black)
        put "Well, looks like someone hasn't been exercising lately."
        delay (999)
        color (red)
        put "Mario:"
        put "Hey!"
        delay (500)
        put "Oh! Look at that!"
        delay (2000)
        color (black)
        put "Well, looks like Mario found some modes of transportation."
        put "Which one should he choose?"
        delay (999)
        put "Warp Pipe(7)"
        delay (999)
        put "Kart(8)"
        delay (999)
        put "Yoshi(15)"
        get input
    else
    end if

    if input = 7 then
        cls
        put "'Warp Pipe sound'"
        delay (999)
        put "Bob-omb: Welcome to my shop!"
        delay (999)
        color (red)
        put "Mario:"
        put "Hmmm..."
        delay (1500)
        put "Hey, how much are these bombs?"
        delay (999)
        color (black)
        put "Bob-omb:"
        put "You want bombs!? I'LL GIVE YOU BOMBS!"
        delay (999)
        color (red)
        put "Mario:"
        put "Woah! AUGH!"
        delay (250)
        put "KABOOM!!!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 8 then
        cls
        color (red)
        put "Mario:"
        put "AW YEAH! KART TIME!"
        color (black)
        put "'start uninspired car chase'"
        delay (3000)
        put "'police sirens'"
        delay (999)
        color (red)
        put "Mario:"
        put "Dammit!"
        delay (500)
        color (black)
        put "Uh oh! Looks like Mario's being arrested for speeding."
        put "What now?"
        delay (999)
        put "Bust out secret weapon(9)"
        delay (999)
        put "Wait for the cops(10)"
        get input
    else
    end if

    if input = 9 then
        cls
        color (red)
        put "Mario:"
        put "SUPER MARIO-"
        put "'fire sound'"
        delay (1200)
        color (red)
        put "Mario:"
        put "Now I'm out of tricks."
        delay (999)
        put "Please type '10' to continue."
        get input
    else
    end if

    if input = 10 then
        cls
        put "The police officer comes up to Mario's car where-"
        delay (999)
        color (red)
        put "Mario:"
        put "Do you really have to narrate my situation?"
        delay (999)
        color (blue)
        put "Police Officer:"
        put "Hey! You were speeding back there,"
        put "so I'm gonna have to take you to the station."
        delay (999)
        color (red)
        put "Mario:"
        put "Or else what?"
        delay (999)
        color (blue)
        put "Officer:(loaning his gun)"
        put "We could send you to prison..."
        delay (999)
        color (red)
        put "Mario:"
        put "Augh!"
        delay (999)
        color (black)
        put "'Convince' the cop(11)"
        delay (999)
        put "Get outta here!(12)"
        get input
    else
    end if


    if input = 11 then
        cls
        color (red)
        put "Mario:"
        put "Look officer..."
        delay (999)
        put "Is there..."
        delay (500)
        put "...'anything' I can do to get out of this?"
        delay (999)
        color (blue)
        put "Officer:"
        put "AUGGGH!"
        delay (1500)
        color (red)
        put "Mario:"
        put "Great! Prison! Thanks, guys!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEA-"
        color (red)
        put "Mario:"
        put "Ah, SHADDAP!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 12 then
        cls
        color (red)
        put "Mario:"
        put "Sorry officer, I'm outta here!"
        delay (999)
        color (blue)
        put "Police Officer:"
        put "Hey! Get back here you!"
        delay (500)
        color (black)
        put "'cue much more exciting chase scene'"
        delay (2000)
        color (red)
        put "Mario:"
        put "Haha! They'll never get me!"
        delay (999)
        color (black)
        put "Oh no! Mario's driving towards a roadblock!"
        put "Aren't you going to warn him!?"
        delay (999)
        put "'Mario! Look out!'(13)"
        delay (999)
        put "Nope.(14)"
        get input
    else
    end if

    if input = 13 then
        cls
        put "Player:"
        put "Hey! Look out!"
        delay (999)
        color (red)
        put "Mario:"
        put "Huh? WAH!"
        delay (500)
        put "Pewf! Thanks guys!"
        delay (999)
        color (blue)
        put "Officer:"
        put "Stahp right dere!"
        delay (999)
        color (red)
        put "Mario:"
        put "Oh COME ON!"
        delay (1500)
        put "Great! Prison! Thanks, guys!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEA-"
        color (red)
        put "Mario:"
        put "Ah, SHADDAP!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 14 then
        cls
        put "Bam!"
        delay (250)
        color (red)
        put "Mario:"
        put "AUGH!"
        delay (500)
        color (green)
        put "'Warp Pipe sound'"
        delay (1500)
        put "'Warp pipe sound"
        color (red)
        put "Mario:"
        put "Oof!"
        delay (500)
        put "Well, looks like I'm on foot from here..."
        delay (999)
        put "Please press '17' to continue."
        get input
    else
    end if

    if input = 15 then
        cls
        color (red)
        put "Mario:"
        put "Alright Yoshi! We're on another journey!"
        delay (1200)
        color (green)
        put "Yoshi:"
        put "Yay!"
        delay (5000)
        color (black)
        put "1 hour later..."
        delay (500)
        color (red)
        put "Mario:"
        put "Hurry up already!"
        delay (999)
        color (black)
        put "Random Old Man:"
        put "Finally! I'm faster than something!"
        delay (999)
        color (red)
        put "Mario:"
        put "If this keeps up, I'm never gonna save her in time!"
        delay (999)
        color (black)
        put "Use Curry!(16)"
        get input
    else
    end if


    if input = 16 then
        cls
        color (red)
        put "Mario:"
        put "Hey Yoshi! Have this!"
        delay (999)
        color (green)
        put "Yoshi:"
        put "?"
        delay (999)
        put "AUGH! HOT! HOT!"
        delay (999)
        color (red)
        put "Mario:"
        put "Oof!"
        delay (500)
        put "Well, looks like I'm on foot from here..."
        delay (999)
        color (black)
        put "Please press '17' to continue."
        get input
    else
    end if

    if input = 17 then
        cls
        color (red)
        put "Mario:"
        put "Well, how coincidental: a town in the middle of nowhere!"
        delay (1500)
        color (black)
        put "Old Lady:"
        put "Oh god! Please help me!"
        delay (500)
        put "My poor cat is up there!"
        delay (999)
        color (red)
        put "Mario:"
        put "Jeez, I'm torn: I know I have to save Peach..."
        delay (999)
        put "...but I can't leave that cat up there!"
        delay (999)
        put "What do I do!?"
        delay (999)
        color (black)
        put "I got a princess to save!(18)"
        delay (999)
        put "Help the old lady!(19)"
        get input
    else
    end if


    if input = 18 then
        cls
        color (red)
        put "Mario:"
        put "I'm really sorry ma'am! I've got a princess to rescue!"
        delay (2000)
        put "Eep! A Chain Chomp!"
        delay (999)
        color (62)
        put "Little Girl:"
        put "Oh no! Chompy got off his leash!"
        delay (999)
        color (black)
        put "Do the Safety Dance!(20)"
        delay (999)
        put "Throw stuff at it!(21)"
        get input
    else
    end if


    if input = 19 then
        cls
        color (red)
        put "Mario:"
        put "I can spare a few minutes..."
        delay (5000)
        put "A few minutes later..."
        color (black)
        put "Old Lady:"
        put "Thank you sir! Here, it's not much..."
        delay (2000)
        put "You got a stick and 5 coins!"
        delay (999)
        color (red)
        put "Mario:"
        put "Eep! A Chain Chomp!"
        delay (999)
        color (62)
        put "Little Girl:"
        put "Oh no! Chompy got off his leash!"
        delay (999)
        color (black)
        put "Do the Safety Dance!(20)"
        delay (999)
        put "Throw stuff at it!(21)"
        delay (999)
        put "Use the stick!(22)"
        get input
    else
    end if

    if input = 20 then
        cls
        color (red)
        put "Mario:"
        put "SAFETY DANCE TIME!"
        delay (500)
        color (black)
        put "'put music that fits with scenario here'"
        delay (2000)
        put "Mario is now safe from everything!"
        delay (3000)
        put "...except for Chain Chomps."
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if


    if input = 21 then
        cls
        color (red)
        put "Mario:"
        put "Stay back you! I'm armed!"
        delay (500)
        put "There goes the coins..."
        delay (500)
        put "Where'd I get a Mushroom!?"
        delay (500)
        put "C'mon, there's gotta be something somewhere..."
        delay (500)
        put "Super Star? Now I'm dead."
        delay (999)
        color (black)
        put "Chompy:"
        put "WOOF!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if


    if input = 22 then
        cls
        color (red)
        put "Mario:"
        put "Oh yeah! The stick!"
        delay (1000)
        color (black)
        put "Chompy:"
        put "?"
        delay (2000)
        color (red)
        put "Mario:"
        put "Yeah! You want it?"
        delay (500)
        put "Go fetch!"
        delay (999)
        put "Oof! Aaah!"
        delay (500)
        color (green)
        put "'Warp Pipe sound'"
        delay (1000)
        put "'Warp Pipe sound'"
        delay (500)
        color (red)
        put "Mario:"
        put "Oof!"
        delay (500)
        put "Well, how convenient for the story: help!"
        delay (999)
        color (black)
        put "Spaghetti(23)"
        delay (999)
        put "Ask for directions(24)"
        delay (999)
        put "Ignore him(25)"
        get input
    else
    end if

    if input = 23 then
        cls
        color (red)
        put "Mario:"
        put "Excuse me, do you have any spaghetti?"
        delay (999)
        color (40)
        put "Toad Guide:"
        put "If by spaghetti you mean a fight, you got it!"
        delay (999)
        color (red)
        put "Mario:"
        put "No! I asked if you have any spaghetti."
        delay (999)
        color (40)
        put "Toad Guide:"
        put "You asked for it!"
        delay (999)
        color (red)
        put "Mario:"
        put "BWAAAAAAH!!!"
        delay (999)
        color (31)
        put "Technical difficulties, please stand by..."
        delay (5000)
        color (40)
        put "Toad Guide:"
        put "Thank you, come again!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 24 then
        cls
        color (red)
        put "Mario:"
        put "Excuse me, do you have directions to Bowser's castle?"
        delay (999)
        color (40)
        put "Toad Guide:"
        put "You should ask that guy over there, he sells maps."
        delay (999)
        put "Mario:"
        put "Thanks."
        delay (999)
        color (black)
        put "Please type '26' to continue."
        get input
    else
    end if

    if input = 25 then
        cls
        color (red)
        put "Mario:"
        put "I'll bet he doesn't know the way."
        delay (999)
        put "Maybe that guy knows..."
        delay (999)
        color (black)
        put "Please type '26' to continue."
        get input
    else
    end if

    if input = 26 then
        cls
        color (red)
        put "Mario:"
        put "Excuse me sir, do you know how to get to Bowser's castle?"
        delay (999)
        color (black)
        put "Salesman:"
        put "Why yes! How about this map for 5 coins?"
        delay (999)
        color (red)
        put "Mario:"
        put "Yeah! Deal!"
        delay (2000)
        color (black)
        put "You obtained a map!"
        delay (999)
        put "Where should Mario go?"
        delay (999)
        put "Spaghetti shop(27)"
        delay (999)
        put "Mario's home(28)"
        delay (999)
        put "Port Toadstool(29)"
        get input
    else
    end if

    if input = 27 then
        cls
        put "Sorry, but this path is unaccusable!"
        delay (999)
        put "Hey! Get out of the story, talking octopi!"
        delay (2000)
        put "He's right though. The shop is closed."
        delay (999)
        put "Mario's home(28)"
        delay (999)
        put "Port Toadstool(29)"
        get input
    else
    end if

    if input = 28 then
        cls
        color (red)
        put "Mario:"
        put "Ah, home sweet home!"
        delay (999)
        put "What the..."
        delay (999)
        put "Indescribable scenario with Luigi"
        delay (2000)
        put "Luigi:"
        put "Hey Mario!"
        delay (999)
        color (red)
        put "Mario:"
        put "What. The."
        delay (1500)
        put "BOOM!!!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 29 then
        cls
        color (red)
        put "Mario:"
        put "The port is closest to Bowser's castle, so..."
        delay (999)
        put "Wah!"
        delay (1500)
        put "A pair of pirates attacked!"
        delay (2000)
        put "Shy Guy Pirate:"
        put "Give us yer booty!"
        delay (999)
        put "What should Mario do?"
        delay (999)
        put "Frighten 'em(30)"
        delay (999)
        put "Punch one of the pirates(31)"
        delay (999)
        put "SUPER SMASH 360 NOSCOPE PINGAS ATTACK(32)"
        delay (999)
        put "Spaghetti(33)"
        get input
    else
    end if

    if input = 30 then
        cls
        color (red)
        put "Mario:"
        put "BOO!"
        delay (999)
        put "Pirate Fox:"
        put "Ooh. Very scary."
        delay (500)
        put "'play FNAF jumpscare'"
        delay (2000)
        put "Mario:"
        put "AAAAAAAAAAAAAAHHHHHHH!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        put "(Mario died of fright!)"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 31 then
        cls
        color (red)
        put "Mario:"
        put "Take this!!!"
        delay (999)
        put "Aaaahhhh!"
        delay (1500)
        put "SPLASH!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        put "(Mario drowned!)"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 32 then
        cls
        color (red)
        put "Mario is about to use SUPER SMASH 360 NOSCOPE PINGAS ATTACK!!!"
        delay (2500)
        put "Mario does not know that move."
        delay (999)
        put "Mario:"
        put "What was the point then!?"
        delay (999)
        put "POW!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 33 then
        cls
        color (red)
        put "Mario:"
        put "Take this!"
        delay (999)
        put "Pirate Fox:"
        put "Bwah! Oh my god!"
        delay (999)
        put "Mario:"
        put "Yay!"
        delay (999)
        put "The Shy Guy stole your map!"
        put "Shy Guy:"
        put "This map's ours now!"
        delay (999)
        put "The enemy has fled!"
        delay (999)
        put "Please type '34' to continue."
        get input
    else
    end if

    if input = 34 then
        cls
        color (red)
        put "Port Toadstool"
        delay (2500)
        put "Peach:"
        put "Mario, help me!"
        delay (999)
        put "Mario:"
        put "There they go!"
        delay (999)
        put "Mario:"
        put "Now how to stop them..."
        delay (999)
        put "Please type '36' to continue."
        delay (999)
        put "...Or press '35' for spaghetti."
        get input
    else
    end if

    if input = 35 then
        cls
        color (red)
        put "Mario:"
        put "Oooh! Spaghetti!"
        delay (999)
        put "Toad:"
        put "So I see you want spaghetti!"
        put "Here! This bowl is on the house!"
        delay (999)
        put "...but can you handle the heat?"
        delay (999)
        put "Mario:"
        put "Of course I can!"
        delay (999)
        put "'Eating noises'"
        delay (2000)
        put "AUGH! HOT HOT HOT!!!"
        delay (1500)
        put "...Oops."
        delay (999)
        put "Please type '36' to continue."
        get input
    else
    end if

    if input = 36 then
        cls
        put "???:"
        put "Step right up for the greatest improvement to boats ever!"
        delay (999)
        color (red)
        put "Mario:"
        put "Huh?"
        delay (999)
        put "Toad:"
        put "Motorboats! Free motorboats for a limited time!"
        delay (999)
        put "Mario:"
        put "Oooh!"
        delay (999)
        put "Wait, it's one of those pirates!"
        delay (999)
        put "Get a motorboat!(37)"
        delay (999)
        put "After those pirates!(38)"
        get input
    else
    end if

    if input = 37 then
        cls
        color (red)
        put "Mario:"
        put "Hey! Can I have a boat?"
        delay (999)
        put "Toad:"
        put "No problem!"
        delay (2000)
        color (red)
        put "Mario:"
        put "Here we go!"
        delay (1500)
        put "Waah! It's sinking!"
        delay (1200)
        put "Blammit the bleight blimit!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        put "(Mario drowned!)"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 38 then
        cls
        put "'Uninspired super spy-like movie scene'"
        delay (5000)
        color (red)
        put "Mario:"
        put "Gotcha you pirates! Now give me-"
        delay (999)
        put "Captain:"
        put "We give ye what, lad?"
        delay (999)
        color (red)
        put "Mario:"
        put "...I just want that map."
        delay (999)
        put "Captain:"
        put "No chance with that! Ye wanna join us..."
        delay (999)
        put "...ye better show us yer a pirate!"
        delay (999)
        color (red)
        put "Mario:"
        put "Wah!"
        delay (999)
        put "Sing a pirate song!(39)"
        delay (999)
        put "Tell 'em a story!(40)"
        delay (999)
        put "Show them yer 'booty'(41)" % this is the best line in the game -NotNemesis
        get input
    else
    end if

    if input = 39 then
        cls
        color (red)
        put "Mario:"
        put "You wanna hear a song?"
        delay (999)
        put "Pirate Fox:"
        put "How about no?"
        delay (1500)
        color (red)
        put "Mario:"
        put "Yar-har, fiddle-dee-dee, being a pirate is alright with me-"
        delay (999)
        put "BANG!"
        delay (999)
        put "Captain:"
        put "No! Here's a real song:"
        delay (999)
        put "We're happy pirates. Watch us play. We wave to our friends. All through the day."
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 40 then
        cls
        color (red)
        put "Mario:"
        put "Let me tell you a story."
        delay (999)
        put "Pirate Fox:"
        put "How about no?"
        delay (1500)
        color (red)
        put "Mario:"
        put "'tells a story about sailing and adventure'"
        delay (3000)
        put "Shy Guy Pirate:"
        put "I think he insulted your mother, Foxy!"
        delay (999)
        put "Pirate Fox:"
        put "WHAT DID YOU SAY!?"
        delay (999)
        color (red)
        put "Mario:"
        put "I was just telling a pir-"
        delay (999)
        put "POW!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 41 then
        cls
        color (red)
        put "Mario:"
        put "Let me show you da booty!"
        delay (999)
        put "'put Booty Song here'"
        delay (999)
        put "Wut."
        delay (2000)
        put "Captain:"
        put "That IS one fine booty..."
        delay (999)
        put "Welcome aboard!"
        delay (999)
        put "Please type [42] to continue."
        get input
    else
    end if

    if input = 42 then
        cls
        put "Captain Lardbutt's Ship"
        delay (2000)
        put "Captain Lardbutt:"
        put "Alright lads! We be sailin' for this here island! Heard she has some fine prize!"
        put "Any questions?"
        delay (1500)
        color (red)
        put "Mario:"
        put "Do you have any food?"
        delay (999)
        put "Captain Lardbutt:"
        put "Yeah, got some grub in th' mess hall. Don't eat all of it!"
        delay (999)
        put "Finally, some alone time with me sandvich!"
        delay (3000)
        put "WHOM TOUCHED ME SANDVICH!?"
        delay (999)
        put "Mario! T'wasn't you, was it?"
        delay (999)
        color (red)
        put "Mario:"
        put "What!? No!"
        delay (999)
        put "Captain Lardbutt:"
        put "I smell mutiny aboard this ship!"
        delay (999)
        put "Mario! Find out who took me sandvich!"
        delay (2000)
        put "WHO DUNNIT?"
        delay (999)
        put "Toad aboard!(43)"
        delay (999)
        put "Twas the fox!(44)"
        delay (999)
        put "Twas the Shy Guy!(45)"
        get input
    else
    end if

    if input = 43 then
        cls
        color (red)
        put "Mario:"
        put "Hey! A stowaway!"
        delay (1500)
        put "Toad:"
        put "AAAAAAHHHhhhhhh!"
        delay (2000)
        put "Captain Lardbutt:"
        put "Mario... That Toad wasn't even part of our crew."
        put "Now quit foolin around!"
        delay (2000)
        put "WHO DUNNIT?"
        delay (999)
        put "Twas the fox!(44)"
        delay (999)
        put "Twas the Shy Guy!(45)"
        get input
    else
    end if

    if input = 44 then
        cls
        color (red)
        put "Mario:"
        put "Twas the fox!"
        delay (999)
        put "'dramatic reveal music'"
        delay (3000)
        put "Captain Lardbutt:"
        put "Alright Foxy! Spit 'er out!"
        delay (999)
        put "Foxy:"
        put "Blaugh!"
        delay (999)
        color (red)
        put "Mario:"
        put "What the f-"
        delay (500)
        put "BOOM!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 45 then
        cls
        color (red)
        put "Mario:"
        put "Twas the Shy Guy!"
        delay (999)
        put "!"
        delay (1500)
        put "Shy Guy Pirate:"
        put "You'll never take me alive!"
        delay (999)
        put "YEEEEEAAAAAHHHHH TTTTTTTTOOOOOAAASSSTTTT!"
        delay (1500)
        put "Captain Lardbutt:"
        put "Real shame. He was me best crew mate..."
        put "Well, least things can't get any worse..."
        delay (999)
        put "Please type [46] to continue."
        get input
    else
    end if

    if input = 46 then
        cls
        put "Giant Blooper:"
        put "WOOP WOOP WOOP WOOP"
        delay (999)
        put "Mario:
        put "OH. MY. GOSH!"
        delay (999)
        put "Captain Lardbutt:"
        put "Okay, I stand corrected..."
        delay (999)
        put "Take that overgrown squid down!"
        delay (2000)
        put "Mario:"
        put "AAH!"
        delay (999)
        put "Waluigi Laucher(47)"
        delay (999)
        put "Waluigi Picture(48)"
        get input
    else
    end if

    if input = 47 then
        cls
        put "Mario uses"
        put "Waluigi LAUNCHER!"
        delay (1500)
        put "It wasn't very effective..."
        delay (999)
        put "Giant Blooper uses Tentacle!"
        delay (2500)
        put "It was super effective!"
        delay (1500)
        colour (12)
        put "GAME OVER, YEAH!"
        delay (5000)
        sfm := 2
        delay (100)
        sfm := 1
        cls
    else
    end if

    if input = 48 then
        cls
        put "Mario:"
        put "Feast your eyes on THIS!"
        delay (2000)
        put "Giant Blooper:
        put "OH. MY. GOSH! GET IT AWAY FROM ME!!!"
        delay (500)
        put "SMACK!"
        delay (1500)
        put "Mario:"
        put "Ahhhhh...."
        delay (3000)
        put "Isla Koopa"
        delay (999)
        put "...hhhhhhh!"
        delay (999)
        put "Okay, that hurt!"
        delay (999)
        put "Damn, this place is well-guarded!"
        delay (999)
        put "What now?"
        delay (999)
        put "Rush in!(49)"
        delay (999)
        put "Distraction(50)"
        delay (999)
        put "Disguise(51)"
        get input
    else
    end if

    if input > 49 or
        if input < 0 then
            cls
            put "Invalid input"
            put "(Expecting to go beyond here, weren't you?)"
            put "This will be gone once the game is done."
            put "Reloading..."
            delay (2500)
        end if

    end loop
