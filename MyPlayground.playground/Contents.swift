import Cocoa

let vollunteerCounts = [1,3,40,32,2,53,77,13]

let volunteersSorted = vollunteerCounts.sorted{$0 < $1}

func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10000
}
var stopLights = 4
if let newTownPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10500, condition: evaluate) {
    stopLights = newTownPlanByAddingLightsToExistingLights(4, stopLights)
}
print("Knowhere has \(stopLights) stoplights.")

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int{
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
