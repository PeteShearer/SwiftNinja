enum MathError: Error {
    case DivideByZero
    case TooLarge
}

/*
 // Old way from Lesson 016
func divideFiveBy(theNumber dividend: Int) throws -> Int {
    if (dividend == 0) {
        throw MathError.DivideByZero
    }
    
    if (dividend > 5) {
        throw MathError.TooLarge
    }
    
    return 5 / dividend
}
 */

// New way expressing our intent with guard
func divideFiveBy(theNumber dividend: Int) throws -> Int {
    guard (dividend != 0) else {
        throw MathError.DivideByZero
    }
    
    guard (dividend <= 5) else {
        throw MathError.TooLarge
    }
    
    return 5 / dividend
}

do {
    // print(try divideFiveBy(theNumber: 6))
    // print(try divideFiveBy(theNumber: 0))
    print(try divideFiveBy(theNumber: 4))
}
catch MathError.DivideByZero {
    print ("You cannot pass in a zero")
}
catch MathError.TooLarge {
    print ("You must provide a number that is less than or equal to five")
}


