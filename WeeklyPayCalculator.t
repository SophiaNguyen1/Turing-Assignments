%May 1, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program calculates your weekly pay depending on your wage and hours worked.
colorback (94)
%Declaration Section
var choice : string
var hours : int
var wage : real

%Program Title
procedure title
    cls
    put "" : 29, "Weekly Pay Calculator"
    put ""
end title

%Program Pause
procedure pauseProgram
    var reply : string (1)
    put ""
    put "" : 26, "Press any key to continue..." ..
    getch (reply)
end pauseProgram

%Program Introduction
procedure introduction
    title
    put " Use this program to calculate your weekly pay based on your wage per hour and"
    put "" : 29, "hours worked per week."
    put ""
    put "Please note that if you worked over 40 hours, it will be counted as overtime and"
    put "" : 7, "you will be paid 1.5 times your normal wage for your extra hours."
    %graphics
    %left money pile
    drawfillbox (100, 100, 220, 150, green)
    %top of left money pile
    drawfillbox (100, 180, 220, 150, 70)
    %right money pile
    drawfillbox (180, 20, 300, 70, green)
    %top of right money pile
    drawfillbox (180, 100, 300, 70, 70)
    %two gold coin piles
    for i : 0 .. 100
	%left coin pile
	drawfilloval (650, 100 + i, 10, 10, 43)
	%right coin pile
	drawfilloval (700, 80 + i, 10, 10, 43)
    end for
    %top of left gold coin pile
    drawfilloval (650, 202, 10, 8, 14)
    %top of right gold coin pile
    drawfilloval (700, 182, 10, 8, 14)
    %clock edge
    drawfilloval (400, 140, 50, 50, 23)
    %clock face
    drawfilloval (400, 140, 45, 45, white)
    %clock center
    drawfilloval (400, 140, 5, 5, 25)
    %clock minute hand
    drawfillbox (398, 140, 402, 180, 21)
    %clock hour hand
    drawfillbox (400, 137, 430, 142, 21)
    pauseProgram
end introduction

%Main Menu
procedure mainMenu
    title
    put "" : 25, "1. Calculate your weekly pay!"
    put "" : 37, "2. Exit"
    put ""
    put "" : 24, "Enter 1 or 2 to proceed or exit. " ..
    get choice
    if choice not= "1" then
	if choice not= "2" then
	    put "Error! Please enter either 1 or 2."
	    pauseProgram
	    mainMenu
	end if
    end if
end mainMenu

%User Input
procedure userInput
    title
    put "" : 17, "Please enter your wage per hour (in dollars). " ..
    get wage
    %error outputs using an if structure
    if wage < 0 then
	put "" : 19, "Error. Please put a wage that is positive."
	pauseProgram
	%repeat the userInput
	userInput
    end if
    put "" : 10, "Please enter the number of full hours you worked this week. " ..
    get hours
    %error outputs using an if structure
    if hours < 0 then
	put "" : 18, "Error. Please put a number that is positive."
	pauseProgram
	%repeat the userInput
	userInput
    elsif hours > 168 then
	put "Error. You cannot have worked more than 168 hours per week. That's not possible."
	pauseProgram
	%repeat the userInput
	userInput
    end if
end userInput

procedure display
    title
    var pay : real
    pay := hours * wage
    if hours > 40 then
	pay := 40 * wage + (hours - 40) * wage * 1.5
    end if
    put ""
    put "Your weekly pay when you worked ", hours, " hours and with a wage of $", wage, " per hour is: "
    put "$", pay, "."
    put ""
    pauseProgram
end display

%Ending Outputs
procedure goodbye
    title
    %programmer name
    put ""
    put "" : 15, "Thanks for using my weekly pay calculator program!"
    put ""
    put "" : 26, "Programmed by Sophia Nguyen."
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

