import Cocoa

enum TextAlignment: Int {
	case left = 20
	case right = 30
	case center = 40
	case justify = 50
}

var alignment = TextAlignment.justify

print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

// Create a raw value
let myRawValue = 100

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
	// Conversion succeeded!
	print("successfully converted \(myRawValue) into a TextAlignment")
} else {
	// Conversion failed
	print("\(myRawValue) has no corresponding TextAlignment case")
}

switch alignment {
case .left:
	print("left aligned")
case .right:
	print("right aligned")
case .center:
	print("center aligned")
case .justify:
	print("justified")
}

enum ProgrammingLanguage: String {
	case swift
	case objectiveC = "objective-c"
	case c
	case cpp = "c++"
	case java = "java"
}

let myFavoriteLanguage = ProgrammingLanguage.c
print("My favorite programming language is \(myFavoriteLanguage)")

enum Lightbulb {
	case on
	case off
	func sufraceTemperature(forAmbientTemperature ambient: Double) -> Double {
		switch self {
		case .on:
			return ambient + 150.0
		case .off:
			return ambient
		}
	}
	mutating func toggle() {
		switch self {
		case .on:
			self = .off
		case .off:
			self = .on
		}
	}
}

var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.sufraceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")
bulb.toggle()
bulbTemperature = bulb.sufraceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

enum ShapeDimensions {
	// point has no associated value - it is dimensionless
	case point
	// square's associated value is the length of one side
	case square(side: Double)

	// rectangle's associated value defines its width and height
	case rectangle(width: Double, height: Double)

	func area() -> Double {
		switch self {
		case .point:
			return 0
		case let .square(side: side):
			return side * side
		case let .rectangle(width: w, height: h):
			return w * h
		}
	}
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")

enum FamilyTree {
	case noKnownParents
	indirect case oneKnownParent(name: String, ancestor: FamilyTree)
	indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestor: FamilyTree)
}

let fredAncestors = FamilyTree.twoKnownParents(fatherName: "Fred Sr.", fatherAncestors: .oneKnownParent(name: "Beth", ancestor: .noKnownParents), motherName: "Marsha", motherAncestor: .noKnownParents)
