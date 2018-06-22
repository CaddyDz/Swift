import Cocoa

func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to your playground.")
    }
}

printPersonalGreetings(to: "Ales", "Chris", "Drew", "Pat")

func divisionDescriptionFor(numerator: Double, denominator: Double) {
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
