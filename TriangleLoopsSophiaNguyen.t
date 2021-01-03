%March 7th, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program shows four filled triangles pointing in each direction.
setscreen ("graphics:640,400")
procedure display
    for i : 1 .. 100
	drawline (320, 330, 270 + i, 250, 78) %top
	drawline (190, 200, 270, 150 + i, 78) %left
	drawline (450, 200, 370, 150 + i, 78) %right
	drawline (320, 70, 270 + i, 150, 78)  %bottom
    end for
end display
display
