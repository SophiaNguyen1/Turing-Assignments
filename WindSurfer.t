%March 25, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program displays a windsurfer riding a windsurf board across the ocean.
setscreen ("graphics: 640,400")

%this procedure creates the background
procedure background
    %this loop makes the sky and the ocean
    for i : 0 .. 640
	%sky
	drawline (0 + i, 0, 0 + i, 400, 101)
	%ocean
	drawline (0 + i, 0, 0 + i, 170, 54)
    end for
end background

%this procedure animates the windsurfer riding a board across the ocean
procedure windSurfer
    %this loop creates and animates the windsurfer and windsurf parts
    for i : 0 .. 900
	%surfboard
	drawfillarc (-142 + i, 155, 80, 15, 0, 360, 54) %erase
	drawfillarc (-141 + i, 155, 80, 15, 0, 360, red) %draw
	%sail
	drawfillarc (-144 + i, 220, 60, 60, 270, 90, 43) %draw
	%sail stick
	drawfillbox (-145 + i, 160, -140 + i, 280, 101) %erase
	drawfillbox (-144 + i, 160, -140 + i, 280, 115) %draw
	%surfboarder head
	drawfilloval (-131 + i, 220, 10, 10, black) %draw
	%surfboarder body
	drawfilloval (-131 + i, 190, 5, 20, black) %draw
	%surfboarder arm
	drawfilloval (-121 + i, 195, 15, 2, black) %draw
	%surfboarder left leg
	drawfillarc (-136 + i, 170, 3, 15, 250, 90, black) %draw
	%surfboarder right leg
	drawfillarc (-128 + i, 170, 3, 15, 250, 90, black) %draw
	delay (10)
    end for
end windSurfer

background
windSurfer
