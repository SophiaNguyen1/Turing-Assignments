%May 26, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program shows a cat picture that the user can move using the 4 arrow keys.

%Sets the screen up
setscreen ("graphics:640;480")
setscreen ("nocursor")
setscreen ("noecho")
setscreen ("offscreenonly")

%Declaration section
var pictureID : int
var key : string (1)
var picHeight, picWidth : int
var picX, picY : int := 0

%loads the picture
procedure initPic
    pictureID := Pic.FileNew ("cat.jpg")
    picHeight := Pic.Height (pictureID)
    picWidth := Pic.Width (pictureID)
end initPic

%user input, processing, and display
procedure displayPic
    %erase
    drawfillbox (picX - 1, picY - 1, picWidth + 1, picHeight + 1, white)
    %draws the picture
    Pic.Draw (pictureID, picX, picY, picMerge)
    %gets user input
    getch (key)
    %moves the picture depending on the user input, using an if structure
    if key = chr (200) then
	%moves the picture up
	picY := picY + 1
	picHeight := picHeight + 1
    elsif key = chr (208) then
	%moves the picture down
	picY := picY - 1
	picHeight := picHeight - 1
    elsif key = chr (205) then
	%moves the picture to the right
	picX := picX + 1
	picWidth := picWidth + 1
    elsif key = chr (203) then
	%moves the picture to the left
	picX := picX - 1
	picWidth := picWidth - 1
    end if
    View.Update
    %prevents the picture from moving off the screen, using an if statement
    if picX < 0 then
	%prevents the picture from moving off the left side of the screen
	picX := picX + 1
	picWidth := picWidth + 1
    elsif picWidth > 640 then
	%prevents the picture from moving off the right side of the screen
	picX := picX - 1
	picWidth := picWidth - 1
    elsif picY < 0 then
	%prevents the picture from moving off the bottom side of the screen
	picY := picY + 1
	picHeight := picHeight + 1
    elsif picHeight > 480 then
	%prevents the picture from moving off the top side of the screen
	picHeight := picHeight - 1
	picY := picY - 1
    end if
    View.Update
    if key = chr (10) or key = chr (27) then
	%releases the picture from the memory
	Pic.Free (pictureID)
    end if
end displayPic

%Main Program
initPic
loop
    displayPic
    exit when key = chr (10) or key = chr (27)
end loop
%End Program
