%Declaration section
var finished : boolean := false
var rangeX, rangeY, button : int

%set screen mode and size
setscreen ("graphics:200;200")

%Program Title
procedure title
    cls
    locate (1, 10)
    put "Mouse Program 2"
end title

%Program introduction
procedure introduction
    title
    locate (3, 1)
    put "Click on this screen."
end introduction

procedure userInput
    %draw a blue box on the screen
    drawfillbox (70, 70, 120, 120, blue)
    mousewhere (rangeX, rangeY, button)
    locate (10, 1)
    if button = 1 then
	if (rangeX >= 70 and rangeX <= 120) and (rangeY >= 70 and rangeY <= 120) then
	    put "Wow - you clicked in the box."
	    finished := true
	else
	    put "You clicked at: ", rangeX, " ", rangeY
	end if
    end if
end userInput

%Main Program
introduction
loop        %repeat until user has clicked inside the box
    userInput
    exit when finished
end loop
%End of program
