// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- SWITCH -----
// Matches a limited number of values and doesn't all
// through after a match

// You can also match ranges
let testScore: Int = 89

switch testScore {
    case 93...100:
        print("You got an A")
    case 85...92:
        print("You got a B")
    case 77...84:
        print("You got a C")
    case 69...76:
        print("You got a D")
    default:
        print("You got an F")
}
