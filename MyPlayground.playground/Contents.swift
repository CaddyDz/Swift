import Cocoa

let vollunteerCounts = [1,3,40,32,2,53,77,13]

let volunteersSorted = vollunteerCounts.sorted{$0 < $1}

func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }
    return buildRoads
}
