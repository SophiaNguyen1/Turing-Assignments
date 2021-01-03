%April 14th, 2018
%Sophia and Cherie
%Ms. Krasteva
%This program runs a trivia riddle quiz.
var score : int := 0

procedure intro
    put "Hello! Welcome to our riddle quiz!"
    put ""
end intro

procedure question1
    var answer1 : string
    put "R1: You can drop me from the tallest building and I'll be fine, but if you drop me in water I die. What am I?"
    get answer1
    if answer1 = "paper" then
	score := score + 1
	put "Good job! The answer was paper."
    else
	score := score
	put "Sorry, the answer was paper."
    end if
end question1

procedure question2
    var answer2 : string
    put ""
    put "R2: I live without a body, hear without ears, speak without a mouth, to which   the air alone gives birth. What am I?"
    get answer2
    if answer2 = "echo" then
	score := score + 1
	put "Good job! The answer was echo."
    else
	score := score
	put "Sorry, the answer was echo."
    end if
end question2

procedure question3
    var answer3 : string
    put ""
    put "R3: I fly without wings, I cry without eyes. What am I?"
    get answer3
    if answer3 = "cloud" then
	score := score + 1
	put "Good job! The answer was a cloud."
    else
	score := score
	put "Sorry, the answer was a cloud."
    end if
end question3

procedure question4
    var answer4 : string
    put ""
    put "R4: The more I take, the more I leave behind. What am I?"
    get answer4
    if answer4 = "footsteps" then
	score := score + 1
	put "Good job! The answer was footsteps."
    else
	score := score
	put "Sorry, the answer was footsteps."
    end if
end question4

procedure showscore
    put ""
    put "Your score is ", score, " out of 4!"
end showscore

intro
question1
question2
question3
question4
showscore
