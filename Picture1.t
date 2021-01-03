%Set screen up
setscreen ("graphics:640;480")
setscreen ("nocursor")
setscreen ("noecho")

%Declaration section
var pictureID : int
var key : string (1)
var picHeight, picWidth : int

%Procedure section
process doMusic
    loop
	Music.PlayFile ("imperialMarch.wav")
    end loop
end doMusic

procedure initPic
    pictureID := Pic.FileNew ("cat.jpg")      %loads pic in RAM once!
    picHeight := Pic.Height (pictureID)
    picWidth := Pic.Width (pictureID)
    fork doMusic
    put "Picture height is: ", picHeight
    put "Picture width is: ", picWidth
    getch (key)
end initPic

procedure displayPic
    Pic.Draw (pictureID, 0, 0, picMerge)
    getch (key)
    if key = chr (10) or key = chr (27) then
	Pic.Free (pictureID)
    end if
end displayPic

%Plays music continuously while doing something else
initPic
loop
    displayPic
    exit when key = chr (10) or key = chr (27)
end loop

Music.PlayFileStop      %Music.PlayFile will stop immediately

