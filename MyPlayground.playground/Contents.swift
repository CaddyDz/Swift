import Cocoa

var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}

var i = 1

while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

var shields = 5
var blasterOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    
    if blasterOverheating {
        print("Blasters are overheasted! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blasterOverheating = false
        blasterFireCount = 0
    }
    if blasterFireCount > 100 {
        blasterOverheating = true
        continue
    }
    // Fire blasters!
    print("Fire blasters!")
    
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}
