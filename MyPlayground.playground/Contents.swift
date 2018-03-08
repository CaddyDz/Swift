// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- PROTOCOLS -----
// Protocols are like interfaces in other languages
// When you adopt a protocol you agree to define the behavior it describes

protocol Flyable {
    // Define if getters and setters are available
    // Put optional before var if you want it to be optional
    var flies: Bool { get set }
    
    // You define the header for a func but nothing else
    func fly(distMiles: Double) -> String
    
}

// Adopt multiple protocols class ClassName : prot1, prot2
class Vehicle : Flyable {
    var flies: Bool = false
    var name: String = "No Name"
    
    func fly(distMiles: Double) -> String {
        if (self.flies) {
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
