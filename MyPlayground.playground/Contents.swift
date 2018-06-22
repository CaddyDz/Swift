import Cocoa

var movieRatings = ["Donnie Darko": 4, "Chunking Express": 5, "Brave Heart": 10]

print("I have rated \(movieRatings.count) movies.")

let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie")

if let lastRating = oldRating, let currentRating = movieRatings["Dark City"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
movieRatings["The Cbinet of Dr? Caligri"] = 5
movieRatings["Dark City"] = nil
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value).")
}
for movie in movieRatings.keys {
    print("User has rated \(movie)")
}

let watchedMovies = Array(movieRatings.keys)
