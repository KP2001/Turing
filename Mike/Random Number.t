var input, clear: string
var x, y, number : int
var input1: string (1)

%Sets the tittle, size, and position of the run window
View.Set ("title: Michael's Random Number Program")
View.Set ("graphics:500;115,nobuttonbar,position:centre;middle")


loop
    put "This program will select a random number for you."
    put ""

    %Lets user enter lower range and then makes sure that the value is an integer
    loop
        put "Enter lowest number: " ..
        get input : *
        exit when strintok (input)
        put "That isnt a number, or is simply too long for the computer."
        put ""
    end loop

    %Converts the lower range into an interger (from a string)
    x := strint (input)

    %Lets user enter higher range and makes sure that the value is an integer
    loop
        put ""
        loop
            put "Enter highest number: " ..
            get input : *
            exit when strintok (input)
            put ""
            put "That isnt a number, or is simply too long for the computer."
            put ""
        end loop

        %Converts the higher range into an iteger if it is higher then the lower range value
        y := strint (input)
        exit when y > x
        put ""
        put "Error! Highest number must be higher then lowest number"
    end loop

    %Selects a random number
    put ""
    randint (number, x, y)
    put "Your random number is ", number

    %Removes cursor for getch command
    setscreen("nocursor")

    %Aks user wheter they want to restart the program
    loop
        put ""
        put "Do you wish to select a new random number?(y/n) " ..
        getch (input1)
        put input1
        exit when input1 = "y" or input = "n"
        put ""
        put "Error! Invalid input"
    end loop
    
    %Re-enables the cursor
    setscreen("cursor")
    
    %Quits(or loops) the program
    if input = "n" then
        return
    end if
    put ""
end loop

