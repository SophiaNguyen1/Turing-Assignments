%March 18th, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program shows a winter scenery (a snowman, broom, two sleds, a hill, and a Christmas tree) drawn using loops.
setscreen ("graphics:640,400")

%this procedure draws the background
procedure background
    %this loop makes the sky
    for i : 0 .. 640
	drawline (0 + i, 0, 0 + i, 640, 77)
    end for
    %this loop makes the snowy ground
    for i : 0 .. 300
	drawline (0 + i, 0, 0 + i, 150, 30)
    end for
end background

%this procedure draws the snowman
procedure snowman
    %this loop makes the top ball
    for i : 0 .. 25
	drawoval (480, 260, i, 2 + i, 78)
	drawoval (481, 260, i, 2 + i, 78)
	drawoval (482, 260, i, 2 + i, 78)
    end for
    %this loop makes the middle ball
    for i : 0 .. 35
	drawoval (480, 198, 7 + i, i, 78)
	drawoval (481, 196, 7 + i, i, 78)
	drawoval (482, 198, 7 + i, i, 78)
    end for
    %this loop makes the bottom ball
    for i : 0 .. 60
	drawoval (480, 100, 12 + i, i, 78)
	drawoval (481, 102, 12 + i, i, 78)
	drawoval (482, 100, 12 + i, i, 78)
    end for
    %this loop makes the arm and the nose
    for i : 0 .. 5
	%arm
	drawline (518, 180 + i, 589, 200 + i, 54)
	%nose (triangle)
	drawline (540, 250, 482, 262 - i, 43)
    end for
    %this loop makes the eyes and the hat brim on the right
    for i : 0 .. 6
	%left eye
	drawoval (470, 272, i, i, 7)
	drawoval (471, 272, i, i, 7)
	drawoval (472, 272, i, i, 7)
	%right eye
	drawoval (490, 268, i, i, 7)
	drawoval (491, 268, i, i, 7)
	drawoval (492, 268, i, i, 7)
	%hat brim on the right
	drawline (505, 289 - i, 520, 282 - i, black)
    end for
    %this loop makes the middle 'parallelogram' part of the hat
    for i : 0 .. 40
	drawline (465 + i, 283, 460 + i, 312, black)
    end for
    %this loop makes the top slanted part of the hat (triangle)
    for i : 0 .. 8
	drawline (500, 313, 460, 318 - i, black)
    end for
    %this loop makes the hat brim on the left
    for i : 0 .. 4
	drawline (430, 279 + i, 464, 283 + i, black)
    end for
    %this loop makes the circle at the end of the hat brim on the right
    for i : 0 .. 2
	drawoval (520, 279, i, i, black)
	drawoval (521, 279, i, i, black)
    end for

    %this loop makes the buttons
    for i : 0 .. 7
	%top button
	drawoval (480, 132, i, 1 + i, red)
	drawoval (481, 132, i, 1 + i, red)
	drawoval (482, 132, i, 1 + i, red)
	%middle button
	drawoval (480, 103, i, 1 + i, red)
	drawoval (481, 103, i, 1 + i, red)
	drawoval (482, 103, i, 1 + i, red)
	%bottom button
	drawoval (480, 77, i, 1 + i, red)
	drawoval (481, 77, i, 1 + i, red)
	drawoval (482, 77, i, 1 + i, red)
    end for
    %this loop makes the button's stripes
    for i : 0 .. 1
	%top button top stripe
	drawline (473, 130 + i * 2, 484 - i, 139 + i * 2, 86)
	drawline (473, 131 + i, 484 - i, 140, 86)
	%top button bottom stripe
	drawline (479, 123 + i * 2, 489 - i, 132 + i * 2, 87)
	drawline (479, 124 + i, 489 - i, 133, 87)
	%middle button top stripe
	drawline (473, 100 + i * 2, 484 - i, 110 + i * 2, 88)
	drawline (473, 101 + i, 484 - i, 111, 88)
	%middle button bottom stripe
	drawline (479, 94 + i * 2, 489 - i, 103 + i * 2, 89)
	drawline (479, 95 + i, 489 - i, 104, 89)
	%bottom button top stripe
	drawline (473, 74 + i * 2, 484 - i, 84 + i * 2, 90)
	drawline (473, 75 + i, 484 - i, 85, 90)
	%bottom button bottom stripe
	drawline (479, 68 + i * 2, 489 - i, 77 + i * 2, 91)
	drawline (479, 69 + i, 489 - i, 78, 91)
    end for
