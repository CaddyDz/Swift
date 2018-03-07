// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

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
