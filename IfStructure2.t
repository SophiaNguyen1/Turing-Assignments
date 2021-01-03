%April 20, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program determines the level of your average of two tests.

%Declaration Section
var testMark1, testMark2 : int

%Program Title
procedure title
    locate (1, 32)
    put "Level Achievement"
end title

%Program introduction
procedure introduction
    title
    locate (3, 1)
    put "This program will determine the level of a test average."
end introduction

%User Input
procedure userInput
    locate (5, 1)
    put "Please enter your first test mark (out of 100): " ..
    get testMark1
    put "Please enter the second test mark (out of 100): " ..
    get testMark2
end userInput

%Processing & Output
procedure display
    var average : real
    %Average Calculation
    average := (testMark1 + testMark2) / 2
    %Output using an if structure
    locate (8, 1)
    if average >= 80 then
	put average, " means you got a Level 4!"
	put "That's excellent!"
    elsif average >= 70 then
	put average, " means you got a Level 3!"
	put "That's good!"
    elsif average >= 60 then
	put average, " means you got a Level 2!"
    elsif average >= 50 then
	put average, " means you got a Level 1!"
    elsif average >= 0 then
	put average, " means you did not get a Level 1!"
    else
    end if
end display

%Main program
introduction
userInput
display
%End program
