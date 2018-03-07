// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- OPTIONAL -----
// Optionals are used to indicate that there may not be a value.
// Everything that can have a value of nil should be declared optional

// Declare an optional
var politicalParty: String?
politicalParty = "Independent"

// Check for nil
if politicalParty != nil {
    
    // Get the value (Forced Unwrapping)
    let party = politicalParty!
    print("Party : \(party)")
}

// Optional binding is used to check if an optional has a value
if let party = politicalParty {
    print("Party : \(party)")
} else {
    print("No Party")
}

// If nil use coalescing operator to assign a value
let party = politicalParty ?? "No Party"
