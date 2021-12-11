/* LESSON 03: TUPLES*/

let someTuple = (count: 1, phrase: "word", answer: true, value: 2.5)

someTuple.count
someTuple.phrase
someTuple.answer
someTuple.value

someTuple.0
someTuple.1
someTuple.2
someTuple.3

print(someTuple)


let (someInt, someString, someBool, someDouble) = someTuple

someInt
someString
someBool
someDouble

var someVariable = someTuple.0
someVariable = someInt

let (_, _, check, _) = someTuple
check


var a = (x: 1, y: 2)
let b = (x: 3, y: 4)
a = b
a
b


/*
let letOne = "one"
let letTwo = "two"
let letThree = "three"
*/

let (letOne, letTwo, letThree) = ("one", "two", "three")
letOne
letTwo
letThree


let one = "hello"
let two = 5

print((one, two))

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
 1. Create a tuple with three parameters, the first of which is the maximum
    number of push-aps, the second of wich is the maximum number of pull-aps,
    the third of which is the maximum number of squats. Print this tuple with
    help Print().
*/
print(startFirstPartPointer)


var myTraining = (maxPushAps: 40, maxPullAps: 20, maxSquats: 150)

print(myTraining)


print(endPointer)
/*
 2. Print all parameters of tuple like a "parameterName = value". Make output with
    different ways of passing tuple values.
*/
print(startSecondPartPointer)


print("My maximum number of push-aps is \(myTraining.0)")
print("My maximum number of pull-aps is \(myTraining.maxPullAps)")
print("My maximum number of squats is \(myTraining.maxSquats)")


print(endPointer)

/*
 3. Create another tuple for your friend with the same parameters. Using intermediate
    variables, swap of the values of first tuple with the second.
*/
print(startThirdPartPointer)


var friendTraining = (maxPushAps: 30, maxPullAps: 15, maxSquats: 80)

print("Before: \n")
print(myTraining)
print(friendTraining)

var buf: Int

buf = myTraining.maxPushAps
myTraining.maxPushAps = friendTraining.maxPushAps
friendTraining.maxPushAps = buf

buf = myTraining.maxPullAps
myTraining.maxPullAps = friendTraining.maxPullAps
friendTraining.maxPullAps = buf

buf = myTraining.maxSquats
myTraining.maxSquats = friendTraining.maxSquats
friendTraining.maxSquats = buf

print("\n\nAfter: \n")
print(myTraining)
print(friendTraining)


print(endPointer)
