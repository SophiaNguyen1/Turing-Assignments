%May 5, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program shows 3 identical squares of different colours and the user can click on one of them to display the name of the colour.

%Declaration Section
var exitButton : boolean := false
var rangeX, rangeY, button : int

%Program Title
procedure title
    cls
    put "" : 30, "Three Square Colours"
end title

%Program Introduction
procedure intro
    title
    put "" : 18, "This program shows three identical squares."
    put "" : 5, "Click inside one of the squares and the program will name the colour."
end intro

%User Input
procedure userInput
    %draws a purple exit button
    drawfillbox (350, 60, 430, 100, 80)
    locate (21, 38)
    var Font1 : int
    Font1 := Font.New ("Calibri:15")
    Draw.Text ("Exit", 375, 75, Font1, blue)
    %draws a blue box
    drawfillbox (70, 270, 150, 350, 77)
    %draws a green box
    drawfillbox (350, 270, 430, 350, 93)
    %draws a pink box
    drawfillbox (630, 270, 710, 350, 89)
    mousewhere (rangeX, rangeY, button)
    locate (14, 37)
    if button = 1 then
	if (rangeX >= 70 and rangeX <= 150) and (rangeY >= 270 and rangeY <= 350) then
	    put "Blue!"
	elsif (rangeX >= 350 and rangeX <= 430) and (rangeY >= 270 and rangeY <= 350) then
	    put "Green!"
	elsif (rangeX >= 630 and rangeX <= 710) and (rangeY >= 270 and rangeY <= 350) then
	    put "Pink!"
	elsif (rangeX >= 350 and rangeX <= 430) and (rangeY >= 60 and rangeY <= 100) then
	    exitButton := true
	end if
	delay (500)
	intro
    end if
end userInput

procedure goodbye
    title
    put ""
    put ""
    put "" : 26, "Thanks for using my program!"
    put "" : 26, "Programmed by Sophia Nguyen."
end goodbye

%Main Program
intro
loop
    userInput
    exit when exitButton = true
end loop
goodbye
%End Program
