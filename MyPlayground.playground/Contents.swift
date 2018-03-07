// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- FILTER -----
// Used to filter out values in an array
let nums2 = [1, 2, 3, 4, 5, 6]

let evenNums = nums2.filter {
    (num: Int) -> Bool in
    return num % 2 == 0
}

print(evenNums) 
