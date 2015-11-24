%Initialize the Screen Size
setscreen ("Position:TrueMiddle,Centre,Graphics:640;400")

%Define the Game Variables
var X, Y : int
var xInc, yInc : int
var dotX, dotY : int
var dotsMade : int := 0
var keyPressed : string (1)
var dotListX : array 0 .. 10240 of int
var dotListY : array 0 .. 10240 of int

var highScore : int := 0
var highCollected : int := 0
var readInt : int

%Save File Variables
var savedScore : int
var savedCollected : int
var gameDirectory : string := Dir.Current

%Define the Player Variables
var playerScore : int := 0
var playerCollected : int := 0

%Define our Font Variable
var customFont : int
customFont := Font.New ("Arial:11")

%Set the Variable Values
X := 320
Y := 200
xInc := 0
yInc := 10

%Procedure for Generating a Random Starting Position for the Dot
procedure generateDot
    loop
        randint (dotX, 2, 65)
        randint (dotY, 2, 40)

        dotX *= 10
        dotY *= 10

        exit when whatdotcolour (dotX, dotY) = white and dotX < 620 and dotY < 380
    end loop
end generateDot

%Procedure to Check for Directories & Files
procedure initGame
    if Dir.Exists (gameDirectory + "\\" + "Snake") = false then
        Dir.Create ("Snake")
        Dir.Create ("Snake" + "\\data")
    end if

    if File.Exists ("Snake\\data\\topScore.txt") = false and File.Exists ("Snake\\data\\topCollected.txt") = false then
        open : savedScore, "Snake\\data\\topScore.txt", put
        put : savedScore, 0

        close : savedScore

        open : savedCollected, "Snake\\data\\topCollected.txt", put
        put : savedCollected, 0

        close : savedCollected
    end if

%Store the File Values into the Variables
    open : savedScore, "Snake\\data\\topScore.txt", get
    get : savedScore, readInt

    highScore := readInt

    close : savedScore

    open : savedCollected, "Snake\\data\\topCollected.txt", get
    get : savedCollected, readInt

    highCollected := readInt

    close : savedCollected

end initGame

%Procedure to Save the Player Score
procedure saveScore (playerScore : int)
    open : savedScore, "Snake\\data\\topScore.txt", put
    put : savedScore, playerScore

    close : savedScore
end saveScore

%Procedure to Save the Player Collected
procedure saveCollected (playerCollected : int)
    open : savedCollected, "Snake\\data\\topCollected.txt", put
    put : savedCollected, playerCollected

    close : savedCollected
end saveCollected

%Draw the Border around the Screen
Draw.Box (20, 20, 620, 380, black)
Draw.Fill (5, 5, black, black)

%Game Initializing Procedures
initGame
generateDot

%Draw the Dot in a Random Area on the Screen
Draw.FillOval (dotX, dotY, 5, 5, green)

loop
    loop %Main Game Loop
        exit when whatdotcolour (X, Y) not= white and whatdotcolour (X, Y) not= green %Exit the Loop only if the Player Dies

        if whatdotcolour (X, Y) = green then %If the Player Collects the Dot
            playerScore += 100 %Add 100 Points
            playerCollected += 1

            loop %Generate a New X, Y Coordinate for the Dot
                generateDot

                exit when whatdotcolour (dotX, dotY) = white
            end loop

            Draw.FillOval (dotX, dotY, 5, 5, green) %Draw the Dot in a Random Area on the Screen
        end if

        Draw.FillOval (X, Y, 5, 5, blue) %Draw the Blue Dot to indicate the Line

        dotsMade += 1 %Add the Dot Count
        dotListX (dotsMade - 1) := X
        dotListY (dotsMade - 1) := Y

        X += xInc
        Y += yInc

        playerScore += 1 %Add the Player Score

        Draw.Text ("Score: " + intstr (playerScore), 30, 385, customFont, white)
        Draw.Text ("Collected: " + intstr (playerCollected), 125, 385, customFont, white)

        Draw.Text ("Top Score: " + intstr (highScore), 350, 385, customFont, white) %Display Top Scores
        Draw.Text ("Top Collected: " + intstr (highCollected), 500, 385, customFont, white)

        delay (100) %Speed of the Dot Line

        Draw.FillBox (25, 380, 640, 400, black)

        if hasch then %Player Game Controls
            getch (keyPressed)

            if keyPressed = chr (203) then
                xInc := -10
                yInc := 0
            elsif keyPressed = chr (208) then
                xInc := 0
                yInc := -10
            elsif keyPressed = chr (200) then
                xInc := 0
                yInc := 10
            elsif keyPressed = chr (205) then
                xInc := 10
                yInc := 0
            end if
        end if
    end loop %Game has Ended

%Check if the Score is Higher then the High Score
    if playerScore > highScore then
        saveScore (playerScore)

        Draw.Text ("New High Score! " + intstr (playerScore), 30, 5, customFont, white)
    end if

    if playerCollected > highCollected then
        saveCollected (playerCollected)

        Draw.Text ("New High Collected! " + intstr (playerCollected), 280, 5, customFont, white)
    end if

    for I : 0 .. dotsMade - 1
        Draw.FillOval (dotListX (I), dotListY (I), 5, 5, red) %Replace all Dots with a Red Dot
        Draw.FillOval (dotX, dotY, 5, 5, white) %Remove the Dot to Collect
    end for

    Draw.Text ("Score: " + intstr (playerScore), 30, 385, customFont, white) %Display Player Scores
    Draw.Text ("Collected: " + intstr (playerCollected), 125, 385, customFont, white)

    Draw.Text ("Top Score: " + intstr (highScore), 350, 385, customFont, white) %Display Top Scores
    Draw.Text ("Top Collected: " + intstr (highCollected), 500, 385, customFont, white)

    exit
end loop
