// Simple If Statement
let age = 12

if age >= 18 {
    print("You can vote")
}
else {
    print("You cannot vote")
}

// Simple Switch Statement


let dayOfWeek = "Monday"

switch dayOfWeek {
case "Saturday", "Sunday":
    print("Party!")
case "Monday":
    print("Back to the Grind")
case "Wednesday":
    print("Hump Day")
default:
    print("Just another day")
}

/*
// No good.  Error '>' is not a prefix unary operator
// and '<' is not a prefix unary operator
let input = 42

switch input {
case >0:
    print("Positive")
case <0:
    print("Negative")
default:
    print("You are ZERO")
}
 */

/*
 // This doesn't work either
 // error: expression pattern of type 'Bool' cannot match values of type 'Int'
 
 let input2 = 42
 
 switch input2 {
 case input2 > 0:
 print("Positive")
 case input2 < 0:
 print("Negative")
 default:
 print("You are ZERO")
 }
 */

// The way to do this is like this
let input = 42

switch input {
case let i where i > 0:
    print("Positive")
case let i where i < 0:
    print("Negative")
default:
    print("You are ZERO")
}



/*
 // This doesn't work
 // error: switch must be exhaustive, consider adding a default clause
let guess = 7

switch guess {
case 0:
    print("Your guess is 0")
case let x where x > 0:
    print("Your guess is positive")
case let x where x < 0:
    print("Your guess is negative")
}
 */

let guess = 7

switch guess {
case 0:
    print("Your guess is 0")
case let x where x > 0:
    print("Your guess is positive")
case let x where x < 0:
    print("Your guess is negative")
default:
    print("I will never ever be hit")
}

var counter = 0

while (counter < 30) {
    print(counter)
    counter += 10
}


var repeatCounter = 100

repeat {
    print(repeatCounter)
    repeatCounter += 10
}
while repeatCounter < 30


for var i = 1; i <= 10; i += 1 {
    print(i)
}

// 1-10 (inclusive)
for i in 1...10 {
    print(i)
}

// 1-10 (exclusive, only goes to 9)
for i in 1..<10 {
    print(i)
}
