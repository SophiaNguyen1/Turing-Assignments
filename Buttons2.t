%May 11, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program runs a "guessing game" where the user tries to guess a randomized number between 10 and 30.

%Sets the screen
import GUI
var mainWindow := Window.Open ("position:300;200,graphics:640,400")

%Declaration Section
var mainMenuButton, newGameButton, tryAgainButton, quitButton : int := 0
var number : int
var guess : int := 0
var tries : int := 3

%Forward procedures
forward procedure mainMenu

%Randomized Number Selector
procedure randNum
    randint (number, 10, 30)
end randNum

%Program Title
proc title
    cls
    put "" : 17, "Guessing Game"
    put ""
end title

%Pause Program
procedure pauseProgram
    var reply : string (1)
    put " "
    put "Press any key to continue..." ..
    getch (reply)
end pauseProgram

%Error Windows
procedure error (errorNumber : int)
    var errorWindow := Window.Open ("position:300;450,graphics:640,150")
    Window.Hide (mainWindow)
    Window.Show (errorWindow)
    %error outputs
    if errorNumber = 1 then
	title
	put "Error! Please guess a number between 10 and 30."
	put "Press any key to try again."
    end if
    loop
	exit when hasch
    end loop
    Window.Show (mainWindow)
    Window.Close (errorWindow)
end error

%Program Introduction Screen
procedure introduction
    title
    mainMenuButton := GUI.CreateButton (275, 150, 0, "Main Menu", mainMenu)
    randNum
    locate (3, 1)
    put "See if you can guess a randomized number between ten and thirty!"
    put "You have three tries to guess the number."
end introduction

%User Input
procedure userInput
    title
    %text
    locate (5, 1)
    put "Enter a number between 10 and 30: " ..
    get guess
end userInput

%Processing & Output
procedure display
    GUI.Hide (tryAgainButton)
    GUI.Hide (newGameButton)
    GUI.Hide (quitButton)
    loop
	userInput
	%outputs using an if structure
	if guess < 10 or guess > 30 then
	    error (1)
	elsif guess < number then
	    %number of tries decreases
	    tries := tries - 1
	    %output
	    put "Sorry. Your guess, ", guess, ", is not correct. Your guess is too low."
	    put "You can guess ", tries, " more time(s)."
	elsif guess > number then
	    %number of tries decreases
	    tries := tries - 1
	    %output
	    put "Sorry. Your guess, ", guess, ", is not correct. Your guess is too high."
	    put "You can guess ", tries, " more time(s)."
	end if
	if guess = number then
	    %output
	    put "Congratulations! Your guess, ", guess, ", is correct! You guessed the randomized number, ", number, ", within 3 tries."
	    mainMenuButton := GUI.CreateButton (450, 110, 0, "Main Menu", mainMenu)
	elsif tries = 0 then
	    %output
	    put "Sorry, you did not correctly guess the number within 3 tries."
	    put "The randomized number was ", number, "."
	    mainMenuButton := GUI.CreateButton (450, 110, 0, "Main Menu", mainMenu)
	end if
	pauseProgram
	exit when guess = number or tries = 0
    end loop
end display

%Program Main Menu
body procedure mainMenu
    title
    GUI.Hide (mainMenuButton)
    quitButton := GUI.CreateButton (300, 150, 0, "Exit", GUI.Quit)
    newGameButton := GUI.CreateButton (285, 200, 0, "New Game", display)
    tryAgainButton := GUI.CreateButton (287, 250, 0, "Try Again", display)
    %tries reset
    if tries = 0 or guess = number then
	tries := 3
	%random number generates again
	randNum
    end if
end mainMenu

%Program ending screen
procedure goodbye
    title
    %programmer name
    put "" : 9, "Thanks for using my program!"
    put "" : 9, "Programmed by Sophia Nguyen."
    delay (3000)
    Window.Close (mainWindow)
    GUI.Quit
end goodbye

%Main Program
introduction
loop
    exit when GUI.ProcessEvent
end loop
goodbye
%End Program

