%April 23, 2018
%Sophia and Meghan
%Ms. Krasteva
%This program ..

procedure title
    locate (1, 33)
    put "The Castle Story"
    put ""
end title

procedure intro
    var reply : string (1)
    title
    put "You and your best friend are stuck in a castle, which is surrounded by a 15"
    put "meter wide river. On the front side of the castle, there is a bridge leading out"
    put "but a madman is blocking it. There is a small boat but you and your friend only have enough money to pay for one person to be transported to the other side. You"
    put "must find a way to escape the castle. "
    put ""
    put "Press any key to start."
    put ""
    getch (reply)
end intro

procedure userInput
    var answer1, answer2 : int
    put "Pick an option: 1 or 2"
    put "1) Go out to the bridge"
    put "2) Try to swim across the river"
    get answer1
    if answer1 = 1 then
	put "You and your friend walk out of the castle to the bridge. The madman is standing"
	put "there, with a crazy look in his eyes. He looks dishevelled but otherwise not"
	put "dangerous. Pick an option: 1 or 2"
	put "1) Try to reason with him to let you pass"
	put "2) Try to run as fast as you can around the madman"
	get answer2
	if answer2 = 1 then
	    put "You and your friend approach the man carefully. You ask him if he may move aside"
	    put "to let you across the bridge. Unfortunately, he smiles and says you can never"
	    put "leave the castle."
	elsif answer2 = 2 then
	    put "You and your friend try to run as fast as you can before the madman can react."
	    put "Unfortunately, the madman notices you right away and starts hissing. You and"
	    put "your friend retaliate and run back to the castle entrance."
	end if
    if answer1 = 2 then 
    else
	put "Please pick one of the options: 1, 2, or 3"
	userInput
    end if
end userInput

intro
userInput
