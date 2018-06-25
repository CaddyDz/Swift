import Cocoa

enum TextAlignment {
    case left
    case right
    case center
}

var alignment = TextAlignment.left

switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
}
