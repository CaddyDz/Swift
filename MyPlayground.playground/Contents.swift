import Cocoa

enum TextAlignment {
    case left
    case right
    case center
}

var alignment = TextAlignment.left
alignment = .right

if alignment == .right {
    print("We should right-align the text!")
}
