import GUI
var first, second : int              %The names of the two menus.
var item : array 1 .. 12 of int      %Numbering the menu items.

%Creating a list of the menu item names
var itemName : array 1 .. 12 of string (19) :=
    init ("A", "B", "---", "C", "D", "---", "Quit", "Disable B Menu Item", "Enable B Menu Item", "---", "Disable First Menu", "Enable First Menu")
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

procedure disable
    if GUI.GetEventWidgetID = item (8) then
	GUI.Disable (item (2))
    else
	GUI.Disable (first)
    end if
end disable

procedure enable
    if GUI.GetEventWidgetID = item (9) then
	GUI.Enable (item (2))
    else
	GUI.Enable (first)
    end if
end enable

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
end createMenus

%Main Program
createMenus
loop
    exit when GUI.ProcessEvent
end loop
Window.Close (winID)
