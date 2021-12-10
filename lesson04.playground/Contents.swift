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
 
 Part 2.1
 You receive a tuple with three parameters from the server.
 The first parameter is an status code of type Int, the second
 is a message of type String?, the third is an error message of type
 String?. If status code in range 200 <= 300 display a message, otherwise
 display an error message.
 */

print(startSecondPartPointer + "\nPART 2.1:\n")



//TO UNCOMMENT TUPLES FOR DIFFERNT CHECK

//let tupleFromServer: (codeStatus: Int, message: String?, errorMessage: String?)   = (300, "hello", "error")
let tupleFromServer: (codeStatus: Int, message: String?, errorMessage: String?)   = (301, "hello", "error")

let missingMessage = "message is missing!"

if tupleFromServer.codeStatus >= 200 && tupleFromServer.codeStatus <= 300 {
    
    if let tmp = tupleFromServer.message {
        print(tmp)
    } else {
        print(missingMessage)
    }
    
} else {
    
    if let tmp = tupleFromServer.errorMessage {
        print(tmp + " with code status " + String(tupleFromServer.codeStatus))
    } else {
        print("error " + missingMessage)
    }
}



print(endPointer)

/*
Part 2.2
 
You receive a tuple with two parameters from the server.
The first parameter is a message of type String?, the second is an error message of type
String?. One of which always nil. Display the message if it exist.
 */

print("PART 2.2:\n")



//TO UNCOMMENT TUPLES FOR DIFFERNT CHECK

let anotherTupleFromServer: (message: String?, errorMessage: String?) = ("hello", nil)
//let anotherTupleFromServer: (message: String?, errorMessage: String?) = (nil, "error message")
//let anotherTupleFromServer: (message: String?, errorMessage: String?) = (nil, nil)

if let message = anotherTupleFromServer.message {
    
    print(message)
    
} else if let errorMessage = anotherTupleFromServer.errorMessage {
    
    print(errorMessage)
        
} else {
    
    print("values of tuple is nil")
}



print(endPointer)

/*
 Part 3.
 
 Create a five empty tuples with three parameters.
 The first parameter is the student's name, the second parameter
 is his car, the third parameter is the grade for the test.
 First you need to fill in name parameter for all tuples, then
 fill in car parameter, then the grade. Display all tuples.
 */

print(startThirdPartPointer)



let firstStudent: (name: String, car: String?, grade: Int?)
let secondStudent: (name: String, car: String?, grade: Int?)
let thirdStudent: (name: String, car: String?, grade: Int?)
let fourthStudent: (name: String, car: String?, grade: Int?)
let fifthStudent: (name: String, car: String?, grade: Int?)

firstStudent.name  = "Ivan"
secondStudent.name = "Alexander"
thirdStudent.name  = "Petr"
fourthStudent.name = "Dmitriy"
fifthStudent.name  = "Alex"

firstStudent.car  = nil
secondStudent.car = "Volvo"
thirdStudent.car  = nil
fourthStudent.car = "Lada"
fifthStudent.car  = nil

firstStudent.grade  = 4
secondStudent.grade = 5
thirdStudent.grade  = nil
fourthStudent.grade = 4
fifthStudent.grade  = nil

let (stringName, stringCar, stringHaventCar, stringGrade, stringNotGrades)  = ("Student's name is ",
                                                                              "He have a car ",
                                                                              "He havent car.",
                                                                              "His grade is ",
                                                                              "He didn’t take the test.")
// first student tuple
print(stringName + firstStudent.name + ".")

if let car = firstStudent.car {
    print(stringCar + car + ".")
} else {
    print(stringHaventCar)
}

if let grade = firstStudent.grade {
    print(stringGrade + String(grade) + ".\n")
} else {
    print(stringNotGrades + "\n")
}

// second student tuple
print(stringName + secondStudent.name + ".")

if let car = secondStudent.car {
    print(stringCar + car + ".")
} else {
    print(stringHaventCar)
}

if let grade = secondStudent.grade {
    print(stringGrade + String(grade) + ".\n")
} else {
    print(stringNotGrades + "\n")
}

// third student tuple
print(stringName + thirdStudent.name + ".")

if let car = thirdStudent.car {
    print(stringCar + car + ".")
} else {
    print(stringHaventCar)
}

if let grade = thirdStudent.grade {
    print(stringGrade + String(grade) + ".\n")
} else {
    print(stringNotGrades + "\n")
}

// fourth student tuple
print(stringName + fourthStudent.name + ".")

if let car = fourthStudent.car {
    print(stringCar + car + ".")
} else {
    print(stringHaventCar)
}

if let grade = fourthStudent.grade {
    print(stringGrade + String(grade) + ".\n")
} else {
    print(stringNotGrades + "\n")
}

// fifth student tuple
print(stringName + fifthStudent.name + ".")

if let car = fifthStudent.car {
    print(stringCar + car + ".")
} else {
    print(stringHaventCar)
}

if let grade = fifthStudent.grade {
    print(stringGrade + String(grade) + ".\n")
} else {
    print(stringNotGrades)
}

      
      
print(endPointer)
