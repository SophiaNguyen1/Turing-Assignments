%May 9, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program runs a "guessing game" where the user tries to guess a randomized number between 10 and 30.

%Sets the screen
import GUI
var mainWindow := Window.Open ("position:300;200,graphics:640,400")

%Declaration Section
var choice : string
var number : int
var guess : int := 0
var tries : int := 3

%Randomized Number Selector
procedure randNum
    randint (number, 10, 30)
end randNum

%Program Title
procedure title
    cls
    put "" : 25, "Guessing Game"
    put ""
end title

%Program Pause
procedure pauseProgram
    var reply : string (1)
    put ""
    put "Press any key to continue...." ..
    getch (reply)
end pauseProgram

%Error Windows
procedure error (errorNumber : int)
    var errorWindow := Window.Open ("position:300;450,graphics:640,150")
    Window.Hide (mainWindow)
    Window.Show (errorWindow)
    if errorNumber = 1 then
	title
	put "Error! Please guess a number between 10 and 30."
	pauseProgram
    else
	title
	put "Error! Please enter either 1 or 2."
	pauseProgram
    end if
    Window.Show (mainWindow)
    Window.Close (errorWindow)
end error

%Program Introduction
procedure introduction
    title
    randNum
    locate (3, 1)
    put "See if you can guess a randomized number between ten and thirty!"
    put "You have three tries to guess the number."
    pauseProgram
end introduction

procedure mainMenu
    title
    %tries reset
    if tries = 0 then
	tries := 3
    end if
    %text
    put "1. Play Game"
    put "2. Exit"
    put "Enter 1 or 2 : "
    get choice
    %error using an if structure
    if choice not= "1" then
	if choice not= "2" then
	    error (2)
	    %repeat the main menu
	    mainMenu
	end if
    end if
end mainMenu

%User Input
procedure userInput
    title
    %text
    locate (5, 1)
    put "Enter a number between 10 and 30: " ..
    get guess
    %error using an if structure
    if guess < 10 or guess > 30 then
	error (1)
	%repeat the user input
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
	put "Sorry. Your guess, ", guess, ", is not correct. Your guess is too low."
	put "You can guess ", tries, " more time(s)."
    elsif guess > number then
	%number of tries left decreases
	tries := tries - 1
	put "Sorry. Your guess, ", guess, ", is not correct. Your guess is too high."
	put "You can guess ", tries, " more time(s)."
    elsif guess = number then
	put "Congratulations! Your guess, ", guess, ", is correct! You guessed the randomized number, ", number, ", within 3 tries."
    end if
    if tries = 0 then
	put "Sorry, you did not correctly guess the number within 3 tries."
	put "The randomized number was ", number, "."
	%random number generates again
	randNum
    end if
    pauseProgram
end display

%Ending Outputs
procedure goodbye
    title
    %programmer name
    put ""
    put "Programmed by Sophia Nguyen."
    pauseProgram
    Window.Close (mainWindow)
end goodbye

%Main Program
introduction
loop
    mainMenu
    exit when choice = "2"
    userInput
    display
end loop
goodbye
%End Program
