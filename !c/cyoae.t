% Choose Your Own Adventure Epic! By Rafael (NotNemesis), Mason (sonason), and Kernen (Minecrafitian47)
% This game uses a modified version of SATCA v0.2

% Variables %
var w_play : int := Window.Open ("position:center;center,graphics:900;600,nobuttonbar") %Adjust the screen size if needed%
View.Set ("title:Choose Your Own Adventure Epic!")
var v_menu : int
var input, res : int
var sfm : int := 1
var mo : int := Pic.FileNew ("mo.jpg")

procedure death
    colour (12)
    put "GAME OVER!"
    colour (white)
    put "Type [0] to restart"
    get res
    sfm := 1
    cls
end death

% Colouring %
colour (white)
colourback (7)
cls

if mo = 0 then
    put "<mo.jpg was not found in default file directory>"
    put "loading game, please wait..."
    %delay (3000)
    cls
else
    Pic.Draw (mo, 0, 0, picCopy)
    %delay (3000)
    cls
end if


loop
    % Title %
    if sfm = 1 then
        put "Choose Your Own Adventure Epic!"
        put "By NotNemesis"
        put ""
        put "Type [0] to start your adventure!"
        put "Type [1] for menu"
        put ""
        sfm := 0
        get v_menu
    end if
    % Menu %

    loop
        if v_menu = 1 then
            put ""
            put "CREDITS [2]"
            delay (200)
            put "NEWS [3]"
            delay (200)
            put "CODE [4]"
            delay (200)
            put "START GAME [0]"
            delay (200)
            put "TYPE YOUR CHOICE."
            put ""
            get v_menu
        else
        end if

        if v_menu = 2 then
            put ""
            put "Choose Your Own Adventure Epic!"
            delay (999)
            colour (9)
            put "IDEA"
            colour (14)
            put "NotNemesis"
            delay (999)
            colour (9)
            put "PROGRAMMING"
            colour (14)
            put "NotNemesis"
            delay (999)
            colour (9)
            put "STORY"
            colour (14)
            put "NotNemesis"
            delay (999)
            put "Very special thanks to my family for supporting me and being around!"
            delay (999)
            colour (12)
            put "PLEASE GIVE CREDIT IF YOU PLAN TO USE MY CODE. THANKS!"
            delay (999)
            colour (white)
            put "NotNemesis (C) 2015"
            colour (42)
            put "[0] to start game or give a menu command [2,3,4]"
            put ""
            colour (white)
            get v_menu
        else
        end if

        if v_menu = 3 then
            put ""
            colour (14)
            put "NEWS"
            colour (42)
            put "October 26, 2014"
            colour (white)
            put "Demo release!"
            colour (42)
            put "October 19, 2014"
            colour (white)
            put "Now in 1.2.2 Alpha!"
            put "I got a screen now that is 900x700. Improvements, even if they're little!"
            put ""
            colour (42)
            put "October 18, 2014"
            colour (white)
            put "Now in 1.2 Alpha!"
            put "I added a menu for extra functions. There's credits, news (this), and something else that you might want to check out."
            put ""
            put "[0] to start game or give a menu command [2,3,4]"
            put ""
            get v_menu
        end if

        if v_menu = 4 then
            put ""
            colour (12)
            put "1042"
            colour (white)
            put "[0] to start game or give a menu command [2,3,4]"
            put ""
            get v_menu
        end if

        if v_menu = 5 then
            put "AND HIS NAME IS JOHN CENA!!!"
            put "DUDUDUDUUUUU! DUDUDUDUUUU!"
            put ""
            get v_menu
        end if

        if v_menu = 6 then
            put "DOOT DOOT SAYS THE SPOOKIE SKELETON"
            put ""
            get v_menu
        end if

        if v_menu = 0 then
            exit
        end if

        if v_menu > 6 then
            put "ERROR badinput, PLEASE PUT VALID COMMAND"
            get v_menu
        end if

    end loop

    % Game %
    loop

        if sfm = 1 then
            put "Choose Your Own Adventure Epic!"
            put "By NotNemesis"
            put ""
            put "Type [0] to start your adventure!"
            put "Type [1] for menu"
            put ""
            sfm := 0
            get v_menu
        end if

        if v_menu = 0 then
            v_menu := 88
            sfm := 0
            put ""
            colour (white)
            put "You wake up. It's Saturday. What will you do?"
            put "Go back to bed [2]"
            put "Get up [3]"
            put ""
            get input
        else
        end if

        if input = 2 then
            put ""
            put "You go back to bed. When you wake up, it's Tuesday. Yikes!"
            put "You run to the bathroom to wash your face when suddenly the roof of your house lifts and a giant beast eats you alive!"
            put "Type [4] to continue"
            put ""
            get input
        else
        end if

        if input = 3 then
            put ""
            put "You get up and put on your pink fuzzy slippers. You go downstairs. Where do you go?"
            put "Kitchen [5]"
            put "Living Room [6]"
            put ""
            get input
        else
        end if

        if input = 4 then
            put ""
            colour (42)
            put "ACHIVEMENT GET! CLOSE CALL"
            colour (white)
            put "You get eaten by the beast and get knocked unconscious. When you wake up, you are in the belly of the beast."
            put "Luckily it's a robotic beast, so you don't get disolved. What will you do?"
            put "Crawl into a ball and cry [7]"
            put "Explore [8]"
            put ""
            get input
        else
        end if

        if input = 5 then
            put ""
            put "You go to the kitchen and prepare yourself some toast. You go to the couch in the living room and turn on the TV."
            put "What will you watch?"
            put "Cartoons [9]"
            put "Sports [10]"
            put "News [11]"
            put "The Real Huntresses of Alaska [12]"
            put ""
            get input
        else
        end if

        if input = 6 then
            put ""
            put "You go to the living room and sit down on the couch."
            put "You turn on the TV. What will you do?"
            put "Watch TV [13]"
            put "Play videogames [14]"
            put ""
            get input
        else
        end if

        if input = 7 then
            put ""
            put "You crawl into a ball and cry. You cry so much that you get dehydrated and die."
            colour (42)
            put "ACHIVEMENT GET! WUSS"
            death
        else
        end if

        colour (white)
        if input = 8 then
            put ""
            put "You decide to explore the beast's stomach. You're already down here and you didn't get burned up by any stomach acids. What's the worst that could happen?"
            put "After walking for a little bit, you wonder what should you do. Well, what will  you do?"
            put "Look for people [15]"
            put "Escape the way you came [16]"
            put "Escape out of the <back end> [17]"
            put ""
            get input
        else
        end if

        if input = 9 then
            put ""
            put "Yay! Cartoons! You watch your favourite show, LoofahJoe TriangleShirt."
            put "LoofahJoe >> Nye-hehehe! I sure do love seahorse riding!"
            put "Rick >> Durr-hur-hur! Is mayonnaise a condiment?"
            put "Octopus >> Quiet down LoofahJoe! I'm trying to play the flute!"
            put "Sir Lobster >> Arr-arr-arr! Currency!"
            put "Chipmunk >> Oklahoma is OK!"
            put "The episode ends."
            put "What will you do now?"
            put "MORE CARTOONS!!! [18]"
            put "Go out [19]"
            put "Go out, through the window [20]"
            put ""
            get input
        else
        end if

        if input = 10 then
            put ""
            put "You watch sports. It's football, Piggers vs The Touchdowns"
            put "The game ends and THE PIGGERS WON!!! They are definitely going all out this year."
            put "What will you do now?"
            put "Watch another game [21]"
            put "Go out [19]"
            put "Go out, through the window [20]"
            put ""
            get input
        else
        end if

        if input = 11 then
            put ""
            colour (42)
            put "ACHIVEMENT GET! BORING"
            colour (white)
            put "You watch the news. That's boring, even the achievement knows that."
            put "It's a videogame, do something fun!"
            put "Will you still watch the news?"
            put "Yes, I know what I'm doing [22]"
            put "You're right, it is a game. LET'S GO DO SOME CRAZY STUFF! [23]"
            put "You're right, VIDEOGAME STUFF TIME! [24]"
            put "I DON'T KNOW WHAT I'M DOING! AHH! *jumps out of window* [36]"
            put ""
            get input
        else
        end if

        if input = 12 then
            put ""
            put "Ugh, but that show sucks, come on! It got a 18/93 for last season."
            put "So you watch the stupid show."
            put "In the episode, Angela gets mad at Tony for giving her a polar bear for her birthday instead of giving her a baby seal."
            put "And Joseph and Sara spent their 132nd day in the tundra freezing to death and trying to reach a place where the ground isn't perma-permafrost."
            put "Sara shouldn't have chosen Joseph, he's a terrible navigator, especially in a place where you can't tell where you are"
            put "The episode ends. What will you do now?"
            put "Go out [19]"
            put "Go out, through the window [20]"
            put ""
            get input
        else
        end if

        if input = 13 then
            put ""
            put "What will you watch?"
            put "Cartoons [9]"
            put "Sports [10]"
            put "News [11]"
            put "The Real Huntresses of Alaska [12]"
            put ""
            get input
        else
        end if

        if input = 14 then
            put ""
            put "YAY! VIDEOGAMES!"
            put "You play your favourite game. Hopefully this time you can beat that last level."
            delay (4000)
            put "Yes! You beat it!"
            delay (4000)
            put "Yes! Another one done!"
            delay (4000)
            put "And another one!"
            delay (4000)
            put "And another one!"
            delay (4000)
            put "That one was hard."
            put "Will you try again?"
            put "Yes! I must! [48]"
            put "No, let's go out [19]"
            put "No, let's go out through the window [20]"
            put ""
            get input
        else
        end if


        if input = 15 then
            put ""
            put "You start looking in the belly of the beast for people."
            put "Why would you look for people in a beast?"
            delay (2500)
            put "You arrive at a crossroads. Where will you go?"
            put "To the left [25]"
            put "To the right [26]"
            put ""
            get input
        else
        end if

        if input = 16 then
            put ""
            put "Well, time to climb out of the windpipe."
            delay (500)
            put "Oh look! A ladder. Now you can climb out easily."
            put "But the ladder looks REALLY tall."
            put "You start climbing the ladder."

            for i : 1 .. 60
                put "." ..
                delay (1000)
            end for

            colour (white)
            put "Whew! You made it to the top of the beast."
            colour (42)
            put "ACHIVEMENT GET! SAFE WAY OUT!"
            colour (white)
            put "What will you do now?"
            put "Jump out of the mouth of the beast [27]"
            put "Jump back in [28]"
            put "Crawl into a ball and cry [29]"
            put ""
            get input
        else
        end if

        if input = 17 then
            put ""
            put "Oh god, really?"
            delay (4000)
            put "Are you really sure that you want to do that?"
            delay (4200)
            put "Do you even know what I mean by back end?"
            delay (4152)
            put "Of course I turned the sink off at home, I'm not stupid!"
            delay (4443)
            put "Fine! I'm leaving you!"
            colour (42)
            put "ACHIVEMENT GET! LEFT BY COMPUTER!"
            death
        else
            colour (white)
        end if

        if input = 18 then
            put ""
            put "Yay! Cartoons! (again) You watch your favourite show again"
            put "LoofahJoe >> Nye-hehehe! I sure do love seahorse riding!"
            put "Rick >> Durr-hur-hur! Is mayonnaise a condiment?"
            put "Octopus >> Quiet down LoofahJoe! I'm trying to play the flute!"
            put "Sir Lobster >> Arr-arr-arr! Currency!"
            put "Chipmunk >> Oklahoma is OK!"
            put "The episode ends."
            put "What will you do now?"
            put "Go out [19]"
            put "Go out, through the window [20]"
            put ""
            get input
        else
        end if

        if input = 19 then
            put ""
            put "You grab your jacket and sit down to tie your shoes."
            delay (6000)
            put "Well, those shoes don't look right. Let's try again."
            delay (6000)
            put "Tying shoes is hard anyways. Everyone screws up anyways."
            put "Will you continue to try to tie your shoes?"
            put "Nah, I'm fine [30]"
            put "I must try again! [31]"
            put ""
            get input
        else
        end if

        if input = 20 then
            put ""
            colour (42)
            put "ACHIVEMENT GET! FUN VIDEOGAME STUFF 1!"
            colour (white)
            put "Yay! You did something cool for once in the game."
            put "When you land on your front lawn, there is an old lady walking her Chihuahua. They're both scared."
            put "She stares at you. You're covered in glass shards."
            delay (2677)
            put "She screams and runs away, dragging her Chihuahua along with."
            put "You're good with making friends."
            put "What will you do now?"
            put "Look at the sun [32]"
            put "Walk to the bus station [33]"
            put "Steal a car [34]"
            put ""
            get input
        else
        end if

        % it looks like a comment was needed here for some reason ;)

        if input = 21 then
            put ""
            put "You watch another game."
            delay (4000)
            put "YEAH! THE PIGGERS TOTALLY DESTROYED THE OTHER TEAM DURING THE FIRST HALF!"
            delay (1500)
            put "JIM!!! STOP FUMBLING!"
            delay (1500)
            put "OH COME ON BILL! YOU CALL THAT YOUR BEST PLAY!?"
            put "You lose your marbles and grab the TV, then throw it out of the window."
            delay (600)
            colour (12)
            put "Whoops!"
            colour (white)
            put "The TV you threw hit and killed an old lady and her Chihuahua."
            colour (42)
            put "ACHIVEMENT GET! LOSE YOUR MARBLES!"
            colour (white)
            put "WHAT HAVE YOU DONE!? IT'S A VIDEOGAME! YOU DON'T KILL PEOPLE IN A VIDEOGAME!"
            put "(Actually, it's usually fine if you kill someone in a videogame but this is an  adventure)"
            put "Police sirens echo throughout the area."
            put "You escape out of the window and start your life of hard crime."
            delay (700)
            put "Type [35] to continue."
            put ""
            get input
        else
        end if

        if input = 22 then
            put ""
            put "Oh, okay Mr/Mrs/Miss/Dr. Confident."
            put "Which news channel will you watch?"
            put ""
            put "Democratic People's Republic of North Dakota State-Run TV[64]"
            put "NTV [65]"
            put "Tri-City Area News [66]"
            put ""
            get input
        else
        end if

        if input = 23 then
            put ""
            put "So you want to do crazy stuff, huh?"
            put "You run outside to the nearest dumpster and find a glass bottle."
            put "You break the bottle and find a racoon."
            put "You try to attack the racoon, but he claws out your eyes."
            put "You escape the battle blind."
            put "You try to find a hospital, but you fall off a cliff."
            delay (4500)
            put "You land safely somehow."
            put "You wander forward into a busy highway..."
            death
        else
        end if

        if input = 24 then
            put ""
            colour (white)
            put "YEAH! VIDEOGAME STUFF!"
            put "You run outside and find a turtle, then stomp on it and kick it."
            put "Then you run to a random car and steal it."
            put "But you don't know how to drive!"
            put "You crash into some trash cans and the car flips over and explodes!"
            colour (42)
            put "ACHIVEMENT GET! VIDEOGAME LOGIC!"
            death
        end if

        if input = 25 then
            put ""
            put "To the left then, huh."
            put "What are you looking at me for? It's not wrong. Well, I don't think it is."
            put "So you walk to the left."

            for i : 1 .. 5
                delay (1500)
                put "." ..
            end for

            put "OOH! LOOK LOOK LOOK! SHINY THINGS!"
            put "I guess the beast ate some shiny stuff."
            put "What will you do?"
            put "Jump in the shiny stuff! [38]"
            put "Walk back. Shiny things don't amuse me. [39]"
            put ""
            get input
        else
        end if

        if input = 26 then
            put ""
            put "You walk to the right."

            for i : 1 .. 5
                delay (1500)
                put "." ..
            end for

            put "Out of the corner of your eye, you see some people surrounding a metal object and you hide behind a tire on the ground."
            put "What will you do?"
            put "Say hi [40]"
            put "Stay here and hope they find you [41]"
            put "Scream ''Stranger Danger!'' and run away. [42]"
            put "Fake an injury and cry loudly [43]"
            put ""
            get input
        else
        end if

        if input = 27 then
            put ""
            colour (42)
            put "ACHIVEMENT GET! DAREDEVIL!"
            colour (white)
            put "You jump out and make yourself into the form of a cannonball, preparing to land."
            put "But you don't know what material is underneath you!"
            delay (2000)
            put "Luckily, you land in a giant box of feathers in the feather warehouse next to the Taco Hut."
            put "You manage to get out of the box without any harm and head for the Taco Hut."
            put "Type [44] to continue"
            put ""
            get input
        else
        end if

        if input = 28 then
            put ""
            put "All this work just to jump back in?"
            put "Okay, you're the boss."
            put "You jump."

            for i : 1 .. 60
                delay (1000)
                put "." ..
            end for

            put "Splat! You land hard and have nothing to break your fall."
            death
        end if

        if input = 29 then
            put ""
            put "So sad for a big boy/girl like you to get so far and start to cry."
            put "You start to cry. The beast that you are in and tries to talk to you, but he accidentally spits you out."
            put "Splat! You land far away from the beast and die on impact from the fall."
            death
        end if

        if input = 30 then
            put ""
            put "Okay, I hope you're fine. I've never seen ANYBODY who has walked more than a few feet with their shoelaces      untied. Plus, it's dangerous to go with them like that."
            put "Oh, fine. >:("
            put "You try to walk, but you keep on tripping."
            put "Will you tie your shoes now?"
            put "Yeah, okay [45]"
            put "NO! [46]"
            put "Make me! [47]"
            put ""
            get input
        else
        end if

        if input = 31 then
            put ""
            put "You really want to prove that you can tie your shoes, hmm?"
            put "You tie your shoes one last time and GET THEM RIGHT!"
            %    put "achivement"
            put "Where do you want to go now that you've tied your shoes?"
            put "Bus Stop [49]"
            put "Taco Hut [50]"
            put "Mario & Luigi's Spinnin' Spaghetti Diner [51]"
            put "Pineapple Burger [52]"
            get input
        end if

        if input = 32 then
            put ""
            put "Cool! I watched ''Science That!'' the other day and heard you can get superpowers by looking at the sun!"
            put "You stare into the sun" ..

            for i : 1 .. 6
                put "." ..
                delay (1000)
            end for

            put ""
            put "Why is everything dark now!?"
            put "Oh no! You went blind!"
            put "At this point, you can't continue your adventure :("
            death
        end if

        if input = 33 then
            put ""
            put "You walk to the bus station."
            put "It's not too far from your house, just a couple of blocks away."

            for i : 1 .. 10
                put "." ..
                delay (1000)
            end for

            put "You see the bus station from a distance, AND A BUS THAT'S LEAVING!"
            put "THAT BUS IS THE ONLY ONE TO SUPER TACO HUT!!!"
            put "WHAT WILL YOU DO NOW?!"
            put "RUN FOR THE BUS!!!! AHHHHHHHHHHHHHHH! [53]"
            put "RUNRUNRUNRUNRUNRUN! [54]"
            put "Lose all hope and go to the regular Taco Hut, I heard they're practically the same [55]"
            put ""
            get input
        end if

        if input = 34 then
            put ""
            put "STEAL A CAR!!! WOO!!!"
            put "Oh wait... um... dude that's illegal..."
            put "Even in a videogame..."
            put "But you're the boss, right?"
            put "ALRIGHT LET'S STEAL A CAR!!!"
            put "YOU PUNCH THE WINDOW OF A CAR AND IT FREAKING SMASHES INTO LITTLE BITS!!!"
            put "YOU GET IN THE DRIVERS SEAT AND YOU DO 100000000000000000000KM IN A SCHOOL ZONE!"
            put "WOO KIDDOS WHO CARES ABOUT PHYSICS I'M GOING HELLA FAST BABY!!!"
            put "BUT YOUR SELF-CONSIOUS COMPPUTER GAME HEARS SIRENS BLARING IN THE DISTANCE!!!"
            put "TYPE [56] TO CONTINUE!!!"
            put ""
            get input
        end if

        if input = 35 then
            put ""
            put "LET'S GET YOUR CAREER INTO FIRST GEAR!"
            delay (1000)
            put "Um..."
            put "So..."
            put "What first?"
            put "Bank robbery! The classic![57]"
            put "Let's go kidnapping![58]"
            put "Murdering people is super fun![59]"
            put "I never wanted to be a bad guy![60]"
            put ""
            get input
        end if

        if input = 36 then
            put ""
            put "I DON'T KNOW WHAT I'M DOING SO LET'S JUMP OUT OF A WINDOW!"
            put "YOU JUMP OUT OF THE WINDOW BUT TIME IT WRONG AND LAND ON AN OLD LADY'S CHIHUAHUA!"
            put "THE WEIGHT OF YOUR BODY CRUSHES THE POOR THING"
            put "THE OLD LADY RUNS AWAY IN FEAR AFTER YOU KILL HER DOG (YOU MONSTER)"
            put "WHAT WILL YOU DO NOW, KILLER BOY/GIRL?"
            delay (5000)
            put "HIDE THE BODY [61]"
            put "BURY THE BODY [62]"
            put "RUN TO THE BUS STATION AND START A NEW LIFE [63]"
            put ""
            get input
        end if

        if input = 38 then
            put ""
            put "YEAH! You jump in the shiny stuff!"
            put "You try and taste the shiny stuff but you seem to swallow some by accident!"
            put "A dragon appears and tries to do the Heimlich maneuver on you but it tears into your body with its claws instead..."
            death
        end if

        if input = 39 then
            put ""
            put "You turn around, only to find a monstrous dragon blocking your path."
            put "Dragon >> Oh, hello there darling! Are you here for my precious?"
            put "You >> I... I... was just... leaving!"
            put "Dragon >> Then let me see the proof!"
            put "Suddenly, the dragon scorches your body to the point where only your bones remain."
            death
        end if

        if input = 40 then
            put ""
            put "You >> Hi!"
            for i : 1 .. 3
                put "." ..
                delay (1000)
            end for
            put "Oh wait, you're still here... Behind the tires..."
            put "They didn't hear you, maybe you should walk up to them?"
            put "Type [139] to walk up to the people"
            put ""
            get input
        end if

        if input = 41 then
            put ""
            put "You stay behind the tires and hope that they find you."
            put "You fall (yawn) asleep..."
            put "Z" ..
            for i : 1 .. 100
                delay (500)
                put "z" ..
            end for
            put ""
            put "*Snap-snap* Wake up! They left!"
            put "Now you're stuck here! Good job!"
            death
        end if

        if input = 42 then
            put ""
            put "As you learned in some form of previous or current education, strangers are bad and you need to run away from them."
            put "You >> STRANGER DANGER!!!"
            put "One of the people from the camp starts to chase you."
            put "Stranger >> Hey wait!"
            put "You can't fool me dangerous stranger person!"
            put "Right at that moment, you trip on a pineapple and fall into the stomach acids of the beast!"
            put "Your last words are ''ARGBALARGABABHRG DARBN BABLAGRBABGGLARB PINEBLAGRBLARPLE!''"
            death
        end if

        if input = 43 then
            put ""
            put "Why fake an injury when you can get an actual injury ;D"
            put "(Trust me, I'm a professional)"
            put "You push one of the tires onto your foot and scream in actual pain."
            put "One of the people come running to you to see if you're okay."
            put "Another two people bring a stretcher and put you on it."
            put "Some details start to become a little hazy because you're in A LOT of pain."
            put "They roll you inta the..." ..
            delay (6000)
            put " metal thingy..." ..
            delay (1200)
            put " from ahh..." ..
            delay (1000)
            put " earlier..."
            put "Type [67] to continue..."
            put ""
            get input
        end if

        if input = 44 then
            put ""
            put "You walk into the Taco Hut."
            put "What will you do now?"
            put
                "Order a Quintuple-Fried Triple Bypass Burrito with Quadruple-Deep-Fried tortilla bread drizzled in chocolate     (comes with Jumbo-Sized Nachos, small fountain drink, and free fast-track admission to local hospital) [68]"
            put "Go to the bathroom, I really have to go! [69]"
            put "Grab a seat, my legs are tired [70]"
            put ""
            get input
        end if

        if input = 45 then
            put ""
            put "Since your stubbornness is getting you nowhere, you sit down and you try to tie them again."
            put "You tie your shoes and GET THEM RIGHT!"
            %    put "achivement"
            put "Where do you want to go now that you've tied your shoes?"
            put "Bus Stop [49]"
            put "Taco Hut [50]"
            put "Mario & Luigi's Spinnin' Spaghetti Diner [51]"
            put "Pineapple Burger [52]"
            put ""
            get input
        end if

        if input = 46 then
            put ""
            put "Fine you big jerk! Don't tie your dumb shoes!"
            put "You tuck your laces into your shoes and start to leave the house."
            put "Just then, New Punidas, Lord of Shoes, appears!"
            put "New Punidas >> YOU!"
            put "New Punidas >> Due to your ignorance and lack of tying your shoes, I force you to 80 years of untying knots in dimension 982!"
            put "In the blink of an eye, you are sent to dimension 982 and must untie knots for the rest of your life!"
            death
        end if

        if input = 47 then
            put ""
            put "Is that how it's gonna be? Okay then."
            put "The computer makes you tie your shoes, then forces you to chant that it is great."
            for i : 1 .. 20
                put "Computer is great! Keep playing the game!"
                delay (1000)
            end for
            put "Then the computer makes you restart because you are a jerk >:D"
            death
        end if

        if input = 48 then
            put ""
            put "You try that level again."
            put "Come on Smash the Bandihog Plumber, DO THE JUMP THING!"
            put "You do a wicked cheat code combo really fast to jump, but when you do, you tear your fingers off!"
            put "Well, that's enough videogames for today, might as well go outside for some fresh, fresh air!"
            put "Type [73] to continue"
            put ""
            get input
        end if

        if input = 49 then
            put ""
            put "Okay then."
            put "You start walking over to the bus stop."
            put "Oh no! The bus is starting to drive away!"
            put "Will you go after the bus?"
            put "Yeah! [71]"
            put "Nah, I'll wait for the next bus... [72]"
            put ""
            get input
        else
        end if

        if input = 50 then
            put ""
            put "Yes, let's go to Taco Hut, they have the BEST tacos!"
            put "Do you know why it's called Taco Hut? Because the first taco was served in a hut."
            put "(Or was it that is was served with a nut? Who knows, that stuff is history)"
            put "So you walk to the nearby Taco Hut."
            for i : 1 .. 5
                delay (1000)
                put "." ..
            end for
            put "Yay! We're here! Can you order me a quesadilla with extra sour cream?"
            put "Type [74] to continue"
            put ""
            get input
        end if

        if input = 51 then
            put ""
            put "Spinnin' Spaghetti, eh?"
            put "Okay, whatever floats your boat, I just wanted to say that their meatballs are gross."
            put "You walk to Mario & Luigi's Spinnin' Spaghetti"
            put "(Hmm, those names seem familiar...)"
            put "You walk in where you are greeted by a small man wearing a mushroom on his head."
            put "Mushroom Man >> Hi there! Can I take your coat?"
            put "What will you do?"
            put "Give strange man your coat [75]"
            put "Keep your coat, this place gives you a creepy vibe [76]"
            put ""
            get input
        end if

        if input = 52 then
            put ""
            put "So it's Pineapple Burger then?"
            put "You walk to Pineapple Burger and when you get there, pineapples are protesting against the restaurant!"
            put "Their signs say 'Pineapples Matter!' and 'Pineapple Cannibalists!'"
            put "I hope they know that Pineapple Burger uses synthetic pineapple slices!"
            put "What will you do?"
            put "Put facts aside and protest with them! [78]"
            put "Tell those dumb pineapples that they're dumb and that they should have never advanced to where they are now in  society [79]"
            put "Leave [77]"
            put ""
            get input
        end if

        if input = 53 then
            put ""
            put "YOU RUN FOR THE BUS AND SCREAM AT THE SAME TIME BECAUSE AHHHHHHHHHHHHHHHHHHHHHHHHHHHH!"
            put "LUCKILY THE BUS DRIVER SLOWS DOWN ENOUGH FOR YOU TO CATCH UP TO IT."
            put "You get in the bus but IT'S FULL OF OLD PEOPLE!"
            put "The bus starts to drive, and now you're headed to Florida..."
            put "Type [80] to continue"
            put ""
            get input
        end if

        if input = 54 then
            put ""
            put "You run but don't scream, expecting that the bus driver will see you."
            put "But the bus driver is an old man!"
            put "What will you do now?"
            put "Wave my hands and tell him to pull over! [81]"
            put "Screw it, I'm just gonna walk to Taco Hut [82]"
            put ""
            get input
        end if

        if input = 55 then
            put ""
            put "Oh fine, let's not take a bus to Super Taco Hut."
            put "You walk to the regular Taco Hut which isn't too far away."
            put "Type [74] to continue"
            put ""
            get input
        end if

        if input = 56 then
            put ""
            put "WEEE WOOO WEEE WOOO! GOES THE POLICE SIRENS IN THE DISTANCE!"
            put "OH MAN OH JEEZ WHAT ARE WE GONNA DO WITH THESE COPPERS MAN!?"
            put "OH MAN OH JEEZ [83]"
            put "THROW SOMETHING AT THE COPPERS! [84]"
            put "TAKE 'EM OFF COURSE! [85]"
            put "PULL OVER [86]"
            put ""
            get input
        end if

        if input = 57 then
            put ""
            put "Ooh, someone's greedy, eh?"
            put "You grab your  Homer(C) Brand ''Outta Sight!'' baseball bat"
            put "(Remember kids, if it ain't Homer(C), it ain't gonna do a homer either!)"
            put "You also grab a mask of Harry Seinfeld and put it on your face to protect your identity."
            put "But which bank will you rob?"
            put "Townville City Credit Union [87]"
            put "First Bank of Pineappleia [88]"
            put "Silverman Sacs [89]"
            put ""
            get input
        end if

        if input = 58 then
            put ""
            put "Kidnapping, ooh! That sounds like FUN!"
            put "But who would you kidnap? This might be harder than you think..."
            put "Plus, we don't want to do anything TOO illegal."
            put "And I'm too good-looking for jail!"
            put "Maybe we should stick to stealing something that isn't people..."
            put "What will you steal?"
            put "Digital Media, Hollywood doesn't need more money! [90]"
            put "Tacos Tacos Tacos! [91]"
            put "Let's steal a pineapple from city hall! [92]"
            put ""
            get input
        end if

        % please keep the next lines of comments it holds together this fabric of space and time
        %         drrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
        %         drrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
        %         drrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
        %         ///////////////////////////////////////////////////////

        if input = 59 then
            put ""
            put "Ooh! Murdermurdermurder!"
            put "I've always wanted to do it!!!"
            put "But your computer game with a sub-conscious tells you no."
            put "Aww, but why? >:("
            put "Your computer game tells you how bad killing is, gives you the pros and cons about jail, and then hands you a pamphlet on prison"
            put "Why thank you CYOAE! You've set me on the right path!"
            put "As a treat, CYOAE tells you to go to Taco Hut as a treat!"
            put "Type [74] to continue"
            put ""
            get input
        end if

        if input = 60 then
            put ""
            put "Oh man! I never meant to be a bad guy!"
            put "Those police siren echoes get louder and louder, so you decide to turn yourself in..."
            put "This has gotten from an epic adventure to a criminal endeavour."
            put "A day later, you are in court on trial about the murder of Ms. Sowannitz's and her dog."
            put "What do you plead?"
            put "Guilty, absolutely guilty [93]"
            put "Guilty [94]"
            put "Not guilty, didn't do it [95]"
            put ""
            get input
        end if

        if input = 61 then
            put ""
            put "HIDE A BODY!? ARE YOU OUT OF YOUR MIND!? WHAT KIND OF PERSON DOES THAT!?"
            put "AT LEAST IT'S A BIT MORE HUMANE!"
            put "IF BEING HUMANE IS YOUR BIGGEST CONCERN, INSTEAD OF HIDING IT, YOU DRESS UP THE BODY AND PUT IT IN A LAWN CHAIR"
            put "YOU ALSO ATTACH SOME STRINGS TO THE BODY TO PUPPETEER IT"
            put "YOU QUICKLY JUMP ON THE ROOF OF YOUR HOUSE AND BEGIN TO PUPPET AS A POLICE OFFICER WALKS UP TO ''HER''"
            put "Police Officer >> Hello there, uhh... ma'am. I've heard complaints about loud noises here in the block and I    just wanted to hear if there were any witnesses..."
            put "What will you say, ''Ms. Sowannitz''?"
            put "WHAT'S THAT, SONNY? I CAN'T HEAR YOU!!! [96]"
            put "Nonono, nothing happening here! [97]"
            put "Yeah, some guy just threw a TV out their window and then some old lady and her dog died when they git hit by it! Also that old lady is me and that dog was mine [98]"
            put " "
            get input
        end if

        if input = 62 then
            put ""
            put "OKAYOKAYOKAY, LET'S BURY THE BODY!"
            put "HEY FIDO, DIG THE..."
            put "OH WAIT... OH..."
            put "YOU RUN TO THE SHED AND TRY TO FIND A SHOVEL AND BEGIN DIGGING A HOLE"
            put "Police Officer >> Hello there citizen, may I ask you what are you doing with that shovel?"
            put "Police Officer >> And why is there an old woman laying on the ground!? You must have something to do with this!"
            put "Police Officer >> YOU ARE UNDER ARREST!!!!!!!!!!!!!!!!!!!!!!!!!!!1!"
            death
        end if

        if input = 63 then
            put ""
            put "You run to the bus stop to start a new life."
            put "Oh no! When you get there, a bus is starting to drive away!"
            put "Will you go after the bus?"
            put "Yeah! That's my ticket to a new life! [99]"
            put "Nah, I'll wait for the next bus... [100]"
            put ""
            get input
        end if

        if input = 64 then
            put ""
            put "You watch the Democratic People's Republic of North Dakota State-Run TV (or DPRNDSRTV for short)"
            put "DPRNDSRTV >> We interupt this broadcast of ''Days of Our Democratic People's Lives'' to bring you a special    report."
            put "DPRNDSRTV >> The leader is great, the leader is good!"
            put "DPRNDSRTV >> The leader is great, the leader is good!"
            put "DPRNDSRTV >> The leader is great, the leader is good!"
            put "The news lady keeps chanting that over and over again."
            put "What will you do now?"
            put "Watch NTV [65]"
            put "Watch Tri-City Area News [66]"
            put "Chant ''the leader is great, the leader is good'' [101]"
            put ""
            get input
        end if

        if input = 65 then
            put ""
            put "NTV? Why? They barely have news on that channel anymore!"
            put "You wait around for an hour or so to see the news but it's just a dumb reality show about fake dating cats..."
            put "What will you do now?"
            put "Watch Democratic People's Republic of North Dakota State-Run TV[64]"
            put "Watch Tri-City Area News [66]"
            put "Keep watching NTV [102]"
            put ""
            get input
        end if

        if input = 66 then
            put ""
            put "You watch Tri-City Area News, ''the best local news in your area!''"
            put "The news starts..."
            put "TCAN >> Good whatever it is. I'm Alan Normstormm, and here's the news."
            put "TCAN >> A local elderly woman was not freaked out or killed on her dog walk today. That's good I guess."
            put "TCAN >> Protesters surround Pineapple Burger for what... the sixth day now?"
            put "TCAN >> That giant metal beast is still visible in the distance. Estimates say that it will arrive in town on Tuesday."
            put "TCAN >> That's all for today, I guess... I'm not sure since my script isn't very clear. Who wrote this?"
            put "TCAN >> Also, don't forget to enter in YYZ-TCAN's contest, where you could win a trip to Er-Uhh-Pin-Plop Island!"
            put "Oh boy! A contest! That sounds like fun! What will you do now?"
            put "Sign up for that contest! [103]"
            put "Watch Democratic People's Republic of North Dakota State-Run TV[64]"
            put "Watch NTV [65]"
            put ""
            get input
        end if

        if input = 67 then
            put ""
            put "Oh boy... you're intha... metal thing...y"
            put "Meda... medical boy.. medical bay... ugh..."
            put "The very nice person who rolled you in's mouth is moving but it's hard to hear him."
            put "Very Nice Person >> Hell...! He...! Can you he...? Are you aller... ...dicine?"
            put "Very Nice Person >> Wha.. yo... ...me?"
            put "You scream out ''ARRRRRGGGGGG MY FOOOOOOOOOOOOOOOOOOOT!''"
            put "You hear rumbling... and feel shaking..."
            put "Very Nice Guy >> We ha... ...o time! Give 'em 100cc's of..!"
            put "You fall asleep. Type [104] to continue."
            put ""
            get input
        end if

        if input = 68 then
            put ""
            put "Woah, you got a big appetite, eh?"
            put "So you order that abomination of food-kind and are told that you can sit down and wait for your food because it could be a while."
            put "Where will you sit?"
            put "Table [105]"
            put "Booth [106]"
            put "My order was to-go! [107]"
            put ""
            get input
        end if

        if input = 69 then
            put ""
            put "You look around quickly and rush to the bathroom."
            put "When you get inside the bathroom, there is a stall and a urinal. That's kinda... odd for a family bathroom..."
            put "Where will you go?"
            put "Urinal [108]"
            put "Stall [109]"
            put "I'm not sure... [110]"
            put ""
            get input
        end if

        if input = 70 then
            put ""
            put "So your legs are tired, eh? You walk over to the seating area."
            put "Where will you sit?"
            put "On second thought, I'll sit on the toilet in the bathroom [69]"
            put "Table [105]"
            put "Booth [106]"
            put ""
            get input
        end if

        if input = 71 then
            put ""
            put "You choose to chase the bus, but how will you do that?"
            put "RUN FOR THE BUS!!!! AHHHHHHHHHHHHHHH! [53]"
            put "RUNRUNRUNRUNRUNRUN! [54]"
            put ""
            get input
        end if

        if input = 72 then
            put ""
            put "You're gonna wait!? This is a ''video''game, not a ''waiting'' game"
            put "(Actually, this is a choose your own adventure story, but who cares?"
            put "You wait for the bus"
            for i : 0 .. 60
                put "." ..
                delay (500)
            end for
            put "What will you do now?"
            put "Keep waiting... [111]"
            put "Go to Taco Hut [44]"
            put ""
            get input
        end if

        if input = 73 then
            put ""
            put "You go outside with fingers almost ripped off."
            put "The gentle breeze burns what is left of your hand."
            put "What will you do?"
            put "GO TO THE HOSPITAL!!! AHHHH! [112]"
            put "Call 911! [113]"
            put "CALL 911 AND DROP THE BASS! [114]"
            put "Wave at the lady who is about to walk past you [115]"
            put ""
            get input
        end if

        if input = 74 then
            %put "rdr to 44"
            input := 44
        end if

        if input = 75 then
            put ""
            put "You give the strange mushroom man your coat."
            put "Mushroom Man >> Thank you! Follow me to your table for... one!"
            put "You follow the Mushroom Man through the restaurant. The restaurant is decorated similarly to a videogame you know."
            put "The Mushroom Man pulls out a chair for you to sit on and just as you do, he gives you a menu."
            put "(Heh, it's like there's ''two'' of them)"
            put "Mushroom Man >> What would you like to order?"
            put "Spaghetti [116]"
            put "Spaghetti [116]"
            put "Spaghetti [116]"
            put ""
            get input
        end if

        if input = 76 then
            put ""
            put "You tell the strange man that you'll keep your coat."
            put "Mushroom Man >> Oh OKAY then... Follow me to your table."
            put "You follow the Mushroom Man through the restaurant. The restaurant is decorated similarly to a videogame you know. He brings you to a table."
            put "Mushroom Man >> SIT DOWN."
            put "He forcefully gives you a menu."
            put "Mushroom Man >> ORDER SOMETHING OR GET OUT."
            put "Order spaghetti [116]"
            put "'I have to go to the bathroom' [117]"
            put "Leaveleaveleave [118]"
            put ""
            get input
        end if

        if input = 77 then
            put ""
            put "You leave Pineapple Burger."
            put "Where will you go now?"
            put "Bus Stop [49]"
            put "Taco Hut [50]"
            put "Mario & Luigi's Spinnin' Spaghetti Diner [51]"
            put ""
            get input
        end if

        if input = 78 then
            put ""
            put "You ignore the obvious facts and grab a sign to protest."
            put "There is a person on the roof of the restaurant chanting, wanting everyone else to chant."
            put "Protester on the roof >> Repeat after me!"
            put "Protester on the roof >> PINE-APPLES MA-TTER!"
            put "What will you do?"
            put "Chant ''PINE-APPLES MA-TTER!'' [119]"
            put "Chant '' PINEAPPLES MATTER!'' [120]"
            put "Scream ''Wait!'' [121]"
            put "Leave the protesters [122]"
            put ""
            get input
        end if

        if input = 79 then
            put ""
            put "You tell those ''dumb'' pineapples that they're dumb and that they should have never advanced to where they are now in society."
            put "The pineapples turn around and jump on you to attack you."
            put "They aren't very strong because they pineapples but they put up a good fight."
            put "There are ten pineapples on you. What will you do?"
            put "Give up, I won't win... [123]"
            put "Spin around to get them off! [124]"
            put "Stop, drop, and roll! [125]"
            put ""
            get input
        end if

        if input = 80 then
            put ""
            put "So now you are headed to Florida, with a bus full of old people..."
            put "You sit at the back of the bus and slump in your seat, unsure of when you can get back home."
            put "Some old people are talking to you."
            put "Old Lady 1 >> Would you like some butterscotch candy?"
            put "Old Man >> WHE'ARR ME DEN-CHAS!?"
            put "Old Lady 2 >> Who wants to play bus bingo!?"
            put "Who will you talk to?"
            put "Old Lady 1 [126]"
            put "Old Lady 2 [127]"
            put "Old Man [128]"
            put ""
            get input
        end if

        if input = 81 then
            put ""
            put "You start to wave your hands and yell to get the bus driver to pull over."
            put "The old man driving the bus peeks his head out of the window to look at you running and chasing the bus."
            put "Bus Driver >> WHADDA WANT KIDDO?"
            put "PULL OVER!!! [129]"
            put "STOP!!! [130]"
            put "AHHHHHHHHHHHHHHHHHHHHHHHHHHHHH!!! [131]"
            put ""
            get input
        end if

        if input = 82 then
            put ""
            put "You say screw it and walk to Taco Hut."
            for i : 1 .. 5
                put "." ..
                delay (1000)
            end for
            input := 44
        end if

        if input = 83 then
            put ""
            put "OH MAN OH JEEZ"
            put "WHAT WILL YOU DO NOW!?"
            put "OH MAN OH JEEZ [132]"
            put "THROW SOMETHING AT THE COPPERS! [84]"
            put "TAKE 'EM OFF COURSE! [85]"
            put "PULL OVER [86]"
            put ""
            get input
        end if

        if input = 84 then
            put ""
            put "THROW SOMETHING AT THE COPPERS. THAT'S A GREAT IDEA!"
            put "YOU LOOK AROUND THE CAR AND FIND SOME THINGS YOU COULD THROW OUT THE WINDOW."
            put "WHAT WILL YOU THROW AT THE COPPERS?"
            put "PINEAPPLE! [133]"
            put "ROCK! [134]"
            put "CHAIR! [135]"
            put ""
            get input
        end if

        if input = 85 then
            put ""
            put "TAKE 'EM OFF COURSE! THAT'S A GREAT IDEA!"
            put "YOU DRIVE OVER A BRIDGE AND TURN LEFT INTO A WOODED AREA."
            put "AS YOU DRIVE THROUGH THE FOREST, YOU HIT MANY TREE BRANCHES."
            put "YOU HEAD NEAR A CROSSROADS. WHICH WAY WILL YOU TURN?"
            put "LEFT! [136]"
            put "RIGHT! [137]"
            put "I DON'T KNOW! [138]"
            put ""
            get input
        end if

        if input = 86 then
            put ""
            put "PULL OVER? ARE YOU OUT OF YOUR MIND!?"
            put "YOU CAN'T QUIT SO EARLY! UGH, FINE..."
            put "YOU PULL OVER ON THE SIDE OF A BRIDGE, BUT INSTEAD OF THE COPS PULLING OVER BEHIND YOU, THEY DRIVE OFF THE BRIDGE!"
            put "I GUESS THAT WORKED OUT FOR THE BEST...?"
            put "WHAT WILL YOU DO NOW THAT YOU ARE FREE?"
            put "TACO HUT!!! [140]"
            put "HELP THE COPS WHO ARE IN THE RIVER! [141]"
            put "TURN MYSELF IN! I'M A BAD PERSON! [142]"
            put ""
            get input
        end if

        if input = 87 then
            put ""
            put "But they're not even a bank, they're a credit union!"
            put "(And a local one too!)"
            put "How could you do such a thing!?"
            put "If you say so, you walk to the credit union and enter."
            put "You >> THIS IS A BANK ROBBERY! GIMME ALL YOUR MONEY"
            put "Teller >> Sir, this is a credit union...:"
            put "(Aww poo, she's right! What will you do now?)"
            put "Say ''I mean, THIS IS A CREDIT UNION ROBBERY!'' [143]"
            put "Say ''But saying that it's a credit union robbery doesn't give the same effect...'' [144]"
            put "Smash your baseball bat on the ground and say ''GIMME YOUR MONEY!'' [145]"
            put ""
            get input
        end if

        if input = 88 then
            put ""
            put "First Bank of Pineappleia? Very nice! Good rates AND they have a bowl of lollipops at every teller!"
            put "You get there and point the end of the bat at the teller, who is a pineapple."
            put "You >> GIMME ALL YOUR MONEY!!!"
            put "Pineapple Teller >> ..."
            put "You >> ..."
            put "Pineapple Teller >> ..."
            put "(Darn, she's a tough customer! What will you do?)"
            put "Give to what she said [147]"
            put "Refuse [148]"
            put ""
            get input
        end if

        if input = 89 then
            put ""
            put "You go to Silverman Sacs, the rich people bank, I bet they have a lot of money!"
            put "You walk up to the enterance, and then a though comes up."
            put "These people are rich... and sophistiated! Maybe I should try to blend in with them instead of robbing them as normal."
            put "How will you rob this place?"
            put "In a sophisticated matter! [149]"
            put "ROB THEM AS NORMAL! ROB THEM AS NORMAL! [150]"
            put "ROB THEM AS NORMAN! ROB THEM AS NORMAN! [151]"
            put "PONZI SCHEME THEM! [152]"
            put ""
            get input
        end if

        if input = 90 then
            put ""
            put "Yes! Digital Media! You decide to pirate the LoofahJoe episode ''Pie Delivery''"
            put "You decide to watch some of the episode while you torrent it."
            put "LoofahJoe >> Greasy Burger pie is the pie for you and meeeeee!!!"
            put "Octopus >> Back it up Loofah!"
            put "LoofahJoe >> Look Octopus! A rock! The settlers used to ride these babies for miles!"
            put "The download ends. You also decide to download some me-mes."
            put "Rare frog, check. Purple guy, check. WHAT IS THAT!?, check."
            put "Then, you hear a knock at the door. What will you do?"
            put "Let's see who that is! [153]"
            put "NO! I'M BUSY WITH MY ME-MES [154]"
            put ""
            get input
        end if

        if input = 91 then
            put ""
            put "Tacos? Okay then, let's steal some tacos!"
            put "You make your way to the Interntional Taco Vault, which suprisingly isn't too far from your house."
            put "I think you went here on a school field trip once, didn't you?"
            put "You go in and try to be ''cool'' when doing it."
            put "You walk up to the clerk behind the table."
            put "You >> Yeah, hi umm... I'm here to withdrawl some... tacos..."
            put "Clerk >> Can I see some ID?"
            put "''My ID!? I'M JUST HERE TO TAKE SOME TACOS!'' [155]"
            put "''Oh, my ID? Yeah, let me... just... grab... it...'' [156]"
            put "EXITEXITEXIT [157]"
            put ""
            get input
        end if

        if input = 92 then
            put ""
            put "You decide to steal a pineapple from city hall, it's filled with them! Who will notice if you steal one?"
            put "You sneak inside city hall and stumble upon the mayor's office. You peek inside and see that there is a         pineapple on the office chair."
            put "(It's on the chair for a reason, THAT MEANS IT HAS VALUE!)"
            put "You sneak in and do a cool summersault before grabbing the pineapple and sneaking out."
            put "(I wish someone saw my summersault D: )"
            put "When you get to your house and hide the pineapple, you notice that it moves around a lot..."
            put "You don't think... you kidnapped... the mayor...?"
            put "HOW COULD YOU DO SUCH A THING!? HOW DO YOU NOT KNOW THAT THE MAYOR IS A PINEAPPLE!?"
            put "You pace around the room nervously. What will you do now?"
            put "RETURN THE MAYOR [158]"
            put "DITCH HIM SOMEWHERE [159]"
            put "EAT HIM [160]"
            put "OH MAN OH JEEZ [161]"
            put ""
            get input
        end if

        if input = 93 then
            put ""
            put "Judge >> Now son, what I say what do you plead?"
            put "You >> Guilty, absolutely guilty..."
            put "Judge >> Boy, I am astounded at your honesty. I will reduce your sentance from 5 minutes to 2 minutes and 30    seconds."
            put "You are escorted out of the court and into prision. Your sentance begins."
            for i : 1 .. 150
                put "." ..
                delay (1000)
            end for
            put ""
            put "A prision guard comes to your cell and unlocks it. You are free now."
            put "Where will you go now?"
            put "Home [162]"
            put "Taco Hut, I crave tacos [163]"
            put "The Cemetary [164]"
            put ""
            get input
        end if


    end loop
end loop
