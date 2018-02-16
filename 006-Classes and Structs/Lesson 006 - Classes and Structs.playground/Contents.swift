//String is a class
var blogName = "Swift Ninja"
blogName.lowercased()

/*
 // Without init method
class Car {
    var make: String = ""
    var model: String = ""
    var modelYear: Int = 0
    
    var numberOfDoors: Int = 0
    var color: String = ""
    var engineSize: String = ""
    
    
    func go() -> Void {
        print("VROOM!!!")
    }
}

var myCar = Car()
myCar.make = "Ford"
myCar.model = "Pinto"
myCar.modelYear = 1977
myCar.numberOfDoors = 2
myCar.color = "Blue"
myCar.engineSize = "4 cylinder"

myCar.go()
*/
// With init method
class Car {
    var make: String
    var model: String
    var modelYear: Int
    
    var numberOfDoors: Int
    var color: String
    var engineSize: String
    
    init(make: String, model: String, modelYear: Int,
         numberOfDoors: Int, color: String, engineSize: String) {
        self.make = make
        self.model = model
        self.modelYear = modelYear
        self.numberOfDoors = numberOfDoors
        self.color = color
        self.engineSize = engineSize
    }
    
    func go() -> Void {
        print("VROOM!!!")
    }
}

var myCar = Car(make: "Ford", model: "Pinto", modelYear: 1977,
                numberOfDoors: 2, color: "Blue", engineSize: "4 cylinder")

myCar.go()

struct Plane {
    var make: String
    var model: String
    
    init(make: String, model: String) {
        self.make = make
        self.model = model
    }
    
    func go() -> Void {
        print("WHOOSH!")
    }
}

var myPlane = Plane(make: "Boeing", model: "747")
myPlane.go()


var carOne = Car(make: "Ford", model: "Pinto", modelYear: 1977, numberOfDoors: 2, color: "Blue", engineSize: "4 cylinder")
var carTwo = carOne
var carThree = carOne

var planeOne = Plane(make: "Boeing", model: "747")
var planeTwo = planeOne
var planeThree = planeOne

print(carOne.color) // prints Blue
print(carTwo.color) // prints Blue
print(carThree.color) // prints Blue

print(planeOne.model) // prints 747
print(planeTwo.model) // prints 747
print(planeThree.model) // prints 747

carOne.color = "Black"
planeOne.model = "757"

// Because a class is by reference, everything is changed because all 
// variables just referred to the original one.  Change one, change them all!
print(carOne.color) // prints Black
print(carTwo.color) // prints Black
print(carThree.color) // prints Black

// Structs are by value.  They make a copy every time.  
// If you change one copy, nothing else is affected
print(planeOne.model) // prints 757
print(planeTwo.model) // prints 747
print(planeThree.model) // prints 747