end snowman

%this procedure draws the broom
procedure broom
    %this loop makes the broomstick
    for i : 0 .. 10
	drawline (562 + i, 40, 602 + i, 280, 185)
    end for
    %this loop makes the broom bristles
    for i : 0 .. 1
	%section 1 (left)
	drawline (600 + i, 280, 580 + i, 330, 43) %bristle 1 from the left
	drawline (603 + i, 280, 581 + i, 333, 43) %bristle 2
	drawline (604 + i, 280, 582 + i, 335, 42) %bristle 3
	drawline (604 + i, 280, 583 + i, 336, 42) %bristle 4
	drawline (605 + i, 280, 585 + i, 334, 43) %bristle 5
	drawline (609 + i, 280, 588 + i, 336, 42) %bristle 6
	drawline (611 + i, 283, 595 + i, 330, 42) %bristle 7
	%section 2 (middle left)
	drawline (600 + i, 280, 605 + i, 335, 42) %bristle 8
	drawline (601 + i, 280, 609 + i, 340, 42) %bristle 9
	drawline (602 + i, 280, 610 + i, 329, 43) %bristle 10
	drawline (605 + i, 280, 612 + i, 332, 43) %bristle 11
	drawline (607 + i, 280, 614 + i, 335, 42) %bristle 12
	%section 3 (middle right)
	drawline (606 + i, 280, 618 + i, 332, 42) %bristle 13
	drawline (606 + i, 280, 621 + i, 335, 43) %bristle 14
	drawline (606 + i, 280, 620 + i, 323, 43) %bristle 15
	drawline (607 + i, 280, 623 + i, 328, 42) %bristle 16
	drawline (609 + i, 280, 626 + i, 330, 42) %bristle 17
	%section 4 (right)
	drawline (600 + i, 280, 633 + i, 323, 43) %bristle 18
	drawline (601 + i, 280, 636 + i, 325, 43) %bristle 19
	drawline (602 + i, 280, 639 + i, 328, 43) %bristle 20
	drawline (604 + i, 280, 640 + i, 328, 42) %bristle 21
	drawline (606 + i, 280, 641 + i, 328, 42) %bristle 22
	drawline (607 + i, 280, 642 + i, 328, 42) %bristle 23
	drawline (607 + i, 280, 641 + i, 328, 42) %bristle 24
	drawline (609 + i, 280, 641 + i, 328, 42) %bristle 25
	drawline (611 + i, 280, 640 + i, 328, 43) %bristle 26
	drawline (613 + i, 280, 645 + i, 330, 43) %bristle 27
	drawline (614 + i, 280, 645 + i, 330, 42) %bristle 28
    end for
end broom

