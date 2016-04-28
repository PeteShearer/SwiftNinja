func sayHello(name: String) -> String {
    return "Hello, " + name
}

print(sayHello("Dustin"))

func sayHelloIndependently(name: String) {
    print("Hello, \(name)")
}


/*
 // All functions actually return something, Swift assumes
 // Void if you don't provide a return type.  You can also 
 // be explicit and just tell Swift you wanted to return Void
 // Both of these functions behave the same way
func sayHelloIndependently(name: String) -> Void {
    print("Hello, \(name)")
}
 */

sayHelloIndependently("Urban")

func addNumbers(firstAddend: Int, secondAddend: Int) -> Int {
    return firstAddend + secondAddend
}

// Doesn't Work: error: missing argument label 'secondAddend:' in call addNumbers(1, 6)
// addNumbers(1, 6)

// Also doesn't work
// error: extraneous argument label 'firstAddend:' in call addNumbers(firstAddend: 1, secondAddend: 6)
// addNumbers(firstAddend: 1, secondAddend: 6)

// The right way
addNumbers(1, secondAddend: 6)

// A Better Way

func add (theNumber firstAddend: Int, toTheNumber secondAddend: Int) -> Int {
    return firstAddend + secondAddend
}


// "Add the number 8 to the number 9"... BEAUTIFUL
add(theNumber: 8, toTheNumber: 9)

