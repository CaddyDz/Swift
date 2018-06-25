import Cocoa

enum TextAlignment {
    case left
    case right
    case center
}

var alignment = TextAlignment.left
alignment = .right

switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
default:
    print("center aligned")
}
