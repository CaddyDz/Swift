// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- CLOSURES -----
// Closures are functions that don't require a name or functions definition

// A closure that excepts and returns an Int
var square: (Int) -> (Int) = {
    num in
    return num * num
}

print("5 Quared : \(square(5))")

// Assign a closure to another variable
var squareCopy = square
print("5 Quared : \(squareCopy(5))")

// You can reference any values outside the closure
let numbers = [8, 9, 2, 4, 1, 0, 7]

// Create a function that returns a Bool stating if 1 value is greater than the other

let sortedNums = numbers.sorted(by: {
    x, y in x < y
})

for i in sortedNums {
    print(i)
}

// Square every item in an array with map
// map excepts a closure

let squareNums = numbers.map {
    (num: Int) -> String in
    "\(num * num)"
}

print(squareNums)

// Return a function

func funcMaker(val: Int) -> (Int) -> Int {
    func addVals(num1: Int) -> Int {
        return num1 + val
    }
    
    return addVals
}

let add4 = funcMaker(val: 4)

print("4 + 5 = \(add4(5))")

// Pass a function as a parameter
func doMath2(_ mathFunc: (Int, Int) -> Int, val: Int) {
    print("Sum : \(mathFunc(val, val))")
}

func addNums(a: Int, b: Int) -> Int {
    return a + b
}

doMath2(addNums, val: 5)

