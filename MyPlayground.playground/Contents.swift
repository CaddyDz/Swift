// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- TUPLES -----
// Tuples are finite group of value that are related

let height: Double = 6.25
let weight: Int = 175

// Create a tuple
let myData = (height, weight)

// Access values
print("Height : \(myData.0)")

// You can name values
let myData2 = (height: 6.25, weight: 175)

print("Weight : \(myData2.weight)")
