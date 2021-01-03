colorback (89)
cls
%head
drawfillbox (290, 320, 300, 350, red)
drawfillbox (290, 370, 350, 350, red)
drawfillbox (340, 350, 350, 320, red)
drawfillbox (300, 350, 340, 330, black)
drawfillbox (300, 330, 340, 320, grey)
drawfillbox (310, 320, 330, 310, grey)
%hands/arms
%left
drawfillbox (240, 200, 260, 220, black)
Draw.ThickLine (256, 220, 282, 293, 3, 15)
Draw.ThickLine (243, 220, 275, 305, 3, 15)
Draw.ThickLine (245, 220, 255, 220, 2, 15)
Draw.ThickLine (247, 235, 260, 234, 2, 15)
Draw.ThickLine (254, 252, 266, 252, 2, 15)
Draw.ThickLine (261, 274, 274, 274, 2, 15)
Draw.ThickLine (267, 290, 280, 290, 2, 15)
%right
drawfillbox (380, 200, 400, 220, black)
Draw.ThickLine (360, 295, 383, 220, 3, 15)
Draw.ThickLine (397, 220, 365, 305, 3, 15)
Draw.ThickLine (380, 220, 400, 220, 2, 15)
Draw.ThickLine (380, 235, 391, 234, 2, 15)
Draw.ThickLine (373, 252, 385, 252, 2, 15)
Draw.ThickLine (366, 274, 376, 274, 2, 15)
Draw.ThickLine (360, 290, 370, 290, 2, 15)
%legs
drawfillbox (289, 115, 302, 90, grey)
drawfillbox (339, 115, 352, 90, grey)
drawfillarc (295, 155, 15, 50, 90, 270, grey)
drawfillarc (345, 155, 15, 50, 270, 90, grey)
Draw.ThickLine (295, 120, 300, 180, 24, grey)
Draw.ThickLine (345, 120, 340, 180, 24, grey)
%body
var x : array 1 .. 3 of int := init (270, 315, 290)
var y : array 1 .. 3 of int := init (310, 310, 280)
drawfillpolygon (x, y, 3, grey)
var xa : array 1 .. 3 of int := init (370, 325, 350)
var ya : array 1 .. 3 of int := init (310, 310, 280)
drawfillpolygon (xa, ya, 3, grey)
drawfilloval (320, 280, 30, 30, red)
drawfillbox (310, 240, 330, 250, grey)
drawfilloval (320, 210, 40, 30, red)
drawfillbox (300, 265, 340, 295, brightred)
drawfillbox (305, 265, 335, 295, white)
Draw.FillMapleLeaf (305, 265, 335, 295, red)
Draw.FillMapleLeaf (380, 200, 400, 220, red)
Draw.FillMapleLeaf (240, 200, 260, 220, red)
%boots
drawfillbox (285, 90, 305, 80, brightred)
drawfillbox (335, 90, 355, 80, brightred)
drawfillbox (285, 80, 305, 30, black)
drawfillbox (335, 80, 355, 30, black)
drawfillarc (295, 20, 20, 20, 0, 180, 15)
drawfillarc (345, 20, 20, 20, 0, 180, 15)
Draw.ThickLine (275, 20, 315, 20, 5, black)
Draw.ThickLine (325, 20, 365, 20, 5, black)
%bolts
drawfilloval (290, 300, 5, 5, black)
drawfilloval (350, 300, 5, 5, black)
drawfilloval (295, 115, 10, 10, black)
drawfilloval (345, 115, 10, 10, black)
%outline
drawline (270, 310, 310, 310, black)
drawline (270, 310, 290, 280, black)
drawline (370, 310, 330, 310, black)
drawline (370, 310, 350, 280, black)
%eyes
Draw.FillOval (310, 342, 4, 4, 43)
Draw.FillOval (330, 342, 4, 4, 43)
Draw.FillOval (310, 342, 2, 2, black)
Draw.FillOval (330, 342, 2, 2, black)
Draw.FillOval (311, 344, 1, 1, white)
Draw.FillOval (331, 344, 1, 1, white)
%mouth
drawfillarc (320, 330, 9, 5, 180, 360, white)




