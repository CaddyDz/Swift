// Get current version of Swift xcrun swift -version in terminal
// File -> New -> Playground -> MacOS
// Open console -> View -> Debug Area -> Activate Console

/*
 Multiline comment
*/

// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// var declares this string variable
// Statements don't require ;
var hello = "Hello "

// You can define it is a string
var world: String = "World"

// Combine strings
var msg = hello + world

// You can place variables in print
print("Hello \(world)")

// ----- DATA TYPES -----

// Use let to define a constant
let pi = 3.14159265359

// Declare an int
var myAge: Int = 42

// Min and Max Integer Size
print("Min Int \(Int64.min)")
print("Max Int \(Int64.max)")

var pi2: Float = 3.1415
var pi3: Double = 3.1415

// Min and Max Doubles
print("Min Double \(DBL_MIN)")
print("Max Double \(DBL_MAX)")

// Max Float
print("Max Float \(Float.greatestFiniteMagnitude)")

// Booleans
var canVote: Bool = true

// Characters
var myGrade: Character = "A"

// Casting
var three: Double = 3.0
var two: Int = 2

// This would be an error without the cast
var five = three + Double(two)

// Cast to Int
print("3 : \(Int(3.14))")

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
} else if (age > 5) && (age <= 18){
	var grade: Int = age - 5
	print("Go to Grade \(grade)")
} else {
	print("Go to College")
}

// Or logical operator
var income: Double = 12000
var gpa: Double = 3.7

print("Get Grant : \((income < 15000) || (gpa >= 3.8))")

print("")

// Not operator
print("Not True : \(!true)")

// ----- TERNARY OPERATOR -----
// Assigns 1 of 2 values depending on condition

var canDrive: Bool = age >= 16 ? true : false

// ----- SWITCH -----
// Matches a limited number of values and doesn't all
// through after a match

let ingredient = "pasta"

switch ingredient {
	// Matches for tomatoes or pasta
	case "tomatoes", "pasta":
		print("Spaghetti")
		// fallthrough matches the next case even if
		// there is no match
	case "beans":
		print("Burrito")
	case "potatoes":
		print("Mashed Potatoes")
	default:
		print("Water")
}

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

// ----- MATH -----

print("5 + 4 = \(5 + 4)")
print("5 - 4 = \(5 - 4)")
print("5 * 4 = \(5 * 4)")
print("5.0 / 4.0 = \(5.0 / 4.0)")
print("5 % 4 = \(5 % 4)")

// ----- ORDER OF OPERATIONS -----
print("4 + 5 * 10 = \(4 + 5 * 10)")
print("(4 + 5) * 10 = \((4 + 5) * 10)")

// Shortcuts
var randNum: Int = 5
randNum += 1
randNum -= 1

// You can't do randNum++ in Swift 3?

// Math Functions
print("abs(-5) = \(abs(-5))")
print("floor(5.5) = \(floor(5.5))")
print("ceil(5.4) = \(ceil(5.4))")
print("max(5,4) = \(max(5,4))")
print("min(5,4) = \(min(5,4))")
print("pow(5,2) = \(pow(5,2))")
print("sqrt(25) = \(sqrt(25))")
print("log(2.71828) = \(log(2.71828))")

// There is also sin, cos, tan, asin, acos, atan
// sinh, cosh, tanh

// ----- STRINGS -----
// A string of characters that are passed by value
// Escape Characters : \\ \t \n \" \'
var randStr = "This is a random string"
var randStr2 = " and here is another"

// Join strings
var randStr3 = randStr + randStr2

// String length
print("Length : \(randStr3.characters.count)")

// Get the first character
print("First : \(randStr3[randStr3.startIndex])")

// Get the 5th character
let index5 = randStr3.index(randStr3.startIndex, offsetBy: 5)
print("5th : \(randStr3[index5])")

// Check if string is empty
print("Empty : \(randStr.isEmpty)")

// Insert a character at an index
randStr2.insert("A", at: randStr2.startIndex)

// Insert a string at an index
randStr2.insert(contentsOf: " string ".characters, at: randStr2.index(randStr2.startIndex, offsetBy: 2))
print(randStr2)

// Get a substring
let startIndex = randStr2.index(randStr2.startIndex, offsetBy: 2)
let endIndex = randStr2.index(randStr2.startIndex, offsetBy: 9)
let stringRange = startIndex ..< endIndex
let subStr = randStr2.substring(with: stringRange)

// Replace a string
// Check if there is a match
if let hereMatch = randStr2.range(of: "here"){
	randStr2.replaceSubrange(hereMatch, with: "there")
}
print(randStr2)

// ----- ARRAYS -----
// Stores values of the same type

// Make empty array
var array1 = [Int]()

// Check if array is empty
print("Empty \(array1.isEmpty)")

// Add value to array
array1.append(5)

// Add another item
array1 += [7, 9]

// Get array item
print("Index 1 : \(array1[1])")