%this procedure draws the tree
procedure tree
    %this loop makes the bottom part of the star (triangle)
    for i : 0 .. 15
	drawline (72, 360, 61 + i, 330, yellow)
    end for
    %this loop makes the top left part of the star (triangle)
    for i : 0 .. 9
	drawline (72, 365, 55 + i, 353 - i, yellow)
	drawline (73, 365, 56 + i, 353 - i, yellow)
    end for
    %this loop makes the tree stump
    for i : 0 .. 30
	drawline (60 + i, 135, 60 + i, 165, 137)
    end for
    %this loop makes the bottom tree part
    for i : 0 .. 129
	drawline (75, 260, 13 + i, 165, green)
    end for
    %this loop makes the tree part second from the bottom
    for i : 0 .. 90
	drawline (70, 300, 13 + i, 220, green)
    end for
    %this loop makes the tree part third from the bottom
    for i : 0 .. 100
	drawline (70, 330, 28 + i, 260, green)
    end for
    %this loop makes the tree part at the top
    for i : 0 .. 75
	drawline (70, 340, 40 + i, 300, green)
    end for
    %this loop makes the pointy tree part on the right side
    for i : 0 .. 80
	drawline (140, 208, 70, 235 + i, green)
    end for
    %this loop makes the top right part of the star and the circular ornaments on the tree
    for i : 0 .. 4
	%top right part of the star (triangle)
	drawline (71, 365, 75 + i * 2, 345 + i, yellow)
	drawline (72, 365, 76 + i * 2, 345 + i, yellow)

	%circular ornaments
	%bottom row ornament 1 from the left
	drawoval (48, 212, i, i, white) %ornament shine
	drawoval (49, 212, i, i, 43) %ornament colour
	%bottom row ornament 2 from the left
	drawoval (59, 208, i, i, white) %ornament shine
	drawoval (60, 208, i, i, 49) %ornament colour
	%bottom row ornament 3 from the left
	drawoval (69, 206, i, i, white) %ornament shine
	drawoval (70, 206, i, i, 53) %ornament colour
	%bottom row ornament 4 from the left
	drawoval (79, 200, i, i, white) %ornament shine
	drawoval (80, 200, i, i, 43) %ornament colour
	%bottom row ornament 5 from the left
	drawoval (90, 196, i, i, white) %ornament shine
	drawoval (91, 196, i, i, 49) %ornament colour
	%bottom row ornament 6 from the left
	drawoval (100, 194, i, i, white) %ornament shine
	drawoval (101, 194, i, i, 53) %ornament colour
	%bottom row ornament 7 from the left
	drawoval (110, 191, i, i, white) %ornament shine
	drawoval (111, 191, i, i, 43) %ornament colour
	%bottom row ornament 8 from the left
	drawoval (121, 190, i, i, white) %ornament shine
	drawoval (122, 190, i, i, 40) %ornament colour

	%middle row ornament 1 from the left
	drawoval (47, 255, i, i, white) %ornament shine
	drawoval (48, 255, i, i, 43) %ornament colour
	%middle row ornament 2 from the left
	drawoval (58, 253, i, i, white) %ornament shine
	drawoval (59, 253, i, i, 40) %ornament colour
	%middle row ornament 3 from the left
	drawoval (68, 250, i, i, white) %ornament shine
	drawoval (69, 250, i, i, 43) %ornament colour
	%middle row ornament 4 from the left
	drawoval (79, 247, i, i, white) %ornament shine
	drawoval (80, 247, i, i, 53) %ornament colour
	%middle row ornament 5 from the left
	drawoval (91, 242, i, i, white) %ornament shine
	drawoval (92, 242, i, i, 43) %ornament colour
	%middle row ornament 6 from the left
	drawoval (102, 239, i, i, white) %ornament shine
	drawoval (103, 239, i, i, 49) %ornament colour
	%middle row ornament 7 from the left
	drawoval (113, 236, i, i, white) %ornament shine
	drawoval (114, 236, i, i, 40) %ornament colour

	%top row ornament 1 from the left
	drawoval (54, 295, i, i, white) %ornament shine
	drawoval (55, 295, i, i, 40) %ornament colour
	%top row ornament 2 from the left
	drawoval (64, 293, i, i, white) %ornament shine
	drawoval (65, 293, i, i, 43) %ornament colour
	%top row ornament 3 from the left
	drawoval (75, 288, i, i, white) %ornament shine
	drawoval (76, 288, i, i, 49) %ornament colour
	%top row ornament 4 from the left
	drawoval (87, 286, i, i, white) %ornament shine
	drawoval (88, 286, i, i, 53) %ornament colour
	%top row ornament 5 from the left
	drawoval (99, 285, i, i, white) %ornament shine
	drawoval (100, 285, i, i, 43) %ornament colour
    end for
    %this loop makes the pointy ornaments hanging off the tree sides (2 triangles each)
    for i : 0 .. 11
	%left column ornament 1 from the top
	drawline (39, 298, 31 + i, 290, 56) %top triangle
	drawline (38, 283, 31 + i, 290, 57) %bottom triangle
	%left column ornament 2 from the top
	drawline (29, 260, 21 + i, 252, 58) %top triangle
	drawline (28, 245, 21 + i, 252, 59) %bottom triangle
	%left column ornament 3 from the top
	drawline (20, 218, 12 + i, 210, 60) %top triangle
	drawline (19, 203, 12 + i, 210, 61) %bottom triangle
	%left column ornament 4 from the top
	drawline (18, 163, 10 + i, 155, 62) %top triangle
	drawline (17, 148, 10 + i, 155, 63) %bottom triangle

	%right column ornament 1 from the top
	drawline (120, 299, 112 + i, 291, 64) %top triangle
	drawline (119, 284, 112 + i, 291, 65) %bottom triangle
	%right column ornament 2 from the top
	drawline (132, 247, 125 + i, 254, 66) %top triangle
	drawline (133, 262, 125 + i, 254, 67) %bottom triangle
	%right column ornament 3 from the top
	drawline (145, 208, 137 + i, 200, 68) %top triangle
	drawline (144, 193, 137 + i, 200, 69) %bottom triangle
	%right column ornament 4 from the top
	drawline (144, 165, 136 + i, 157, 70) %top triangle
	drawline (143, 150, 136 + i, 157, 71) %bottom triangle
    end for
