import Cocoa

func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func printPersonalGreeting(to name: String) {
    print("Hello \(name), welcome to your playground.")
}

printPersonalGreeting(to: "Matt")

func divisionDescriptionFor(numerator: Double, denominator: Double) {
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
