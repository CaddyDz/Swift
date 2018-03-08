// Gives access to Cocoa Framework API
import Cocoa

// Other random functions I need
import Darwin

// ----- CLASSES -----

class Animal {
    var name: String = "No Name"
    var height: Double = 0.0
    var weight: Double = 0.0
    var sound: String = "No Sound"
    
    // Assigns default values when an object is created
    // You can have many inits with different attributes
    
    // self is used to refer to attributes of the object that called for this method to execute
    init(name: String, height: Double, weight: Double, sound: String) {
        self.name = name
        self.height = height
        self.weight = weight
        self.sound = sound
    }
    
    func getInfo() {
        print("\(self.name) is \(self.height) cms tall and weighs \(self.weight) kgs and likes to say \(self.sound)")
    }
    
    // You can create overloaded methods if you change the attributes
    func getSum(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func getSum(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
}

var rover = Animal(name: "Rover", height: 38, weight: 12.7, sound: "Ruff")

rover.getInfo()
