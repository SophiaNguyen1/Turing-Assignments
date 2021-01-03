%April 7, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program shows and animates a cartoon face rolling its eyes.
setscreen ("graphics: 640, 400")

procedure face
    for i : 0 .. 220
	drawline (342, 315, 230 + i, 85, 7) %outer triangle
    end for
    for i : 0 .. 204
	drawline (342, 302, 238 + i, 88, 91) %inner triangle
    end for
    for i : 0 .. 18
	drawoval (310, 215, i, 2 + i, 31) %left eyeball
    end for
    for i : 0 .. 20
	drawoval (345, 220, i, 5 + i, 31) %right eyeball
    end for
    for i : 0 .. 6
	drawoval (318, 215, i, i, black) %left pupil
	drawoval (340, 220, i, i, black) %right pupil
    end for
    for i : 0 .. 2
	drawarc (333, 208, 52, 40 + i, 200, 340, black) %top mouth line
	%I made the mouth line too short, so I increased the x radius and moved it to the left
    end for
    for i : 0 .. 35
	drawarc (340, 176, 40, 10 + i, 210, 10, black) %mouth gap
	%I made the gap in front of the teeth, so I moved it behind the teeth
	%I also made the arc top too straight, so I wrote 10 + i to make the arc more curved
    end for
    for i : 0 .. 15
	drawarc (333, 215 - i, 55, 50, 220, 330, white) %teeth
	%the teeth were too low so I moved it up to be right underneath the mouth line
    end for
    for i : 0 .. 1
	drawline (310 + i, 155, 310 + i, 167, black) %tooth line 1
	drawline (335 + i, 150, 335 + i, 160, black) %tooth line 2
	drawline (365 + i, 160, 365 + i, 175, black) %tooth line 3
	%the teeth lines weren't accurately placed so I adjusted the coordinates 
    end for
    for i : 0 .. 10
	drawarc (305, 140, i, i, 0, 160, 89) %tongue 1
	%at first I chose an oval but realized it would go past the bottom lip so I changed it to an arc 
	drawarc (320, 132, 5 + i, 2 + i, 0, 160, 89) %tongue 2
	drawarc (305, 250, 8, i, 0, 200, black) %left eyebrow
	drawarc (350, 260, 10, i, 340, 180, black) %right eyebrow
    end for
    for i : 0 .. 3
	drawoval (318, 218, i, i, white) %left eye shine
	drawoval (340, 223, i, i, white) %right eye shine
	drawarc (375, 180, 15, 13 + i, 10, 90, black) %smirk
	drawarc (330, 175, 50, 40 + i, 220, 15, black) %bottom mouth line
	%the line didn't extend all the way to the top mouth line so I changed the angles
	drawarc (292, 144, 1 + i, 5, 90, 270, black) %bottom lip
	%it wasn't in the right location so I changed the coordinates
    end for
    for i : 0 .. 8
	drawline (314 - i, 250, 310 - i, 259, black) %left eyebrow block
	drawline (338 + i, 260, 343 + i, 270, black) %right eyebrow block
	%at first I made the beginning of the eyebrows triangles but realized that rhombuses would be better
    end for
end face

procedure FaceAnimate
    %eyes move up and out
    for i : 0 .. 10
	%left eye
	drawfilloval (319 - i, 215 + i, 7, 7, white) %erase
	drawfilloval (318 - i, 215 + i, 6, 6, black) %draw
	drawfilloval (318 - i, 218 + i, 3, 3, white) %draw
	%right eye
	drawfilloval (339 + i, 220 + i, 7, 7, white) %erase
	drawfilloval (340 + i, 220 + i, 6, 6, black) %draw
	drawfilloval (340 + i, 223 + i, 3, 3, white) %draw
	delay (20)
    end for
    %eyes move down and out
    for i : 0 .. 9
	%left eye
	drawfilloval (309 - i, 225 - i, 7, 7, white) %erase
	drawfilloval (308 - i, 225 - i, 6, 6, black) %draw
	drawfilloval (308 - i, 228 - i, 3, 3, white) %draw
	%right eye
	drawfilloval (349 + i, 230 - i, 7, 7, white) %erase
	drawfilloval (350 + i, 230 - i, 6, 6, black) %draw
	drawfilloval (350 + i, 233 - i, 3, 3, white) %draw
	delay (20)
    end for
    %eyes move down and in
    for i : 0 .. 11
	%left eye
	drawfilloval (298 + i, 216 - i, 7, 7, white) %erase
	drawfilloval (299 + i, 216 - i, 6, 6, black) %draw
	drawfilloval (299 + i, 219 - i, 3, 3, white) %draw
	%right eye
	drawfilloval (360 - i, 221 - i, 7, 7, white) %erase
	drawfilloval (359 - i, 221 - i, 6, 6, black) %draw
	drawfilloval (359 - i, 224 - i, 3, 3, white) %draw
	delay (20)
    end for
    %eyes move up and in
    for i : 0 .. 8
	%left eye
	drawfilloval (309 + i, 205 + i, 7, 7, white) %erase
	drawfilloval (310 + i, 205 + i, 6, 6, black) %draw
	drawfilloval (310 + i, 208 + i, 3, 3, white) %draw
	%right eye
	drawfilloval (349 - i, 210 + i, 7, 7, white) %erase
	drawfilloval (348 - i, 210 + i, 6, 6, black) %draw
	drawfilloval (348 - i, 213 + i, 3, 3, white) %draw
	delay (20)
    end for
    %for the animation, I made the pupils travel too far where it went out of the eye so I decreased the loop numbers
    %I also mixed up the left eye and right eye movements so I had to change the math operations
end FaceAnimate

face
FaceAnimate