// Change value at index
array1[0] = 4

// Insert at an index
array1.insert(10, at: 3)

// Remove item
array1.remove(at: 3)

// Change multiple values
array1[0...2] = [1,2,3]

// Length of array
print("Length : \(array1.count)")

// Fill array with a value
var array2 = Array(repeating: 0, count: 5)

// Combine arrays
var array3 = array1 + array2

// Iterate through an array
for item in array3 {
	print(item)
}

// Get index and value
for (index, value) in array3.enumerated() {
	print("\(index) : \(value)")
}

// ----- LOOPING -----

// ----- FOR LOOP -----

var array4 = [1,2,3]

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

/*
repeat {
	print("Guess : \(guess)")
	guess += 1
} while (magicNum != guess)

print("Magic Number was \(magicNum)")

*/

// ----- DICTIONARIES -----
// Stores unordered lists of key value pairs

// Create empty dictionary
var dict1 = [Int: String]()

// Check if empty
print("Empty : \(dict1.isEmpty)")

// Create an item with index of 1
dict1[1] = "Paul Smith"

// Create a dictionary with a string key
var cust: [String: String] = ["1": "Sally Marks", "2": "Paul Marks"]

// Size of dictionary
print("Size : \(cust.count)")

// Add an item
cust["3"] = "Doug Holmes"

// Change a value
cust["3"] = "Doug Marks"

// Get a value
if let name = cust["3"] {
	print("Index 3 : \(name)")
}

// Remove a key value pair
cust["3"] = nil

// Iterate through a dictionary
for (key, value) in cust {
	print("\(key) : \(value)")
}

// ----- TUPLES -----
// Tuples are finite group of values that are related

let height: Double = 6.25
let weight: Int = 175

// Create a tuple
let myData = (height, weight)

// Access values
print("Height : \(myData.0)")

// You can name values
let myData2 = (height: 6.25, weight: 175)

print("Weight : \(myData2.weight)")

// ----- OPTIONAL -----
// Optionals are used to indicate that there may
// not be a value. Everything that can have a
// value of nil should be declared optional

// Declare an optional
var politicalParty: String?
politicalParty = "Independent"

// Check for nil
if politicalParty != nil {

	// Get the value (Forced Unwrapping)
	let party = politicalParty!
	print("Party : \(party)")
}

// Optional binding is used to check if an optional
// has a value
if let party = politicalParty {
	print("Party : \(party)")
} else {
	print("No Party")
}

// If nil use coalescing operator to assign a value
let party = politicalParty ?? "No Party"

// ----- FUNCTIONS -----

// Define your parameter types
func getSum(num1: Int, num2: Int){
	print("Sum : \(num1 + num2)")
}

getSum(num1: 5,num2: 6)

// Define your return type and you can define
// default values
func getSum2(num1: Int, num2: Int = 1) -> Int{
	return num1 + num2
}

print("Sum : \(getSum2(num1: 8, num2: 6))")

// A variadic parameter allows for an unknown
// number of parameters
func getSum3(nums: Int...) -> Int{
	var sum: Int = 0
	for num in nums {
		sum += num
	}
	return sum
}

print("Sum : \(getSum3(nums: 1,2,3,4,5))")

// Nested functions are only callable by the enclosing
// function

func doMath(num1: Double, num2: Double){
	func mult() -> Double{
		return num1 / num2
	}

	print("Mult : \(mult())")
}

doMath(num1: 5.0, num2: 6.0)

// Return multiple values
func twoMults(num: Int) -> (two: Int, three: Int){
	let two: Int = num * 2
	let three: Int = num * 3
	return (two, three)
}

let mults = twoMults(num: 2)

print("2 Mults : \(mults.two), \(mults.three)")

// ----- CLOSURES -----
// Closures are functions that don't require a name
// or function definition

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
let numbers = [8,9,2,4,1,0,7]

// Create a function that returns a Bool stating
// if 1 value is greater then the other

let sortedNums = numbers.sorted(by: {
	x, y in x < y
})

for i in sortedNums{
	print(i)
}

// Square every item in an array with map
// map excepts a closure

let squaredNums = numbers.map {
	(num: Int) -> String in
	"\(num * num)"
}

print(squaredNums)

// Return a function

func funcMaker(val: Int) -> (Int) -> Int {
	func addVals(num1: Int) -> Int{
		return num1 + val
	}

	return addVals
}

let add4 = funcMaker(val: 4)

print("4 + 5 = \(add4(5))")

// Pass a function as a parameter
func doMath2(_ mathFunc: (Int, Int) -> Int, val: Int){
	print("Sum : \(mathFunc(val, val))")
}

func addNums(a: Int, b: Int) -> Int {
	return a + b
}

doMath2(addNums, val: 5)

// ----- FILTER -----
// Used to filter out values in an array
let nums2 = [1,2,3,4,5,6]

