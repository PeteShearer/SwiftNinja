
// This is how we declare that a variable is an optional
var id: Int? = 7

print(id) // <-- Prints Optional(7)

// Int? is Syntactic Sugar for Optional<Int>
var otherId: Optional<Int> = Optional<Int>(7)

print(id!) // <-- Prints 7
print(otherId!) // <-- Prints 7

var nilId: Int? = nil

// fatal error: unexpectedly found nil while unwrapping an Optional value
//print(nilId!)

// Safe way to handle it
// prints "Sorry, it was nil"
if let unwrappedId = nilId {
    print("The unwrapped value is \(unwrappedId)")
}
else {
    print("Sorry, it was nil")
}

// We can't do if/let just anywhere

// error: initializer for conditional binding must have Optional type, not 'Int'
/*
if let seven = 7 {
    print ("does this work?")
}
 */

// error: initializer for conditional binding must have Optional type, not 'Int'
/*
var nonOptional: Int = 8
if let eight = nonOptional {
    print ("how about this?")
}
*/

// Setting Sensible Defaults

// The if/let way
var incomingVariable1: Int? = nil
var internalVariable1: Int

if let unwrappedIncomingVariable1 = incomingVariable1 {
    internalVariable1 = unwrappedIncomingVariable1
}
else {
    internalVariable1 = 0
}

// The coalesce operator way
var incomingVariable2: Int? = nil
var internalVariable2: Int

internalVariable2 = incomingVariable2 ?? 0



