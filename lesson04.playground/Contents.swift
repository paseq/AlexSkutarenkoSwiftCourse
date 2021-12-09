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