end tree

%this procedure draws the top sled
procedure topsled
    %this loop makes the top sled base (parallelogram)
    for i : 0 .. 53
	drawline (240 + i * 3, 270 + i, 220 + i * 3, 320 + i, red)
	drawline (242 + i * 3, 271 + i, 222 + i * 3, 321 + i, red)
	drawline (244 + i * 3, 272 + i, 224 + i * 3, 322 + i, red)
	drawline (246 + i * 3, 273 + i, 226 + i * 3, 323 + i, red)
    end for
    %this loop colours the top part of the curvy front of the top sled
    for i : 0 .. 20
	drawarc (245, 328, 40, 10 + i, 20, 180, red)
	drawarc (244, 329, 40, 10 + i, 20, 180, red)
    end for
    %this loop colours the left part of the curvy front of the top sled
    for i : 0 .. 30
	drawarc (245, 314, 12 + i, 40, 120, 280, red)
	drawarc (246, 314, 12 + i, 40, 120, 280, red)
    end for
    %this loop draws the outline for the curvy front of the top sled
    for i : 0 .. 4
	%outside part of the curvy front
	drawarc (244, 313 + i, 42, 40 + i, 30, 280, white)
	drawarc (244, 313 + i, 42, 41 + i, 30, 280, red)
	%inner-left part of the curvy front
	drawarc (245 + i, 310, 15, 30 + i, 100, 280, white)
	%inner-top part of the curvy front
	drawarc (252, 323, 32, 15 + i, 20, 180, white)
    end for
    %this loop draws the stick piece and stripes of the top sled
    for i : 0 .. 3
	%stick piece holding up the front of the top sled
	drawline (278 + i, 283, 248 + i, 336, 45)
	drawline (279 + i, 283, 249 + i, 336, 45)
	%stripe 1 from the left of the top sled
	drawline (307 + i * 2, 293 + i, 290 + i * 2, 341 + i, yellow)
	drawline (308 + i * 2, 294 + i, 291 + i * 2, 342 + i, yellow)
	drawline (307 + i * 2, 295 + i, 290 + i * 2, 343 + i, yellow)
	%stripe 2 from the left of the top sled
	drawline (342 + i * 2, 303 + i, 324 + i * 2, 353 + i, yellow)
	drawline (343 + i * 2, 304 + i, 325 + i * 2, 354 + i, yellow)
	drawline (342 + i * 2, 305 + i, 324 + i * 2, 355 + i, yellow)
	%stripe 3 from the left of the top sled
	drawline (374 + i * 2, 315 + i, 357 + i * 2, 363 + i, yellow)
	drawline (375 + i * 2, 316 + i, 358 + i * 2, 364 + i, yellow)
	drawline (374 + i * 2, 317 + i, 357 + i * 2, 365 + i, yellow)
    end for
end topsled

