import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    return "My favorite cheese is " + cheese
    }

let fullSentence = favoriteCheeseStringWithCheese("cheddar")

let myString = "cat"

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
//numberArray[5]

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"




//Loops

//*/

// Use a closed range loop to print 1 - 10, inclusively

for diagonAlleyShopNumber in 1...10 {
    println("I heard you can get some really sweet wands at \(diagonAlleyShopNumber) Diagon Alley")
    }









// Use a half-closed range loop to print 1 - 10, inclusively
for diagonAlleyShopNumber in 1..<10 {
    println("I heard you can get some really sweet wands at \(diagonAlleyShopNumber) Diagon Alley")
    
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

let characters = [worf, picard]

// just playing around here

let favoriteDrinksA = characters[0]
let favoriteDrinksB = characters[1]
let favoriteDrinkC = favoriteDrinksA["favorite drink"]
let favoriteDrinkD = favoriteDrinksB["favorite drink"]
var favoriteDrinksX = [String]()
favoriteDrinksX = ["\(favoriteDrinkC)", "\(favoriteDrinkD)"]


println("\(favoriteDrinksX)")


// not the most efficient way to do this.  - will check out some other ways ///
characters.count



func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    let favoriteDrinksA = characters[0]
    let favoriteDrinksB = characters[1]
    let favoriteDrinkC = favoriteDrinksA["favorite drink"]
    let favoriteDrinkD = favoriteDrinksB["favorite drink"]
    
    var favoriteDrinks:Array<String> = ["\(favoriteDrinkC)", "\(favoriteDrinkD)"]
 
    return favoriteDrinks

    
    
}


/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let foodStrings = ["milk", "eggs", "bread", "challah"]
foodStrings[0]
let stringRepresentation = ";".join(foodStrings)


func stringOfFoods(foodStrings: Array<String>) -> String {
    let stringOfFoods2 = ";".join(foodStrings)
    return stringOfFoods2
    
}
    




// WORK HERE - make your function and pass `strings` in

let expectedOutput = "milk;eggs;bread;challah"

stringOfFoods(foodStrings)


/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]





// Use a closure to sort this array alphabetically
let cerealArraySorted = sorted(cerealArray)
