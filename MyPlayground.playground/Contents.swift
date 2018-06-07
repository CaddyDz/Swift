import Cocoa

var str = "Hello, playground"

print("The maximum Int value is \(Int.max).")

print("The minimum Int value is \(Int.min).")

print("The maximum value for a 32-bit integer is \(Int32.max)")

print("The minimum value for a 32-bit integer is \(Int32.min)")

print("The maximum UInt value is \(UInt.max).")

print("The minimum UInt value is \(UInt.min)")

print("The maximum value for a 32-bit unsigned integer is \(UInt32.max)")

print("The minimum value for a 32-bit unsigned integer is \(UInt32.min)")

let numberOfPages: Int = 10 // Declares rge type explicitly
let numberOfChapters = 3 // Also of type Int, but inferred by the value

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

// Trouble ahead!
// let firstBadValue: UInt = -1
// let secondBadValue: Int8 = 200

print(10 + 20)
print(30 - 5)
print(5 * 6)

print(10 + 2 * 5) // 20, because 2 * 5 is evaluated first
print(30 - 5 - 5) // 20, because 30 - 5 is evaluated first

print((10 + 2) * 5) // 60, because (10 + 2) is now evaluated first
print(30 - (5 - 5)) // 30, because (5 - 5) is now evaluated first

print(11 / 3) // Prints 3

print(11 % 3) // Prints 2
print(-11 % 3) // Prints -2

var x = 10
x += 10 // IS equivalent to: x = x + 10
print("x has had 10 added to it and is now \(x)")
x -= 5 // Is equivalent to: x = x - 5
print("x has had 5 substracted from it and is now \(x)")

let y: Int8 = 120
// let z = y + 10
let z = y &+ 10
print("120 &+ 10 is \(z)")

let a: Int16 = 200
let b: Int8 = 50
// let c = a + b // Uh-oh!
let c = a + Int16(b)

let d1 = 1.1 // Implicitly Double
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 / 3.0)

if d1 == d2 {
    print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}

