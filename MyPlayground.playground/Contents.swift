// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- ERROR HANDLING -----
// Used to handle errors gracefully

// Define our error by defining a type of the Error protocol

enum DivisionError: Error {
    case DivideByZero
}

// Define we want the error to get thrown from the function
func divide(num1: Float, num2: Float) throws -> Float {
    guard num2 != 0.0 else {
        throw DivisionError.DivideByZero
    }
    return num1/num2
}

// Wrap code that could trigger an error in a do catch block
// Catch the error and handle it

do {
    try divide(num1: 4, num2: 0)
} catch DivisionError.DivideByZero {
    print("Can't Divide by Zero")
}
