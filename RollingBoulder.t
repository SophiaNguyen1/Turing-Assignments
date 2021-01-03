%March 25, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program displays a boulder rolling down a hill.
setscreen ("graphics: 640,400")

%this loop makes the sky
for i : 0 .. 640
    drawline (0 + i, 0, 0 + i, 400, 102)
end for
%this loop makes the wall
for i : 0 .. 140
    drawline (500 + i, 0, 500 + i, 250, 137)
end for
%this loop makes the hill
for i : 0 .. 294
    drawline (0, 290, 0 + i, 0, 121)
end for
%this loop makes the ground at the bottom
for i : 0 .. 232
    drawline (268 + i, 0, 268 + i, 22, 121)
end for

%this procedure animates the boulder rolling down the hill
procedure boulderDownHill
    for i : 0 .. 300
	drawfilloval (-28 + i, 351 - i, 26, 26, 102) %erase
	%blue side
	drawfillarc (-27 + i, 350 - i, 25, 25, 270 - i, 90 - i, 220) %draw
	%red side
	drawfillarc (-27 + i, 350 - i, 25, 25, 90 - i, 270 - i, 24)  %draw
	delay (15)
    end for
end boulderDownHill

%this procedure animates the boulder rolling right across the ground
procedure boulderRollRight
    for i : 0 .. 200
	drawfilloval (272 + i, 50, 26, 26, 102) %erase
	%blue side
	drawfillarc (273 + i, 50, 25, 25, 330 - i, 150 - i, 220) %draw
	%red side
	drawfillarc (273 + i, 50, 25, 25, 150 - i, 330 - i, 24) %draw
	delay (20)
    end for
end boulderRollRight

%this procedure animates the boulder rolling left after hitting the wall
procedure boulderRollLeft
    for i : 0 .. 200
	drawfilloval (474 - i, 50, 26, 26, 102) %erase
	%blue side
	drawfillarc (473 - i, 50, 25, 25, 130 + i, 310 + i, 220) %draw
	%red side
	drawfillarc (473 - i, 50, 25, 25, 310 + i, 130 + i, 24) %draw
	delay (80)
    end for
end boulderRollLeft

boulderDownHill
boulderRollRight
boulderRollLeft
