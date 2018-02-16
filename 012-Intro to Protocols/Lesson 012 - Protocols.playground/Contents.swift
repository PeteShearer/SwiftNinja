/*
 // Protocols can act like interfaces in other languages
 
protocol Car {
    
}

class Camry: Car {
    
}

var genericCar: Car

genericCar = Camry()

print (genericCar) // <-- Prints Camry
 */

protocol Car {
    var numberOfCylinders: Int {get}
    var color: String {get set}
}

/*
// If we leave this blank, we get errors
class Camry: Car {
    
}
 // error: type 'Camry' does not conform to protocol 'Car' 
 // note: protocol requires property 'numberOfCylinders' with type 'Int'
 // note: protocol requires property 'color' with type 'String'
 */

// Instead, we have to define "the minimum"
class Camry: Car {
    var numberOfCylinders: Int { return 6 }
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

var genericCar: Car
genericCar = Camry(color: "Black")

print(genericCar.color) // <-- Prints Black

// We can add Protocols to classes we don't even own retroactively!!!

protocol BiggieSize {
    var doubleUp: String {get}
}

extension String: BiggieSize {
    var doubleUp: String {
        return "\(self)\(self)"
    }
}

func usingAProtocolAsAParameter(input: BiggieSize) {
    print(input.doubleUp)
}

usingAProtocolAsAParameter(input: "Pete") // <-- prints PetePete

protocol A {
    var foo: String {get set}
    func talk() -> Void
}

protocol B {
    var bar: String {get set}
    func talkAlso() -> Void
}

func demonstrateIntersection(input: A & B) -> Void {
    input.talk()
    input.talkAlso()
}

class onlyHasA: A {
    var foo: String = ""
    
    init(foo: String) {
        self.foo = foo
    }
    
    func talk() -> Void {
        print(self.foo)
    }
}

class onlyHasB: B {
    var bar: String = ""
    
    init(bar: String) {
        self.bar = bar
    }
    
    func talkAlso() -> Void {
        print(self.bar)
    }
}

class hasBoth: A, B {
    var foo: String = ""
    var bar: String = ""
    
    init(foo: String, bar: String) {
        self.foo = foo
        self.bar = bar
    }
    
    func talk() -> Void {
        print(foo)
    }
    
    func talkAlso() -> Void {
        print(bar)
    }
}

var aVariable = onlyHasA(foo: "FOOO!")
var bVariable = onlyHasB(bar: "BARRRRR!")
var bothVariable = hasBoth(foo: "FOOOO!", bar: "BARRRR!")

// error: argument type 'onlyHasA' does not conform to expected type 'protocol<A, B>'
// demonstrateIntersection(aVariable)
// error: argument type 'onlyHasB' does not conform to expected type 'protocol<A, B>'
// demonstrateIntersection(bVariable)

demonstrateIntersection(input: bothVariable) // <-- WORKS!





