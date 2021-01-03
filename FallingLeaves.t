%March 25, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program shows a maple tree and two maple leaves falling from the tree.
setscreen ("graphics: 640,400")

%this procedure draws the background
procedure background
    %this loop makes the sky and ground
    for i : 0 .. 640
	%sky
	drawline (0 + i, 0, 0 + i, 400, 101)
	%ground
	drawline (0 + i, 0, 0 + i, 150, green)
    end for
end background

%this procedure draws the tree
procedure tree
    %this loop makes the trunk
    for i : 0 .. 40
	%left part
	drawarc (270 + i, 140, 20, 110, 270, 90, 187)
	%middle part
	drawline (300 + i, 30, 300 + i, 250, 187)
	%right part
	drawarc (370 - i, 140, 20, 110, 90, 270, 187)
    end for
    %tree leaves
    for i : 0 .. 65
	%bottom leaves (left to right)
	drawoval (200, 240, 5 + i, i, 43)
	drawoval (225, 200, 5 + i, i, 43)
	drawoval (315, 190, 5 + i, i, 43)
	drawoval (400, 200, 5 + i, i, 43)
	drawoval (420, 240, 5 + i, i, 43)
	%middle leaves (left to right)
	drawoval (210, 285, 5 + i, i, 43)
	drawoval (270, 280, 5 + i, i, 43)
	drawoval (360, 280, 5 + i, i, 43)
	drawoval (420, 290, 5 + i, i, 43)
	%top leaves (left to right)
	drawoval (230, 330, 5 + i, i, 43)
	drawoval (270, 340, 5 + i, i, 43)
	drawoval (350, 340, 5 + i, i, 43)
	drawoval (390, 330, 5 + i, i, 43)
    end for
    %this loop makes the middle maple leaf
    for i : 0 .. 25
	%maple leaf
	drawmapleleaf (300 + i, 250 + i, 335 - i, 285 - i, red)
    end for
end tree

%this procedure creates and animates the falling leaf on the left side
procedure fallingOutsideLeaf
    %this loop makes the leaf sway left
    for i : 0 .. 36
	drawfillmapleleaf (171 - i, 251 - i, 211 - i, 291 - i, 43) %erase
	drawfillmapleleaf (170 - i, 250 - i, 210 - i, 290 - i, red) %draw
	delay (50)
    end for
    %this loop makes the leaf sway right
    for i : 0 .. 110
	drawfillmapleleaf (133 + i, 215 - i, 173 + i, 255 - i, 43) %erase
	drawfillmapleleaf (134 + i, 214 - i, 174 + i, 254 - i, red) %draw
	delay (35)
    end for
    %this loop makes the leaf sway left
    for i : 0 .. 42
	drawfillmapleleaf (245 - i, 105 - i, 285 - i, 145 - i, green) %erase
	drawfillmapleleaf (244 - i, 104 - i, 284 - i, 144 - i, red) %draw
	delay (30)
    end for
    %this loop makes the leaf fall down
    for i : 0 .. 50
	drawfillmapleleaf (202, 63 - i, 242, 103 - i, green) %erase
	drawfillmapleleaf (202, 62 - i, 242, 102 - i, red) %draw
	delay (40)
    end for
end fallingOutsideLeaf

%this procedure creates and animates the falling leaf in the middle
procedure fallingInsideLeaf
    %this loop makes the leaf sway left
    for i : 0 .. 30
	drawfillmapleleaf (301 - i, 251 - i, 336 - i, 286 - i, 43) %erase
	drawfillmapleleaf (300 - i, 250 - i, 335 - i, 285 - i, red) %draw
	delay (30)
    end for
    %this loop makes the leaf sway right
    for i : 0 .. 110
	drawfillmapleleaf (269 + i, 221 - i, 304 + i, 256 - i, 43) %erase
	drawfillmapleleaf (270 + i, 220 - i, 305 + i, 255 - i, red) %draw
	delay (32)
    end for
    %this loop makes the leaf sway left
    for i : 0 .. 20
	drawfillmapleleaf (381 - i, 111 - i, 416 - i, 146 - i, green) %erase
	drawfillmapleleaf (380 - i, 110 - i, 415 - i, 145 - i, red) %draw
	delay (35)
    end for
    %this loop makes the leaf sway right
    for i : 0 .. 55
	drawfillmapleleaf (359 + i, 91 - i, 394 + i, 126 - i, green) %erase
	drawfillmapleleaf (360 + i, 90 - i, 395 + i, 125 - i, red) %draw
	delay (38)
    end for
    %this loop makes the leaf fall down
    for i : 0 .. 22
	drawfillmapleleaf (415, 36 - i, 450, 71 - i, green) %erase
	drawfillmapleleaf (415, 35 - i, 450, 70 - i, red) %draw
	delay (45)
    end for
end fallingInsideLeaf

background
tree
fallingOutsideLeaf
fallingInsideLeaf
