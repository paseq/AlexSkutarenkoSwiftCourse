/*
             LESSSON 06: Strings literals
 */

import Foundation
var a = 5
var b = a

a += 1

a
b

var firstString = "hello"
var secondString = firstString

firstString = "bye"

firstString
secondString

let char: Character = "C"

for char in "String" {
    print(char)
}

firstString = "String"
firstString.append("c")       //add charatcter to string
print(firstString)

var c: Character = "г\u{301}\u{20dd}"

firstString.count

firstString = "String"
secondString = "String\(c)"
print(firstString)

firstString.count
secondString.count

var string = "hello"

(string as NSString).length
string.count

string = "hello\(c)"

(string as NSString).length
string.count

if firstString == secondString {
    print("firstString equal secondString")
} else {
    print("firstString not equal secondString")
}

firstString = "asd String"
firstString.hasPrefix("asd")
firstString.hasPrefix("hello")
firstString.hasSuffix("String")


/*
             HOMEWORK
 */

let fillString = "--------------------------------"
let homeWorkPointer = "\n\(fillString)HOMEWORK\(fillString)"
let startFirstPartPointer = "PART 1:\n"
let startSecondPartPointer = "PART 2:\n"
let startThirdPartPointer = "PART 3:\n"
let endPointer = fillString + fillString

print(homeWorkPointer)
/*
 Part 1.
 
 Create five string constants. Some of which have numbers and symbols,
 some only numbers, some may be empty. It is necessary to find the sum
 of these constants, using ?? operator. First you need withdraw result
 as String like a "5 + 2 + nil + 1 = 8" with string interpolation.
 Second you need withdraw result with string concatenation.
 */
print(startFirstPartPointer)


let firstStringNumber:  String? = "123"
let secondStringNumber: String? = nil
let thirdStringNumber:  String? = ""
let fourthStringNumber: String? = nil
let fifthStringNumber:  String? = "321"

let defaultValue = 0

let firstNumber  = Int(firstStringNumber  ?? "") ?? defaultValue
let secondNumber = Int(secondStringNumber ?? "") ?? defaultValue
let thirdNumber  = Int(thirdStringNumber  ?? "") ?? defaultValue
let fourthNumber = Int(fourthStringNumber ?? "") ?? defaultValue
let fifthNumber  = Int(fifthStringNumber  ?? "") ?? defaultValue

let sum = firstNumber + secondNumber + thirdNumber + fourthNumber + fifthNumber

print("\(firstNumber) + \(secondNumber) + \(thirdNumber) + \(fourthNumber) + \(fifthNumber) = \(sum)")

print(String(firstNumber) + " + " + String(secondNumber) + " + " + String(thirdNumber) + " + " +  String(fourthNumber) + " + " + String(fifthNumber) + " = " + String(sum))

print(endPointer)
/*
 Part 2.
 
 Select a five Unicode characters. Write them on a string.
 Count the length of the string, first with ".count", then
 using "NSString and length".
 */
print(startSecondPartPointer)


let stringOfSymbols = "\u{13D5}\u{20dd}\u{0461}\u{20dd}\u{03AF}\u{20dd}\u{0192}\u{20dd}\u{0165}\u{20dd}"

print("Length of '\(stringOfSymbols)' using 'NSString.length' is \((stringOfSymbols as NSString).length).")
print("Length of '\(stringOfSymbols)' using '.count' is \(stringOfSymbols.count).")


print(endPointer)
/*
 Part 3.
 
 Using cycle "for" withdraw english alphabet. Create a variable with symbol of alphabet and find
 the index of this symbol.
 */
print(startThirdPartPointer)


let alphabet = "abcdefghigklmnopqrstuvwxyz"
let letter: Character = "z"
var indexOfLetter: Int?
var count = 0

for char in alphabet {
    
    if char == letter {
        indexOfLetter = count
    }
    
    print(char)
    count += 1
}

if let index = indexOfLetter {
    print("Index of letter '\(letter)' in '\(alphabet)' is \(index).")
} else {
    print("Symbol '\(letter)' is not found.")
}


print(endPointer)
