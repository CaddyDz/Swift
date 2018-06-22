import Cocoa

var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
for food in groceryBag {
    print(food)
}
let hasBananas = groceryBag.contains("Bananas")
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Tea"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)
