// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

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

// Change the value
feeling = .anger

// Check value
print("Angry : \(feeling == .anger)")
