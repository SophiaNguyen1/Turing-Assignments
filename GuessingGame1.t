%April 21, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program runs a "guessing game" where the user tries to guess a number between 0 and 10.

%Declaration Section
var guess : int

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

%Program introduction
procedure introduction
    title
    locate (3, 1)
    put "See if you can guess a number between zero and ten!"
    pauseProgram
end introduction

%User Input
procedure userInput
    title
    locate (5, 1)
    put "Enter a number between 0 and 10: " ..
    get guess
    %error outputs using an if structure
    if guess < 0 then
	put "Error. Please guess a number between 0 and 10, not lower than 0."
	pauseProgram
	%repeat the userInput
	userInput
    elsif guess > 10 then
	put "Error. Please guess a number between 0 and 10, not higher than 10."
	pauseProgram
	%repeat the userInput
	userInput
    else
    end if
end userInput

%Processing & Output
procedure display
    %answer variable declaration
    var answer : int := 8
    title
    %outputs using an if structure
    if guess > answer then
	put "Your guess ", guess, " is too high!"
    elsif guess < answer then
	put "Your guess ", guess, " is too low!"
    elsif guess = answer then
	put "Your guess ", guess, " is right on!"
    end if
end display

%Main Program
introduction
userInput
display
%End Program
