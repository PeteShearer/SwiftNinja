print("Hello World")

var helloMessage = "Hello World"
print (helloMessage)

2+2

7*7

"Hello" + " " + "World"

// error: cannot assign value of type 'Int' to type 'String'
// helloMessage = 4 // <-- This is illegal

helloMessage = "Bonjour World"
print(helloMessage)

var age = 42
print(age)
print(age*2)

// error: type annotation missing in pattern
// var thisWontWork // <-- Must declare implicitly or explicity
var currentYear:Int
currentYear = 2016
print(currentYear)

// currentYear++ (deprecated, use += 1)
currentYear += 1 // Same thing as currentYear++ OR currentYear = currentYear+1
print(currentYear)

var salary = 4000
//error: cannot convert value of type 'Int' to expected argument type 'inout Double'
//salary += 500.50

var hourlyWage:Double = 10
hourlyWage = 10.50
print(hourlyWage)

let myBirthYear = 1977
// error: cannot assign to value: 'myBirthYear' is a 'let' constant
// myBirthYear = 1978

// error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'

// print("I was born in " + myBirthYear)

// lame way
print ("I was born in " + String(myBirthYear))
print("I was born in \(myBirthYear)")
print("If I was 10 years older, I would have been born in \(myBirthYear-10)")


var favoriteColors = ["Black", "Blue"]
print(favoriteColors[0])
favoriteColors[1] = "Red"
favoriteColors[1]
favoriteColors

var favoriteFoods = [String]()
// fatal error: Index out of range
//favoriteFoods[0] = "Pizza"
favoriteFoods.append("Pizza")
favoriteFoods.append("Rice")
favoriteFoods

print(favoriteFoods[1])

// Your Homework: Make a playground where you set your name as a constant (I realize you could change your name in real life!).  Then set your age as a variable.  Print out two statements.  The first one should say, "My name is (name) and I am (age) years old.".  Then add 30 to your age.  Then print the statement "In 30 years, I will be (age)"




