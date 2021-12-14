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


/*
             HOMEWORK
 */

let fillString = "--------------------------------"
let homeWorkPointer = "\(fillString)HOMEWORK\(fillString)"
let startFirstPartPointer = "PART 1:\n"
let startSecondPartPointer = "PART 2:\n"
let startThirdPartPointer = "PART 3:\n"
let endPointer = fillString + fillString

print(homeWorkPointer)
/*
 Part 1.
 
 
 */
print(startFirstPartPointer)



print(endPointer)
/*
 Part 2.
 
 
 */
print(startSecondPartPointer)



print(endPointer)
/*
 Part 3.
 
 
 */
print(startThirdPartPointer)


    
print(endPointer)

