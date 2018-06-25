import Cocoa

let vollunteerCounts = [1,3,40,32,2,53,77,13]

func sortedAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}

let volunteerSorted = vollunteerCounts.sorted(by: sortedAscending)
