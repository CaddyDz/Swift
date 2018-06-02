import Cocoa

var population: Int = 100000
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population >= 100000 {
    message = "\(population) is really large"
}
else {
    message = "\(population) is pretty big!"
}
print(message)

if !hasPostOffice {
    print("Where do we buy stamps?")
}
