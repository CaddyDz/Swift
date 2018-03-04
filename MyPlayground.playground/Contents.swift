// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

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
