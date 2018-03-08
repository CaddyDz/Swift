// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- STRUCTS -----
// Structs group related data together

struct Rectangle {
    var height = 0.0
    var length = 0.0
    
    // You can include functions
    func area() -> Double {
        let area = height * length
        return area
    }
}

// Create a Rectangle
let myRect = Rectangle(height: 10.0, length: 5.0)

print("Area : \(myRect.height) * \(myRect.length) = \(myRect.area())")

