%Declaration Section
var guess : int
%Program Title
procedure title
    cls
    locate (1, 33)
    put "Guessing Game"
    put ""
end title
%Program introduction
procedure introduction
    title
    locate (3, 1)
    put "See if you can guess a number between zero and ten!"
end introduction
%User Input
procedure userInput
    title
    locate (5, 1)
    put "Enter a number between 0 and 10: " ..
    get guess
end userInput
%Processing & Output
procedure display
    var answer : int := 8
    title
    put "Too high!"
    put "Too low!"
    put "Right on!"
end display
%Main Program
introduction
userInput
display
%End Program
