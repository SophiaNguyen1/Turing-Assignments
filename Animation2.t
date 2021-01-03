%May 20, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program displays a blue box which the user can move with the four arrow keys.

%Declaration Section
var startpointx, startpointy : int := 0
var endpointx, endpointy : int := 50
var key : string (1)

%set screen mode and size
setscreen ("graphics:400;400")
setscreen ("noecho")
setscreen ("nocursor")
setscreen ("offscreenonly")

%user input, processing, and output
procedure display
    %draws the box
    drawfillbox (startpointx, startpointy, endpointx, endpointy, white) %erase
    drawfillbox (startpointx + 1, startpointy + 1, endpointx - 1, endpointy - 1, blue) %draw
    getch (key)
    %moves the box based on user input using an if statement
    if key = chr (200) then
	%moves the box up
	startpointy := startpointy + 1
	endpointy := endpointy + 1
    elsif key = chr (208) then
	%moves the box down
	startpointy := startpointy - 1
	endpointy := endpointy - 1
    elsif key = chr (205) then
	%moves the box right
	startpointx := startpointx + 1
	endpointx := endpointx + 1
    elsif key = chr (203) then
	%moves the box left
	startpointx := startpointx - 1
	endpointx := endpointx - 1
    end if
    View.Update
    %prevents box from leaving the screen using an if statement
    if startpointx < 0 then
	%prevents box from going off the left side of the screen
	startpointx := startpointx + 1
	endpointx := endpointx + 1
    elsif endpointx > 400 then
	%prevents box from going off the right side of the screen
	endpointx := endpointx - 1
	startpointx := startpointx - 1
    elsif startpointy < 0 then
	%prevents box from going off the bottom side of the screen
	startpointy := startpointy + 1
	endpointy := endpointy + 1
    elsif endpointy > 400 then
	%prevents box from going off the top side of the screen
	endpointy := endpointy - 1
	startpointy := startpointy - 1
    end if
    View.Update
end display

%Main Program
loop
    display
    exit when key = chr (27)
end loop
%End Program
