% Declaration Section
var xCoord, yCoord, button := 0

%sets screen mode and size
setscreen ("graphics:500;500")

%Program title
procedure title
    cls
    locate (1, 34)
    put "Mouse Program"
    put " "
end title

%Program introduction
procedure introduction
    title
    locate (3, 1)
    put "This program will help you to understand how to use mouse commands in Turing"
end introduction

procedure display
    mousewhere (xCoord, yCoord, button)
    locate (6, 1)
    put "x= ", xCoord
    locate (6, 15)
    put "y= ", yCoord
    locate (6, 40)
    put "button = ", button
end display

%Main program
introduction
loop
    display
    exit when button = 1
end loop
%End of program