let evenNums = nums2.filter{
	(num: Int) -> Bool in
	return num % 2 == 0
}

print(evenNums)

// ----- REDUCE -----
// Reduces array values into one value
let sum2 = nums2.reduce(0) {
	(x: Int, y: Int) -> Int in
	return x + y
}

print(sum2)

// ----- ENUMERATIONS -----
// Define types with a limited number of cases

enum Emotion {
	case joy
	case anger
	case fear
	case disgust
	case sad
}

var feeling = Emotion.joy

// change the value
feeling = .anger

// Check value
print("Angry : \(feeling == .anger)")

// ----- STRUCTS -----
// Structs group related data together

struct Rectangle {
	var height = 0.0
	var length = 0.0

	// You can include functions
	func area() -> Double{
		let area = height * length
		return area
	}
}

// Create a Rectangle
let myRect = Rectangle(height: 10.0, length: 5.0)

print("Area : \(myRect.height) * \(myRect.length) = \(myRect.area())")

// ----- CLASSES -----

class Animal {
	var name: String = "No Name"
	var height: Double = 0.0
	var weight: Double = 0.0
	var sound: String = "No Sound"

	// Assigns default values when an object is created
	// You can have many inits with different attributes

	// self is used to refer to attributes of the object
	// that called for this method to execute
	init(name: String, height: Double, weight: Double, sound: String){
		self.name = name
		self.height = height
		self.weight = weight
		self.sound = sound
	}

	func getInfo(){
		print("\(self.name) is \(self.height) cms tall and weighs \(self.weight) kgs and likes to say \(self.sound)")
	}

	// You can create overloaded methods if you change
	// the attributes
	func getSum(num1: Int, num2: Int) -> Int{
		return num1 + num2
	}

	func getSum(num1: Double, num2: Double) -> Double{
		return num1 + num2
	}

}

var rover = Animal(name: "Rover", height: 38, weight: 12.7, sound: "Ruff")

rover.getInfo()

// ----- INHERITANCE -----
class Dog: Animal{

	// Dog can extend or override methods in Animal
	// A func marked as final can't be overridden by
	// subclasses

	final func digHole(){
		print("\(self.name) digs a hole")
	}

	override func getInfo(){

		// You can call a method in the superclass
		super.getInfo()
		print("and digs holes")
	}

}

var spot = Dog(name: "Spot", height: 38, weight: 12.7, sound: "Ruff")

// Dog inherits everything in Animal
spot.getInfo()

spot.digHole()

// You can pass any subclass type and the right method
// is automatically called
func printGetInfo(animal: Animal){
	animal.getInfo()
}

printGetInfo(animal: rover)
printGetInfo(animal: spot)


// You can set and get values with the dot operator
spot.name = "Doug"
print(spot.name)

// Testing overloaded methods
print("2 + 5 = \(spot.getSum(num1: 2,num2: 5))")
print("2.2 + 5.6 = \(spot.getSum(num1: 2.2,num2: 5.6))")

// Check the class type
print("Is Spot a Dog : \(spot is Animal)")

// ----- PROTOCOLS -----
// Protocols are like interfaces in other languages
// When you adopt a protocol you agree to define the
// behavior it describes

protocol Flyable {
	// Define if getters and setters are available
	// Put optional before var if you want it to be
	// optional
	var flies: Bool { get set }

	// You define the header for a func but nothing else
	func fly(distMiles: Double) -> String

}

// Adopt multiple protocols class ClassName : prot1, prot2
class Vehicle : Flyable{
	var flies: Bool = false
	var name: String = "No Name"

	func fly(distMiles: Double) -> String {
		if (self.flies){
			return "\(self.name) flies \(distMiles) miles"
		} else {
			return "\(self.name) can't fly"
		}
	}
}

var fordF150 = Vehicle()
fordF150.name = "Ford F-150"
fordF150.flies = false
print(fordF150.fly(distMiles: 10))

// ----- ERROR HANDLING -----
// Used to handle errors gracefully

// Define our error by defining a type of the Error protocol

enum DivisionError: Error{
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
// catch the error and handle it

do {
	try divide(num1: 4, num2: 0)
} catch DivisionError.DivideByZero {
	print("Can't Divide by Zero")
}

// ----- EXTENSIONS -----
// Extensions add new functionality to existing classes, structs
// and other types

// Extend a Double to work with different distance units
// The Double by default is in meters and we can convert
// to other types by appending a dot syntax

extension Double {
	var km: Double { return self * 1000.0 }
	var m: Double { return self }
	var ft: Double { return self * 3.28 }
	var inch: Double { return self * 39.37}

	// Add a method to Double for squares
	mutating func square() -> Double {
		let sqr = self * self
		return sqr
	}
}

// Convert 1 meter into inches
let oneMeter = 1.0.inch
print("One Meter is \(oneMeter) inches")

// Get the square
var randNum2: Double = 5
print("Square of 5 : \(randNum2.square())")
