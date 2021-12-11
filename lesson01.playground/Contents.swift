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
 
 Display the description of the student with help variables.
 */
print(startFirstPartPointer)

var firstName = "Pavel"
var lastName = "Bogdanov"
var age = 24
var education = "incomlete higher education"
var university = "ISMART university"
var universityAtCity = "Severodvinsk city"
var faculty = "Faculty of Engineering Production Support"
var speciality = "Design engineer"
var studingTimeInYears = 3

let greetings = "Hello! My name is \(firstName) \(lastName)."
let presentEducation = "I have \(education) in \(university) at \(universityAtCity)"
let studingTime = "I studied there \(studingTimeInYears) years on \(faculty) by proffesion \(speciality)."

print(greetings)
print(presentEducation)
print(studingTime)



print(endPointer)
