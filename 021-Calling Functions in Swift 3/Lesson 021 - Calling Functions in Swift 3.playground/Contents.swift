//: Playground - noun: a place where people can play

import UIKit


func addNumbers(firstAddend: Int, secondAddend: Int) -> Int {
    return firstAddend + secondAddend
}

// Wrong
//addNumbers(4,6)

// Wrong - used to compile in Swift 2... no longer
// addNumbers(4, secondAddend: 6)

// Right!
addNumbers(firstAddend: 4, secondAddend: 6)



