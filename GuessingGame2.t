%April 25, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program runs a "guessing game" where the user tries to guess a randomized number between 10 and 30.

%Declaration Section
var number : int
var guess : int := 0
var tries : int := 3

%Program Title
procedure title
    cls
    locate (1, 33)
    put "Guessing Game"
    put ""
end title

%Program pause
procedure pauseProgram
    var reply : string (1)
    put ""
    put "Press any key to continue...." ..
    getch (reply)
end pauseProgram

%Randomized number selector
procedure randNum
    randint (number, 10, 30)
end randNum

%Program introduction
procedure introduction
    title
    randNum
    locate (3, 1)
    put "See if you can guess a randomized number between ten and thirty!"
    put "You have three tries to guess the number."
    pauseProgram
end introduction

%User Input
procedure userInput
    title
    locate (5, 1)
    put "Enter a number between 10 and 30: " ..
    get guess
    %error outputs using an if structure
    if guess < 10 then
	put "Error. Please guess a number between 10 and 30, not lower than 10."
	pauseProgram
	%repeat the userInput
	userInput
    elsif guess > 30 then
	put "Error. Please guess a number between 10 and 30, not higher than 30."
	pauseProgram
	%repeat the userInput
	userInput
    end if
end userInput

%Processing & Output
procedure display
    title
    %outputs using an if structure
    if guess < number then
	%number of tries left decreases
	tries := tries - 1
	put "Sorry. Your guess, ", guess, ", is not correct. It is too low."
	put "You can guess ", tries, " more time(s)."
    elsif guess > number then
	%number of tries left decreases
	tries := tries - 1
	put "Sorry. Your guess, ", guess, ", is not correct. It is too high."
	put "You can guess ", tries, " more time(s)."
    elsif guess = number then
	put "Congratulations! Your guess, ", guess, ", is correct!"
    end if
    pauseProgram
end display

%Ending outputs
procedure goodbye
    title
    %outputs using an if structure
    if guess = number then
	put "Congratulations! You guessed the randomized number, ", number, ", within 3 tries."
    else
	put "Sorry, you did not correctly guess the number within 3 tries."
	put "The randomized number was ", number, "."
    end if
    %programmer name
    put ""
    put "Programmed by Sophia Nguyen."
end goodbye

%Main Program
introduction
loop
    userInput
    display
    exit when guess = number or tries = 0
end loop
goodbye
%End Program
