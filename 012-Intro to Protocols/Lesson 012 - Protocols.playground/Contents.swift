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

// We can add Protocols to classes we don't even own!!!

protocol BiggieSize {
    var doubleUp: String {get}
}

extension String: BiggieSize {
    var doubleUp: String {
        return "\(self)\(self)"
    }
}

var name:BiggieSize = "Pete"
print(name.doubleUp) // <-- prints PetePete







