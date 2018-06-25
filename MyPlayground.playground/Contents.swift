import Cocoa

let vollunteerCounts = [1,3,40,32,2,53,77,13]

let volunteersSorted = vollunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
})
