% set screen up
import GUI
setscreen ("noecho")
% Declaration section
var mainWin := Window.Open ("position : 300 ; 300, graphics : 400 ; 400")
var key : string (1)

procedure changeWindow
    setscreen ("nocursor")
    locate (1, 1)
    put "Press the [c] key to continue or the ESCAPE key to exit." ..
    getch (key)
end changeWindow

procedure drawWindow2
    var winID2 := Window.Open ("position : 200 ; 200, graphics : 200; 100")
    Window.Hide (mainWin)
    Window.Show (winID2)
    put "Press any key" ..
    loop
	exit when hasch
    end loop
    Window.Show (mainWin)
    Window.Close (winID2)
end drawWindow2

procedure drawWindow1
    changeWindow
    if key = chr (99) or key = chr (67) then
	drawWindow2
    end if
end drawWindow1

proc goodbye
    Window.Close (mainWin)
end goodbye

loop
    drawWindow1
    exit when key = chr (27)
end loop
goodbye

