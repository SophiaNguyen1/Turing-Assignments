%Set screen up
import GUI
setscreen ("nocursor")
setscreen ("noecho")
var mainWindow : int := Window.Open ("position:100;100, graphics:400;400")
var quitButton, window1Button : int := 0

proc title
    cls
    locate (1, 18)
    put "Windows Program"
    put ""
end title

procedure drawWindow1
    title
    put "This is window 1."
    GUI.Show (window1Button)
    GUI.Show (quitButton)
end drawWindow1

procedure drawWindow2
    title
    GUI.Hide (window1Button)
    var window2Button := GUI.CreateButtonFull (150, 100, 0, "Second Screen", drawWindow1, 0, '^S', false)
    quitButton := GUI.CreateButtonFull (150, 200, 0, "Quit", GUI.Quit, 0, KEY_ESC, false)
    put "This is window 2"
end drawWindow2

proc intro
    title
    window1Button := GUI.CreateButton (150, 300, 0, "First Screen", drawWindow2)
end intro

procedure goodbye
    title
    put "Program Over"
    delay (500)
    Window.Close (mainWindow)
end goodbye

intro
loop
    exit when GUI.ProcessEvent
end loop
goodbye

