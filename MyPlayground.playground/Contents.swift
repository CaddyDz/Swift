// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- LOOPING -----

// ----- FOR LOOP ------

var array4 = [1, 2, 3]

// Iterate through array
for item in array4 {
    print(item)
}

// Iterate with a range
for i in 1...5 {
    print(i)
}

// ----- WHERE -----
// Print only evens
for i in 1...10 where i % 2 == 0 {
    print("Even : \(i)")
}

// ----- WHILE LOOP -----
var i: Int = 1
while i < 10 {
    if i % 2 == 0 {
        i += 1
        // Continue jumps back to the beginning of the loop
        continue
    }
    if i == 7 {
        
        // Break ends the loop
        break
    }
    
    print(i)
    i += 1
}

// ----- REPEAT WHILE -----

// Generate a random number
let magicNum: UInt32 = arc4random_uniform(10)
var guess: UInt32 = 0

repeat {
    print("Guess : \(guess)")
    guess += 1
} while (magicNum != guess)

print("Magic Number was \(magicNum)")

