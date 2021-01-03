%Declaration Section
var first, last : string

%Program Title
procedure title
    cls
    locate (1, 29)
    put "String Testing Program"
end title

%Pause program
proc pauseProgram
    var reply : string (1)
    put ""
    put "Press any key to continue.."
    getch (reply)
end pauseProgram

%Program introduction
procedure introduction
    title
    locate (3, 1)
    put "This program will help you to understand string (text) input!"
    pauseProgram
end introduction

%User Input
procedure userInput
    title
    locate (5, 1)
    put "Enter your first name: " ..
    get first
    put "Enter your last name: " ..
    get last
end userInput

%Processing & Output
procedure display
    var fullName : string
    %String Manipulation Titles
    title
    locate (9, 30)
    put "Playing With Strings"
    locate (11, 35)
    put "First name: ", first
    locate (12, 35)
    put "Last name: ", last
    %String Concatenation
    fullName := first + " " + last
    locate (14, 35)
    put "First name + last name = ", fullName
    %Using strings in output statements
    locate (16, 35)
    put "Your full name is:  ", fullName
    %Manipulating Characters in a string
    locate (18, 35)
    put "Your initials are: ", first (1) + last (1)
    %String length command
    locate (20, 35)
    put "Your name is ", length (first), " characters long."
    pauseProgram
end display

%Main Program
introduction
loop
    userInput
    display
    exit when first = "quit"
end loop
%End of Program
