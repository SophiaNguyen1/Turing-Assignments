%Declaration Section
var number : int
%Program Title
procedure title (programTitle : string)
    var len : int := length (programTitle)
    cls
    locate (1, 40 - len div 2)
    put programTitle
    put ""
end title
%Program displayRand
procedure displayRand
    title ("Random Numbers")
    randint (number, 110, 135)
    put "A random number from 110 to 135 is: ", number
    delay (300)
end displayRand
%Main Program
loop
    displayRand
    exit when number = 121 or number = 130
end loop
%End of Program
