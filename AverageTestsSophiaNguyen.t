var greeting : string
put "Hello! This program calculates your marks and average mark for three tests."
delay (5000)

var mark1 : real
put "What mark did you score for your first test?"
get mark1
var totalmark1 : real
put "What mark was your first test out of?"
get totalmark1
var averagemark1 : real
put "Your mark for your first test was ", mark1 / totalmark1 * 100, "%"
put " "
delay (500)

var mark2 : real
put "What mark did you score for your second test?"
get mark2
var totalmark2 : real
put "What mark was your second test out of?"
get totalmark2
var averagemark2 : real
put "Your mark for your second test was ", mark2 / totalmark2 * 100, "%"
put " "
delay (500)

var mark3 : real
put "What mark did you score for your third test?"
get mark3
var totalmark3 : real
put "What mark was your third test out of?"
get totalmark3
var averagemark3 : real
put "Your mark for your third test was ", mark3 / totalmark3 * 100, "%"
put " "
delay (500)

var totalaverage : real
put "Congratulations! Your average mark for your three tests is ", (mark1 / totalmark1 * 100 + mark2 / totalmark2 * 100 + mark3 / totalmark3 * 100) / 3, "%"
delay (500)
put "Thanks for using my program! Made by: Sophia Nguyen"

