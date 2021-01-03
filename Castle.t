%April 23, 2018
%Sophia and Meghan
%Ms. Krasteva
%This program helps you decide what to do in a tough decision. (stuck in a castle)

%Variable declaration
var ending1, ending2, ending3 : int
ending1 := 0
ending2 := 0
ending3 := 0

%Program title
procedure title
    locate (1, 33)
    put "The Castle Story"
    put ""
end title

%Program introduction
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

%User input question 1 and processing
procedure userInput1
    var answer1 : string
    put "Are you or your friend good at reasoning with and calming down people? (yes or  no)"
    get answer1
    if answer1 = "yes" then
        ending1 := ending1 + 1
    elsif answer1 = "no" then
        ending1 := ending1
    else
        put "Error. Please respond 'yes' or 'no'."
        userInput1
    end if
end userInput1

%User input question 2 and processing
procedure userInput2
    var answer2 : string
    put "Are you or your friend able to fight and defend yourself? (yes or no)"
    get answer2
    if answer2 = "yes" then
        ending1 := ending1 + 1
    elsif answer2 = "no" then
        ending1 := ending1
    else
        put "Error. Please respond 'yes' or 'no'."
        userInput2
    end if
end userInput2

%User input question 3 and processing
procedure userInput3
    var answer3 : string
    put "Can you or your friend easily access money after escaping and come back? (yes orno)"
    get answer3
    if answer3 = "yes" then
        ending2 := ending2 + 1
    elsif answer3 = "no" then
        ending2 := ending2
    else
        put "Error. Please respond 'yes' or 'no'."
        userInput3
    end if
end userInput3

%User input question 4 and processing
procedure userInput4
    var answer4 : string
    put "Are you or your friend comfortable with waiting in the castle for the other to  come back, and you trust each other? (yes or no)"
    get answer4
    if answer4 = "yes" then
        ending2 := ending2 + 1
    elsif answer4 = "no" then
        ending2 := ending2
    else
        put "Error. Please respond 'yes' or 'no'."
        userInput4
    end if
end userInput4

%User input question 5 and processing
procedure userInput5
    var answer5 : string
    put "Can you and your friend swim? (yes or no)"
    get answer5
    if answer5 = "yes" then
        ending3 := ending3 + 1
    elsif answer5 = "no" then
        ending3 := ending3
    else
        put "Error. Please respond 'yes' or 'no'."
        userInput5
    end if
end userInput5

%User input question 6 and processing
procedure userInput6
    var answer6 : string
    put "Is the water dangerous to swim in? (e.g. there are crocodiles or the current is too strong)? (yes or no)"
    get answer6
    if answer6 = "yes" then
        ending3 := ending3 - 1
    elsif answer6 = "no" then
        ending3 := ending3 + 1
    else
        put "Error. Please respond 'yes' or 'no'."
        userInput6
    end if
end userInput6

%Program processing and output
procedure display
    if ending2 = 2 then
        put "You should use the boat to escape the castle then come back for your friend     with more money to get them out, or vice versa."
    elsif ending3 = 2 then
        put "You should swim across the river."
    elsif ending1 = 2 then
        put "You should go out to the bridge and confront the madman to escape."
    else
        put "You should call the police to come and get you out of the castle."
    end if
end display

intro
userInput1
userInput2
userInput3
userInput4
userInput5
userInput6
display
