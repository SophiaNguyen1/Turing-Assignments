%June 20, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program calculates the time it takes to mark ISP's.

%sets screen up
import GUI

%forward procedures
forward procedure mainMenu
forward procedure calculate
forward procedure draw

%variable declarations
var mainMenuButton : int := 0
var calculateButton : int := 0
var drawButton : int := 0
var exitButton : int := 0
var mainWindow := Window.Open ("graphics:640,400")

%title
procedure title
    cls
    put "" : 20, "ISP Marking Time Calculator"
end title

%introduction
procedure introduction
    title
    put "Welcome to the ISP Marking Time Calculator."
    put "You can enter information to calculate the amount of time in days it will take Ms. Krasteva to mark ISP's or see an animation of Ms. Krasteva."
    put "This program will also remind Ms. Krasteva to mark faster to meet deadlines."
    mainMenuButton := GUI.CreateButton (250, 20, 0, "Main Menu", mainMenu)
end introduction

%main menu
body procedure mainMenu
    title
    GUI.Hide (mainMenuButton)
    calculateButton := GUI.CreateButton (250, 200, 0, "Calculate", calculate)
    drawButton := GUI.CreateButton (250, 150, 0, "Draw", draw)
    exitButton := GUI.CreateButton (250, 100, 0, "Exit", GUI.Quit)
end mainMenu

body procedure draw
    title
    GUI.Hide (calculateButton)
    GUI.Hide (drawButton)
    GUI.Hide (exitButton)
    %draw and animates face moving down
    for i : 0 .. 300
	drawfilloval (100, 500 - i, 101, 101, 0) %erase
	drawfilloval (100, 500 - i, 100, 100, yellow) %draw face
	drawfilloval (75, 550 - i, 5, 5, black) %left eye
	drawfilloval (125, 550 - i, 5, 5, black) %right eye
	drawfilloval (100, 500 - i, 3, 3, red) %nose
	drawline (75, 450 - i, 125, 450 - i, black) %mouth
	delay (15)
    end for
    %moves the face to the right
    for i : 0 .. 220
	drawfilloval (100 + i, 200, 101, 101, 0) %erase
	drawfilloval (100 + i, 200, 100, 100, yellow) %face
	drawfilloval (75 + i, 250, 5, 5, black) %right eye
	drawfilloval (125 + i, 250, 5, 5, black) %left eye
	drawfilloval (100 + i, 200, 3, 3, red) %nose
	drawline (75 + i, 150, 125 + i, 150, black) %mouth
	delay (15)
    end for
    GUI.Show (mainMenuButton)
end draw

%user input, processing, and display
body procedure calculate
    title
    GUI.Hide (calculateButton)
    GUI.Hide (drawButton)
    GUI.Hide (exitButton)
    %variables
    var ispNumber : int
    var ispTime : real
    var days : int
    put "Input the number of ISP's to be marked:"
    get ispNumber
    if ispNumber < 1 then
	loop
	    put "Error! Please enter a positive number."
	    delay (2000)
	    get ispNumber
	    exit when ispNumber >= 1
	end loop
    end if
    put "Input the time Ms. Krasteva takes to mark one ISP in hours:"
    get ispTime
    if ispTime <= 0 then
	loop
	    put "Error! Please enter a positive number."
	    delay (2000)
	    get ispTime
	    exit when ispTime > 0
	end loop
    end if
    days := ceil (ispNumber * ispTime / 3)
    put "It will take Ms. Krasteva ", days, " days to mark ", ispNumber, " ISP's if she takes ", ispTime, " hours to mark each one."
    if days > 7 then
	put "Reminder: Ms. Krasteva should decrease her time spent doing other activities because the students need their marks before 7 days."
    end if
    GUI.Show (mainMenuButton)
end calculate

%goodbye
procedure goodbye
    title
    put "Programmed by Sophia Nguyen."
    delay (2000)
    Window.Close (mainWindow)
    GUI.Quit
end goodbye

%main program
introduction
loop
    exit when GUI.ProcessEvent
end loop
goodbye
%end program
