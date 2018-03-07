// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- FUNCTIONS -----

// Define your parameter types
func getSum(num1: Int, num2: Int) {
    print("Sum : \(num1 + num2)")
}

getSum(num1: 5, num2: 6)

// Define your return type and you can define default values
func getSum2(num1: Int, num2: Int = 1) -> Int {
    return num1 + num2
}


print("Sum : \(getSum2(num1: 8, num2: 6))")

// A variadic parameter allows for an unknown number of parameters
func getSum3(nums: Int...) -> Int {
    var sum: Int = 0
    for num in nums {
        sum += num
    }
    return sum
}

print("Sum : \(getSum3(nums: 1, 2, 3, 4, 5))")

// Nested functions are only callable by the enclosing function

func doMath(num1: Double, num2: Double) {
    func mult() -> Double {
        return num1 / num2
    }
    
    print("Mult : \(mult())")
}

doMath(num1: 5.0, num2: 6.0)

// Return multiple values
func twoMults(num: Int) -> (two: Int, three: Int) {
    let two: Int = num * 2
    let three: Int = num * 3
    return (two, three)
}

let mults = twoMults(num: 2)

print("2 Mults : \(mults.two), \(mults.three)")
