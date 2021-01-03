%March 25, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program displays a spaceship flying across the night sky.
setscreen ("graphics: 640,400")

%this procedure makes the space background
procedure background
    %this loop makes the black background
    for i : 0 .. 640
	drawline (0 + i, 0, 0 + i, 400, black)
    end for
    %this loop makes the stars (left to right)
    for i : 0 .. 2
	drawoval (30, 330, i, i, yellow)
	drawoval (50, 50, i, i, yellow)
	drawoval (110, 350, i, i, yellow)
	drawoval (150, 100, i, i, yellow)
	drawoval (200, 20, i, i, yellow)
	drawoval (210, 320, i, i, yellow)
	drawoval (300, 80, i, i, yellow)
	drawoval (320, 290, i, i, yellow)
	drawoval (350, 350, i, i, yellow)
	drawoval (420, 90, i, i, yellow)
	drawoval (480, 280, i, i, yellow)
	drawoval (500, 35, i, i, yellow)
	drawoval (550, 320, i, i, yellow)
	drawoval (600, 60, i, i, yellow)
    end for
end background

%this procedure animates the spaceship flying across the night sky
procedure flyingSpaceship
    %this loop creates and animates the spaceship parts
    for i : 0 .. 900
	%front part of spaceship
	drawfilloval (-90 + i, 200, 80, 30, gray) %draw
	%spaceship middle
	drawfillbox (-181 + i, 170, -65 + i, 230, black) %erase
	drawfillbox (-180 + i, 170, -64 + i, 230, 26) %draw
	%window
	drawfilloval (-95 + i, 200, 15, 15, 78) %draw
	%door
	drawfillbox (-171 + i, 185, -131 + i, 215, 114) %draw
	%fire trail
	drawfillarc (-182 + i, 200, 65, 15, 90, 270, black) %erase
	drawfillarc (-181 + i, 200, 65, 15, 90, 270, red) %draw
	drawfillarc (-181 + i, 200, 55, 10, 90, 270, 42) %draw
	drawfillarc (-181 + i, 200, 35, 6, 90, 270, 67) %draw
	drawfillarc (-181 + i, 200, 20, 3, 90, 270, 68) %draw
	delay (20)
    end for
end flyingSpaceship

background
flyingSpaceship
