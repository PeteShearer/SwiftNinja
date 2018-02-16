/* // This cannot handle errors
func divideFiveBy(theNumber dividend: Int) -> Int {
    return 5 / dividend
}
 */

/* // Not safe, no one knows this could throw an error.
func divideFiveBy(theNumber dividend: Int) -> Int {
    if (dividend == 0) {
        fatalError("Parameter 'theNumber' cannot be zero")
    } else {
        return 5 / dividend
    }
}
 */

enum MathError: Error {
    case DivideByZero
    case TooLarge
}

/* // Still no good, no "throws" in signature
func divideFiveBy(theNumber dividend: Int) -> Int {
    if (dividend == 0) {
        throw MathError.DivideByZero
    } else {
        return 5 / dividend
    }
}
 */

// Finally got it right
func divideFiveBy(theNumber dividend: Int) throws -> Int {
    if (dividend == 0) {
        throw MathError.DivideByZero
    }
    
    if (dividend > 5) {
        throw MathError.TooLarge
    }
    
    return 5 / dividend
}

// try! means you don't care about runtime errors.  It isn't usually a best practice
// No issue
print(try! divideFiveBy(theNumber: 5))

// Issue! "fatal error: 'try!' expression unexpectedly raised an error: MathError.DivideByZero"
//print(try! divideFiveBy(theNumber: 0))

// Finally, some sane code!
do {
    print(try divideFiveBy(theNumber: 0))
}
catch {
    print("Oops, we kind of botched this one")
}


do {
    //print(try divideFiveBy(theNumber: 0))
    print(try divideFiveBy(theNumber: 6))
}
catch MathError.DivideByZero {
    print ("You cannot pass in a zero")
}
catch MathError.TooLarge {
    print ("You must provide a number that is less than or equal to five")
}
