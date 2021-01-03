%May 20, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program displays a menu bar with menu items that perform different functions.

%Sets the screen
import GUI

%Declaration Section
var first, second, third : int %The names of the three menus.
var item : array 1 .. 14 of int %Numbering the menu items.

%Creating a list of the menu item names
var itemName : array 1 .. 14 of string (19) :=
    init ("A", "B", "---", "C", "D", "---", "Quit", "Disable B Menu Item", "Enable B Menu Item", "---", "Disable First Menu", "Enable First Menu", "Show Graphic", "Hide Graphic")
var winID : int := Window.Open ("position:300;300,graphics:400;400") %set up the window

%Display a message that indicates which menu item has been selected
procedure menuSelected
    for x : 1 .. 12
	if item (x) = GUI.GetEventWidgetID then
	    Text.Locate (maxrow, 1)
	    put itemName (x) + " selected" ..
	end if
    end for
end menuSelected

%disables the B Menu Item or the First Menu
procedure disable
    if GUI.GetEventWidgetID = item (8) then
	GUI.Disable (item (2))
    else
	GUI.Disable (first)
    end if
end disable

%enables the B Menu Item or the First Menu
procedure enable
    if GUI.GetEventWidgetID = item (9) then
	GUI.Enable (item (2))
    else
	GUI.Enable (first)
    end if
end enable

%creates the graphic and draws or hides the picture
procedure graphics
    %variable declarations
    var pictureID : int
    var picHeight, picWidth : int
    %loads the picture
    pictureID := Pic.FileNew ("cat.jpg")
    picHeight := Pic.Height (pictureID)
    picWidth := Pic.Width (pictureID)
    %output depending on the user input
    if GUI.GetEventWidgetID = item (13) then
	%draws the picture
	Pic.Draw (pictureID, 0, 0, picMerge)
    elsif GUI.GetEventWidgetID = item (14) then
	%hides the picture
	drawfillbox (0, 0, picWidth, picHeight, white)
	%frees the picture from the memory
	Pic.Free (pictureID)
    end if
end graphics

%creates the menu headers and menu items
procedure createMenus
    first := GUI.CreateMenu ("First")
    for x : 1 .. 6
	item (x) := GUI.CreateMenuItem (itemName (x), menuSelected)
    end for
    item (7) := GUI.CreateMenuItem (itemName (7), GUI.Quit)
    second := GUI.CreateMenu ("Second")
    item (8) := GUI.CreateMenuItem (itemName (8), disable)
    item (9) := GUI.CreateMenuItem (itemName (9), enable)
    item (10) := GUI.CreateMenuItem (itemName (10), menuSelected)
    item (11) := GUI.CreateMenuItem (itemName (11), disable)
    item (12) := GUI.CreateMenuItem (itemName (12), enable)
    third := GUI.CreateMenu ("Display")
    item (13) := GUI.CreateMenuItem (itemName (13), graphics)
    item (14) := GUI.CreateMenuItem (itemName (14), graphics)
end createMenus

%Main Program
createMenus
loop
    exit when GUI.ProcessEvent
end loop
Window.Close (winID)
%End Program
