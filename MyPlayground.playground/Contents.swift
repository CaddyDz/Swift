// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- CONDITIONALS -----

// ----- IF / ELSE -----

// Comparison Operators : > < >= <= == !=
// === : Checks if pointing to same reference
// !== : Checks if don't point at same reference

var age: Int = 8

if age < 5 {
    print("Go to Preschool")
} else if age == 5 {
    print("Go to Kindergarten")
} else if (age > 5) && (age <= 18) {
    var grade: Int = age - 5
    print("Go to Grade \(grade)")
} else {
    print("Go to College")
}

// Or logical operator
var income: Double = 12000
var gpa: Double = 3.7

print("Get Grant : \((income < 15000) || (gpa >= 3.8))")

// Not operator
print("Not True : \(!true)")
