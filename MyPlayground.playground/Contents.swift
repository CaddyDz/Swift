// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- DATA TYPES -----

// Use let to define a constant
let pi = 3.14159265359

// Declare an int
var myAge: Int = 42

// Min and Max Integer Size
print("Min Int \(Int64.min)")
print("Max Int \(Int64.max)")

var pi2: Float = 3.1415
var pi3: Double = 3.1415

// Min and Max Doubles
print("Min Double \(DBL_MIN)")
print("Max Double \(DBL_MAX)")

// Max Float
print("Max Float \(Float.greatestFiniteMagnitude)")

// Booleans
var canVote: Bool = true

// Characters
var myGrade: Character = "A"

// Casting
var three: Double = 3.0
var two: Int = 2

// This would be an error without the cast
var five = three + Double(two)

// Cast to Int
print("3: \(Int(3.14))")
