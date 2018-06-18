// Optional chaining
import Cocoa

var errorCodeString = "404"
var errorDescription: String?
if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger + 200): resource was not found"
}

var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription
