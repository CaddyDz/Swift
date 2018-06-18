import Cocoa

var errorCodeString: String?
errorCodeString = "404"
if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
        print("\(theError): \(errorCodeInteger)")
}
