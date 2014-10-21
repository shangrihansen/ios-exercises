import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is \(cheese)."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
var mutableArray = numberArray
mutableArray.append(5)

mutableArray

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
var mutableDict = numberDictionary
mutableDict[5] = "five"

mutableDict

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for closedRange in 1...10 {
    println(closedRange)
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for halfClosedRange in 1..<11 {
    println(halfClosedRange)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let colt = [
    "name": "Colt Hansen",
    "rank": "admiral",
    "information": "Talks in his sleep",
    "favorite drink": "hot cocoa, straight up"]

let characters = [worf, picard, colt]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var faveDrinks = [String] ()
    for key in characters {
        faveDrinks.append(key["favorite drink"]!)
    }
    return faveDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]
let beasties = ["no", "sleep", "til", "Brooklyn!"]

// WORK HERE - make your function and pass `strings` in
// I know, not the best name. I couldn't help myself...
func innieOuttieSemi(innieArray:Array<String>) -> String {
    let outtie = ";".join(innieArray)
    return outtie
}

innieOuttieSemi(beasties)
let expectedOutput2 = "no;sleep;til;Brooklyn!"

innieOuttieSemi(strings)
let expectedOutput = "milk;eggs;bread;challah"


/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
let closureSortedAlpha = sorted(cerealArray, <)
