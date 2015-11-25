var cyoae : int := Window.Open ("position:center;center,graphics:1100;1000,nobuttonbar") %Adjust the screen size if needed%
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
colour (white)
colourback (red)
cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if mo = 0 then
    put "<mo.jpg was not found in default file directory>"
    put "loading game, please wait..."
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
put "Version Alpha 5.1"
put "Type [B] to start your adventure!"
put "Type [M] for menu"
put ""
get start

%%%%%%% menu %%%%%%%%%%

if start = "m" or start = "M" then
    cls
    put ""
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
    put "Version 5"
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
    put "MadOctopus (C) 2015"
    colour (42)
    put "[B] to start game"
    put ""
    get start
else
end if

if start = "2" then
    put ""
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
    put "[B] to start game"
    put ""
    get start
else
end if

%%%%%% game %%%%%%%
loop

    if start = "B" or start = "b" then
	cls
	color (white)
	put ""
	put "Hello and welcome to Mario Simulator: Turing Edition!"
	put "You will start by noticing options to follow."
	put "Type the number in to go to that option."
	put "Let's a go! [0]"
	get input
    end if

    if input = 0 then
	cls
	put ""
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
	put ""
	put "Mario:"
	put "Hey, stinky!"
	delay (500)
	put "'Explosion sound'"
	delay (1500)
	colour (12)
	put "GAME OVER, YEAH!"
	delay (500)
	color (white)
	put "What the heck!?"
	delay (5000)
	sfm := 2
	delay (100)
	sfm := 1
	cls
    else
    end if

    if input = 2 then
	put ""
	put "Mario: 'Eating noises'"
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
	put ""
	put "Mario: 'Eating noises'"
	delay (999)
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
	put ""
	color (white)
	put "Mario: 'Eating noises'"
	delay (999)
	put "Seriously, how much longer do you have to eat!?"
	delay (999)
	put "Mario:"
	put "Hey, I'm hungry!"
	delay (999)
	put "Well, maybe this will make you hurry up!"
	delay (2000)
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
	put ""
	put "Phone: 'Rings'"
	delay (999)
	put "Toad:(on phone)"
	put "Oh, hey Mario!"
	delay (999)
	put "Mario:"
	put "Yes, yes..."
	put "Is this where I can hire a princess?"
	delay (2000)
	put "Toad:"
	put "Take a look!"
	delay (2000)
	put "Mario:"
	put "NO!"
	delay (999)
	put "'Phone hangs up'"
	delay (999)
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
	put ""
	put "Mario:"
	put "This is gonna be one of those days, isn't it?"
	delay (999)
	put "'Cue unexciting chase sequence'"
	delay (5000)
	put "Mario:"
	put "'pant' 'pant' 'gasp'"
	put "I'm tired!"
	delay (999)
	put "Well, looks like someone hasn't been exercising lately."
	delay (999)
	put "Mario:"
	put "Hey!"
	delay (500)
	put "Oh! Look at that!"
	delay (2000)
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
	put ""
	put "'Warp Pipe sound'"
	delay (999)
	put "Bob-omb: Welcome to my shop!"
	delay (999)
	put "Mario:"
	put "Hmmm..."
	delay (1500)
	put "Mario:"
	put "Hey, how much are these bombs?"
	delay (999)
	put "Bob-omb:"
	put "You want bombs!? I'LL GIVE YOU BOMBS!"
	delay (999)
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
	put ""
	put "Mario:"
	put "AW YEAH! KART TIME!"
	put "'start uninspired car chase'"
	delay (3000)
	put "'police sirens'"
	delay (999)
	put "Mario:"
	put "Dammit!"
	delay (500)
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
	put ""
	put "Mario:"
	put "SUPER MARIO-"
	put "'fire sound'"
	delay (1200)
	put "'put tree burning sound fx here'"
	delay (500)
	put "Mario:"
	put "Now I'm out of tricks."
	delay (999)
	put "Please type '10' to continue."
	get input
    else
    end if

    if input = 10 then
	put ""
	put "The police officer comes up to Mario's car where-"
	delay (999)
	put "Mario:"
	put "Do you really have to narrate my situation?"
	delay (999)
	put "Police Officer:"
	put "Hey! You were speeding back there,"
	put "so I'm gonna have to take you to the station."
	delay (999)
	put "Mario:"
	put "Or else what?"
	delay (999)
	put "Officer:(loaning his gun)"
	put "We could send you to prison..."
	delay (999)
	put "Mario:"
	put "Augh!"
	delay (999)
	put "'Convince' the cop(11)"
	delay (999)
	put "Get outta here!(12)"
	get input
    else
    end if


    if input = 11 then
	put ""
	put "Mario:"
	put "Look officer..."
	delay (999)
	put "Mario:"
	put "Is there..."
	delay (500)
	put "(:0"
	delay (500)
	put "...'anything' I can do to get out of this?"
	delay (999)
	put "Officer:"
	put "AUGGGH!"
	delay (999)
	put "Mario:"
	put "Great! Prison! Thanks, guys!"
	delay (1500)
	colour (12)
	put "GAME OVER, YEA-"
	color (white)
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
	put ""
	put "Mario:"
	put "Sorry officer, I'm outta here!"
	delay (999)
	put "Police Officer:"
	put "Hey! Get back here you!"
	delay (500)
	put "'cue much more exciting chase scene'"
	delay (2000)
	put "Mario:"
	put "Haha! They'll never get me!"
	delay (999)
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
	put ""
	put "Player:"
	put "Hey! Look out!"
	delay (999)
	put "Mario:"
	put "Huh? WAH!"
	delay (500)
	put "Pewf! Thanks guys!"
	delay (999)
	put "Officer:"
	put "Stahp right dere!"
	delay (999)
	put "Mario:"
	put "Oh COME ON!"
	delay (1500)
	put "Mario:"
	put "Great! Prison! Thanks, guys!"
	delay (1500)
	colour (12)
	put "GAME OVER, YEA-"
	color (white)
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
	put ""
	put "Bam!"
	put "Mario:"
	put "AUGH!"
	delay (500)
	put "'Warp Pipe sound'"
	delay (1500)
	put "'Warp pipe sound"
	put "Mario:"
	put "Oof!"
	delay (500)
	put "Mario:"
	put "Well, looks like I'm on foot from here..."
	delay (999)
	put "Please press '17' to continue."
	get input
    else
    end if

    if input = 15 then
	put ""
	put "Mario:"
	put "Alright Yoshi! We're on another journey!"
	delay (1200)
	put "Yoshi:"
	put "Yay!"
	delay (5000)
	put "1 hour later..."
	delay (500)
	put "Mario:"
	put "Hurry up already!"
	delay (999)
	put "Random Old Man:"
	put "Finally! I'm faster than something!"
	delay (999)
	put "Mario:"
	put "If this keeps up, I'm never gonna save her in time!"
	delay (999)
	put "Use Curry!(16)"
	get input
    else
    end if


    if input = 16 then
	put ""
	put "Mario:"
	put "Hey Yoshi! Have this!"
	delay (999)
	put "Yoshi:"
	put "?"
	delay (999)
	put "Yoshi:"
	put "AUGH! HOT! HOT!"
	delay (999)
	put "Mario:"
	put "Oof!"
	delay (500)
	put "Mario:"
	put "Well, looks like I'm on foot from here..."
	delay (999)
	put "Please press '17' to continue."
	get input
    else
    end if

    if input = 17 then
	put ""
	put "Mario:"
	put "Well, how coincidental: a town in the middle of nowhere!"
	delay (1500)
	put "Old Lady:"
	put "Oh god! Please help me!"
	put "My poor cat is up there!"
	delay (999)
	put "Mario:"
	put "Jeez, I'm torn: I know I have to save Peach..."
	delay (999)
	put "...but I can't leave that cat up there!"
	delay (999)
	put "What do I do!?"
	delay (999)
	put "I got a princess to save!(18)"
	delay (999)
	put "Help the old lady!(19)"
	get input
    else
    end if


    if input = 18 then
	put ""
	put "Mario:"
	put "I'm really sorry ma'am! I've got a princess to rescue!"
	delay (2000)
	put "Eep! A Chain Chomp!"
	put "Little Girl:"
	put "Oh no! Chompy got off his leash!"
	delay (999)
	put "Do the Safety Dance!(20)"
	delay (999)
	put "Throw stuff at it!(21)"
	get input
    else
    end if


    if input = 19 then
	put ""
	put "Mario:"
	put "I can spare a few minutes..."
	delay (5000)
	put "A few minutes later..."
	put "Old Lady:"
	put "Thank you sir! Here, it's not much..."
	delay (2000)
	put "You got a stick and 5 coins!"
	delay (999)
	put "Mario:"
	put "Eep! A Chain Chomp!"
	delay (999)
	put "Little Girl:"
	put "Oh no! Chompy got off his leash!"
	delay (999)
	put "Do the Safety Dance!(20)"
	delay (999)
	put "Throw stuff at it!(21)"
	delay (999)
	put "Use the stick!(22)"
	get input
    else
    end if

    if input = 20 then
	put ""
	put "Mario:"
	put "SAFETY DANCE TIME!"
	delay (500)
	put "'put music that fits with scenario here'"
	delay (2000)
	put "Mario is now safe from everything!"
	delay (999)
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
	put ""
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
	put ""
	put "Mario:"
	put "Oh yeah! The stick!"
	delay (1000)
	put "Chompy:"
	put "?"
	delay (2000)
	put "Mario:"
	put "Yeah! You want it?"
	delay (500)
	put "Go fetch!"
	delay (999)
	put "Oof! Aaah!"
	delay (500)
	put "'Warp Pipe sound'"
	delay (500)
	put "'Warp Pipe sound'"
	delay (500)
	put "Mario:"
	put "Oof!"
	delay (500)
	put "Well, how convenient for the story: help!"
	delay (999)
	put "Spaghetti(23)"
	delay (999)
	put "Ask for directions(24)"
	delay (999)
	put "Ignore him(25)"
	get input
    else
    end if

    if input = 23 then
	put ""
	put "Mario:"
	put "Excuse me, do you have any spaghetti?"
	delay (999)
	put "Toad Guide:"
	put "If you mean a fistfight, you got it!"
	delay (999)
	put "Mario:"
	put "No! I asked if you have any spaghetti."
	delay (999)
	put "Toad Guide:"
	put "You asked for it!"
	delay (999)
	put "Mario:"
	put "BWAAAAAAH!!!"
	delay (999)
	put "Technical difficulties, please stand by..."
	delay (5000)
	put "Toad Guide:"
	put "There you go, you got it!"
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
	put ""
	put "Mario:"
	put "Excuse me, do you have directions to Bowser's castle?"
	delay (999)
	put "Toad Guide:"
	put "You should ask that guy over there, he sells maps."
	delay (999)
	put "Mario:"
	put "Thanks."
	delay (999)
	put "Please type '26' to continue."
	get input
    else
    end if

    if input = 25 then
	put ""
	put "Mario:"
	put "I'll bet he doesn't know the way."
	delay (999)
	put "Maybe that guy knows..."
	delay (999)
	put "Please type '26' to continue."
	get input
    else
    end if

    if input = 26 then
	put ""
	put "Mario:"
	put "Excuse me sir, do you know how to get to Bowser's castle?"
	delay (999)
	put "Salesman:"
	put "Why yes! How about this map for 5 coins?"
	delay (999)
	put "Mario:"
	put "Yeah! Deal!"
	delay (2000)
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
	put ""
	put "Sorry, but this path is unaccusable!"
	delay (999)
	put "Hey! Get out of the story, talking octopi!"
	delay (999)
	put "He's right though. The shop is closed."
	delay (999)
	put "Mario's home(28)"
	delay (999)
	put "Port Toadstool(29)"
	get input
    else
    end if

    if input = 28 then
	put ""
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
	put ""
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
	put ""
	put "Mario:"
	put "BOO!"
	delay (999)
	put "Pirate Fox:"
	put "Not scary. Here's scary:"
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

    if input = 30 then % you screwed up here with your numbering, repeating 30 :p
	put ""
	put "Mario:"
	put "Punch-Out time!!!!"
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

    if input = 31 then
	put ""
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

    if input = 32 then
	put ""
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
	put "Please type '33' to continue."
	get input
    else
    end if

    if input = 33 then
	put ""
	put "Port Toadstool"
	delay (999)
	put "Peach:"
	put "Mario, help me!"
	delay (999)
	put "Mario:"
	put "There they go!"
	delay (999)
	put "Mario:"
	put "Now how to stop them..."
	delay (999)
	put "Please type '35' to continue."
	delay (999)
	put "...Or press '34' for spaghetti."
	get input
    else
    end if

    if input = 34 then
	put ""
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
	delay (999)
	put "...Oops."
	delay (999)
	put "Please type '35' to continue."
	get input
    else
    end if

    if input = 35 then
	put ""
	put "???:"
	put "Step right up for the greatest improvement to boats ever!"
	delay (999)
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
	put "Get a motorboat!(36)"
	delay (999)
	put "After those pirates!(37)"
	get input
    else
    end if

    if input = 36 then
	put ""
	put "Mario:"
	put "Hey! Can I have a boat?"
	delay (999)
	put "Toad:"
	put "No problem!"
	delay (2000)
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

    if input = 37 then
	put ""
	put "'Uninspired super spy-like movie scene'"
	delay (5000)
	put "Mario:"
	put "Gotcha you pirates! Now give me-"
	delay (999)
	put "Captain:"
	put "We give ye what, lad?"
	delay (999)
	put "Mario:"
	put "...I just want that map."
	delay (999)
	put "Captain:"
	put "No chance with that! Ye wanna join us..."
	delay (999)
	put "...ye better show us yer a pirate!"
	delay (999)
	put "Mario:"
	put "Wah!"
	delay (999)
	put "Sing a pirate song!(38)"
	delay (999)
	put "Tell 'em a story!(39)"
	delay (999)
	put "Show them yer 'booty'(38)" % this is the best line in the game
	get input
    else
    end if

    if input >= 38 then
	put ""
	put "Aye there laddies, and thank ye fer playing the Alpha!"
	put "This is the end for now, but expect updates soon!"
	put "Bye!"
	put "-Sonason, dev"
	delay (2500)
    end if

end loop
