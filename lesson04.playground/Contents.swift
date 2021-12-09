/*
 LESSSON 04: OPTIONAL CHAINING
 */

var value: Int? = nil

if value == nil {
    print("nil")
} else {
    print(value!)
}

if let someValue = value {
    print(someValue)
} else {
    print("nil")
}

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

    Create five string constants. Some of which have numbers and symbols,
    some only numbers, some may be empty. It is necessary to find the sum
    of these constants, casting them to the int type.
 */

print(startFirstPartPointer)


let firstNumber = "123"
let secondNumber = "asd123"
let thirdNumber = "123asd"
let fourthNumber = "123"
let fifthNumber = ""

var sum : Int = 0

if let tmp = Int(firstNumber) {
    sum += tmp
}

if let tmp  = Int(secondNumber) {
    sum += tmp
}

if let tmp = Int(thirdNumber) {
    sum += tmp
}

if let tmp = Int(fourthNumber) {
    sum += tmp
}
    
if let tmp = Int(fifthNumber) {
    sum += tmp
}

print("First  constant is '\(firstNumber)'")
print("Second constant is '\(secondNumber)'")
print("Third  constant is '\(thirdNumber)'")
print("Fourth constant is '\(fourthNumber)'")
print("Fifth  constant is '\(fifthNumber)'")

print("\nSum of constants is \(sum)")


print(endPointer)

/*
    Part 2.
    
    You receive a tuple with three parameters from the server. 200-300
    The first parameter is an status code of type Int, the second is message
    of type String?, the third is an error message of type String?.
    If status code in range 200 <= 300 display a message, otherwise
    print error message.
    
    
    
    
 
 */

/*
    Part 3.
 
    You receive a tuple with three parameters from the server.
    The first parameter is the student's name, the second parameter
    is his car, the third parameter is the grade for the test.
 */
