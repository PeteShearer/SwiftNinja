// We can extend our own classes
class Post {
    var title: String = ""
    var author: String = ""
}

var lesson001 = Post()
lesson001.title = "Lesson 001 - Variables"
lesson001.author = "Pete"

extension Post {
    var heading: String {
        return "\(title) by \(author)"
    }
}

print(lesson001.heading) // Prints Lesson 001 - Variables by Pete


// We can extend system classes

extension String {
    func DoubleMeUp() -> String {
        return "\(self)\(self)"
    }
}

print("Swift".DoubleMeUp()) // <-- Prints SwiftSwift

// We can extend it again 

extension String {
    var squareOfLength: Int {
        return self.characters.count*self.characters.count
    }
    
    var firstLetter: String {
        if let returnValue = self.characters.first {
            return String(returnValue)
        }
        else {
            return ""
        }
    }
}

print("Swift".squareOfLength) // <-- Prints 25
print("Swift".firstLetter) // <-- Prints S