%this procedure draws the bottom sled
procedure bottomsled
    %this loop draws the bottom sled base (parallelogram)
    for i : 0 .. 80
	drawline (120 + i * 2, 85 - i, 140 + i * 2, 135 - i, red)
	drawline (122 + i * 2, 86 - i, 142 + i * 2, 136 - i, red)
	drawline (124 + i * 2, 87 - i, 144 + i * 2, 137 - i, red)
	drawline (126 + i * 2, 88 - i, 146 + i * 2, 138 - i, red)
    end for
    %this loop colours the top part of the curvy front of the bottom sled
    for i : 0 .. 20
	drawarc (150, 130, 35, 10 + i, 20, 180, red)
	drawarc (151, 129, 35, 10 + i, 20, 180, red)
    end for
    %this loop colours the left part of the curvy front of the bottom sled
    for i : 0 .. 30
	drawarc (152, 120, 12 + i, 40, 120, 280, red)
	drawarc (146, 118, 12 + i, 40, 120, 280, red)
    end for
    %this loop draws the outline for the curvy front of the bottom sled
    for i : 0 .. 4
	%outside part of the curvy front
	drawarc (145, 117 + i, 42, 40 + i, 0, 250, white)
	drawarc (145, 117 + i, 42, 41 + i, 0, 250, red)
	%inner-left part of the curvy front
	drawarc (138 + i, 111, 15, 25 + i, 80, 270, white)
	%inner-top part of the curvy front
	drawarc (155, 119, 32, 20 + i, 0, 170, white)
    end for
    %this loop draws the stick piece and stripes of the bottom sled
    for i : 0 .. 3
	%stick piece holding up the front of the bottom sled (parallelogram)
	drawline (155 + i, 72 - i, 160 + i, 140 - i, 45)
	drawline (156 + i, 73 - i, 160 + i, 141 - i, 45)
	%stripe 1 from the left of the bottom sled
	drawline (180 + i * 2, 57 - i, 200 + i * 2, 108 - i, yellow)
	drawline (181 + i * 2, 56 - i, 201 + i * 2, 107 - i, yellow)
	drawline (180 + i * 2, 55 - i, 200 + i * 2, 106 - i, yellow)
	%stripe 2 from the left of the bottom sled
	drawline (217 + i * 2, 40 - i, 237 + i * 2, 91 - i, yellow)
	drawline (218 + i * 2, 39 - i, 238 + i * 2, 90 - i, yellow)
	drawline (217 + i * 2, 38 - i, 237 + i * 2, 89 - i, yellow)
	%stripe 3 from the left of the bottom sled
	drawline (254 + i * 2, 21 - i, 274 + i * 2, 72 - i, yellow)
	drawline (255 + i * 2, 20 - i, 275 + i * 2, 71 - i, yellow)
	drawline (254 + i * 2, 19 - i, 274 + i * 2, 70 - i, yellow)
    end for
end bottomsled

%this procedure draws the hill
procedure hill
    %this loop makes the first part of the hill from the bottom (bump)
    for i : 0 .. 10
	drawarc (40, 0, 30 + i, i, 0, 180, 101)
	drawarc (41, -1, 30 + i, i, 0, 180, 101)
    end for
    %this loop makes the second part of the hill from the bottom (smooth slope)
    for i : 0 .. 40
	drawline (70, 17, 70 - i, 5, 101)
    end for
    %this loop makes the third part of the hill from the bottom (smooth slope)
    for i : 0 .. 30
	drawline (100, 35, 100 - i, 17, 101)
    end for
    %this loop makes the fourth part of the hill from the bottom (tiny bump)
    for i : 0 .. 20
	drawoval (115, 21, i, i, 101)
	drawoval (116, 21, i, i, 101)
	drawoval (118, 21, i, i, 101)
    end for
    %this loop makes the fifth part of hill from the bottom (smooth slope)
    for i : 0 .. 190
	drawline (265, 140, 265 - i, 15, 101)
    end for
    %this loop makes the sixth and seventh part of the hill from the bottom (caved-in bumps)
    for i : 0 .. 38
	%sixth part of hill from the bottom (caved-in bump)
	drawarc (176 + i, 178, 40, 80, 270, 350, 101)
	%seventh part of hill from the bottom (caved-in bump)
	drawarc (200 + i, 210, 30, 53, 300, 350, 101)
    end for
    %this loop makes the eighth part of the hill from the bottom (smooth slope)
    for i : 0 .. 15
	drawline (244, 233, 244 - i, 200, 101)
    end for
    %this loop makes the ninth (last) part of the hill from the bottom (caved-in bump)
    for i : 0 .. 17
	drawarc (230 + i, 286, 30, 60, 295, 350, 101)
    end for
    %this loop makes the middle-left part of the hill filler (rectangle)
    for i : 0 .. 35
	drawline (244 + i, 50, 244 + i, 232, 101)
    end for
    %this loop makes the bottom-left part of the hill filler (rectangle)
    for i : 0 .. 200
	drawline (70 + i, 0, 70 + i, 17, 101)
    end for
    %this loop makes the top curvy part of the hill (arc)
    for i : 0 .. 100
	drawarc (450, 280, 100 + i, i, 0, 180, 101)
	drawarc (451, 281, 100 + i, i, 0, 180, 101)
    end for
    %this loop makes the huge middle part of the hill (rectangle)
    for i : 0 .. 400
	drawline (260 + i, 0, 260 + i, 290, 101)
    end for
    %this loop makes filler to cave in some of the first part of the hill from the bottom
    for i : 0 .. 3
	drawoval (0, 4, i, i, 30) %circle 1
	drawoval (14, 10, 6 + i, i, 30) %circle 2
    end for
end hill

background
hill
topsled
bottomsled
tree
snowman
broom

