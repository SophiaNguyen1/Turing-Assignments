%April 23, 2018
%Sophia and Meghan
%Ms. Krasteva
%This program helps you choose which university you should attend.

%Variable declaration
var ryerson : int
var uOfT : int
var uOfW : int
ryerson := 0
uOfT := 0
uOfW := 0

%Program title
procedure title
    locate (1, 23)
    put "Which university should you attend?"
    locate (2, 6)
    put "Ryerson University, University of Toronto, or University of Waterloo?"
    put ""
end title

%Program introduction
procedure intro
    var reply : string (1)
    title
    put "Take this quiz to find out which university would be the best for you to attend."
    put ""
    put "Press any key to start!"
    put ""
    getch (reply)
end intro

%User input question 1 and processing
procedure userInput1
    var interest : string
    put "What is your preferred area of study?"
    put "(a) science, (b) math or computer science, (c) athletics"
    get interest
    if interest = "a" then
	uOfT := uOfT + 4
    elsif interest = "b" then
	uOfW := uOfW + 4
    elsif interest = "c" then
	ryerson := ryerson + 4
    else
	put "Error. Please choose one of the options: a b or c"
	userInput1
    end if
end userInput1

%User input question 2 and processing
procedure userInput2
    var travel : string
    put "What school is the most convenient for you to travel to?"
    put "(a) Ryerson (b) UofT  (c) UofW"
    get travel
    if travel = "a" then
	ryerson := ryerson + 6
    elsif travel = "b" then
	uOfT := uOfT + 6
    elsif travel = "c" then
	uOfW := uOfW + 6
    else
	put "Error. Please choose one of the options: a b or c"
	userInput2
    end if
end userInput2

%User input question 3, 4, 5, 6 and processing
procedure userInput3
    var average, rAverage, tAverage, wAverage : real
    put "What is your overall average?"
    get average
    if average > 100 or average < 0 then
	put "Error. Put an average between 0 to 100."
	userInput3
    end if
    put "What is the acceptance average of your preferred program at Ryerson?"
    get rAverage
    if average > 100 or average < 0 then
	put "Error. Put an average between 0 to 100."
	userInput3
    end if
    put "What is the acceptance average of your preferred program at UofT?"
    get tAverage
    if average > 100 or average < 0 then
	put "Error. Put an average between 0 to 100."
	userInput3
    end if
    put "What is the acceptance average of your preferred program at UofW?"
    get wAverage
    if average > 100 or average < 0 then
	put "Error. Put an average between 0 to 100."
	userInput3
    end if
    if average >= rAverage then
	ryerson := ryerson + 10
	if average >= tAverage then
	    uOfT := uOfT + 10
	    if average >= wAverage then
		uOfW := uOfW + 10
	    end if
	end if
    end if
end userInput3

procedure userInput4
    var campus : string
    put "Which university's campus is the most attractive to you?"
    put "(a) Ryerson (b) UofT (c) UofW"
    get campus
    if campus = "a" then
	ryerson := ryerson + 4
    elsif campus = "b" then
	uOfT := uOfT + 4
    elsif campus = "c" then
	uOfW := uOfW + 4
    end if
end userInput4

%Program processing and output
procedure display
    if ryerson > uOfT and ryerson > uOfW then
	put "You should attend Ryerson University!"
    elsif uOfT > ryerson and uOfT > uOfW then
	put "You should attend University of Toronto!"
    elsif uOfW > ryerson and uOfW > uOfT then
	put "You should attend University of Waterloo!"
    elsif ryerson = uOfT and ryerson > uOfW then
	put "You should attend either Ryerson University or University of Toronto!"
    elsif ryerson = uOfW and ryerson > uOfT then
	put "You should attend either Ryerson University or University of Waterloo!"
    elsif uOfW = uOfT and uOfW > ryerson then
	put "You should attend either University of Toronto or University of Waterloo!"
    elsif uOfT = ryerson and uOfT > uOfW then
	put "You should attend either University of Toronto or Ryerson University!"
    elsif ryerson = uOfW and ryerson = uOfT then
	put "You are a perfect match for all three of these universities! You should attend  whichever one you feel destined to go to."
    end if
end display

%Main Program
intro
userInput1
userInput2
userInput3
userInput4
display
%End Program
