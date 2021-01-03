%June 21, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program runs a painting program!

%set screen
import GUI

%variable declarations
var mainWindow := Window.Open ("graphics:640;400")
var mainMenuButton : int := 0
var paintButton : int := 0
var exitButton : int := 0
var xCoord, yCoord, button : int := 0

%forward procedures
forward procedure mainMenu
forward procedure paint

procedure title
    cls
    put "" : 30, "Paint!"
end title

procedure intro
    title
    mainMenuButton := GUI.CreateButton (275, 20, 0, "Main Menu", mainMenu)
end intro

body procedure mainMenu
    title
    GUI.Hide (mainMenuButton)
    paintButton := GUI.CreateButton (300, 200, 0, "Paint", paint)
    exitButton := GUI.CreateButton (300, 100, 0, "Exit", GUI.Quit)
end mainMenu

body procedure paint
    title
    GUI.Hide (paintButton)
    GUI.Hide (exitButton)
    drawfillbox (0, 0, 100, 400, 90)
    drawfillbox (5, 360, 25, 380, red) 
    mainMenuButton := GUI.CreateButton (4, 20, 0, "Main Menu", mainMenu)
    loop
	mousewhere (xCoord, yCoord, button)
	if xCoord < 110 then
	elsif button = 1 then
	    drawfilloval (xCoord, yCoord, 3, 3, red)
	end if
    end loop
end paint

procedure goodbye
    title
    delay (2000)
    Window.Close (mainWindow)
    GUI.Quit
end goodbye

intro
loop
    exit when GUI.ProcessEvent
end loop
goodbye
