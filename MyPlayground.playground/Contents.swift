// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- EXTENSIONS -----
// Extensions add new functionality to existing classes, structs and other types

// Extend a Double to work with different distance units
// The Double by default is in meters and we can convert to other types by appending a dot syntax

extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var ft: Double { return self * 3.28 }
    var inch: Double { return self * 39.37 }
    
    // Add a method to Double for squares
    mutating func square() -> Double {
        let sqr = self * self
        return sqr
    }
}

// Convert 1 meter into inches
let oneMeter = 1.0.inch
print("One Meter is \(oneMeter) inches")

// Get the square
var randNum2: Double = 5
print("Square of 5 : \(randNum2.square())")
