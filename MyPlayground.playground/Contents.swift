// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- REDUCE -----
// Reduces array values into one value

let nums2 = [1, 2, 3, 4, 5, 6]

let sum2 = nums2.reduce(0) {
    (x: Int, y: Int) -> Int in
    return x + y
}

print(sum2)
