// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

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
