// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

var age: Int = 8

// ----- SWITCH -----
// Matches a limited number of values and doesn't all throught after a match

let ingredient = "pasta"

switch ingredient {
    // Matches for tomatoes or pasta
    case "tomatoes", "pasta":
        print("Spaghetti")
        // fallthrough matches the next case even if there is no match
        fallthrough
    case "beans":
        print("Burrito")
    case "potatoes":
        print("Mashed Potatoes")
    default:
        print("Water")
}