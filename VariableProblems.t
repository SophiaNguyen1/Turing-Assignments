procedure GST
    var price : real
    var GST : real
    put "What is the price of payment (in dollars)?"
    get price
    GST := price * 0.08
    put "The GST for your price is ", GST, " dollars"
end GST
procedure feetToMetres
    var feet : real
    var metres : real
    put "What is the measurement in feet?"
    get feet
    metres := feet * 0.3042
    put "The measurement in metres is ", metres, " metres"
end feetToMetres
procedure gallonsToLitres
    var gallons : real
    var litres : real
    put "What is the amount in gallons?"
    get gallons
    litres := gallons * 3.7854118
    put "The amount in litres is ", litres, " litres"
end gallonsToLitres

procedure celsiusToFahrenheit
    var celsius : real
    var fahrenheit : real
    put "What is the temperature in celsius?"
    get celsius
    fahrenheit := celsius * 9 / 5 + 32
    put "The temperature converted to fahrenheit is ", fahrenheit, " degrees"
end celsiusToFahrenheit

procedure fahrenheitToCelsius
    var fahrenheit : real
    var celsius : real
    put "What is the temperature in fahrenheit?"
    get fahrenheit
    celsius := fahrenheit * 5 / 9 - 32
    put "The temperature converted to celsius is ", celsius, " degrees"
end fahrenheitToCelsius

procedure coneSurfaceArea
    var radius : real
    var slant : real
    var surfaceArea : real
    put "What is the radius of your cone?"
    get radius
    put "What is the slant of your cone?"
    get slant
    surfaceArea := radius ** 2 * 3.14 + radius * slant * 3.14
    put "The surface area of your cone is ", surfaceArea, " units"
end coneSurfaceArea

procedure average
    var test1 : real
    var test2 : real
    var average : real
    put "What was your mark for your first test (percentage)?"
    get test1
    put "What was your mark for your second test (percentage)?"
    get test2
    average := (test1 + test2) / 2
    put "Your average mark is ", average, "%"
end average

GST
feetToMetres
gallonsToLitres
celsiusToFahrenheit
fahrenheitToCelsius
coneSurfaceArea
average
