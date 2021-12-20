/*
             LESSSON08: Dictionaries
 */

var dictSampleFirst = [0 : "zero", 1 : "first", 2 : "second"]

dictSampleFirst[0]
dictSampleFirst[1]
dictSampleFirst[2]

dictSampleFirst.count
dictSampleFirst.isEmpty

dictSampleFirst[3] = "third" //create write of dictionary
dictSampleFirst

dictSampleFirst[0] = "replaced value" //replace value
dictSampleFirst

dictSampleFirst[0] = "zero"

dictSampleFirst.keys
dictSampleFirst.values

let replacedValue = dictSampleFirst.updateValue("replaced value", forKey: 0) // replace the value but keep the old value
replacedValue
dictSampleFirst

dictSampleFirst[0] = "zero"
dictSampleFirst

let appendedValue = dictSampleFirst.updateValue("appended value", forKey: 4) //not exist key. creating new key and return nil as old value
appendedValue
dictSampleFirst

let sampleValue = dictSampleFirst[0]  //dictSampleFirst[0] return optional value

dictSampleFirst[4] = nil  //delete write of dictionary
dictSampleFirst

dictSampleFirst.removeValue(forKey: 0) //return deleted value.
dictSampleFirst

dictSampleFirst = [:] //remove all keys

dictSampleFirst = [0 : "zero",
                   1 : "first",
                   2 : "second"]

for key in dictSampleFirst.keys {
    
    print("key = \(key), value = \(dictSampleFirst[key]!)")
    
}

for (key, value) in dictSampleFirst {
    
    print("key = \(key), value = \(value)")
    
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
 
 1.1.   Create a dictionary as student diary, where name and lastname is key of dictionary, grade for test it is value of key.
 1.2.   Some students have changed grades.
 1.3.   To add new students to the dictionary.
 1.4.   Delete some students.
 1.5.   Calculate the average of students grades and general score for all students.
 */
print(startFirstPartPointer)


//  PART 1.1
print("1.1:\n")

var dictionaryOfStudents = ["Michail Kondakov" : 2,
                              "Pavel Bogdanov" : 5,
                             "Sophia Dobrodey" : 4,
                             "Elena Sharigina" : 3,
                             "Rashid Gashimov" : 4]

for (key, value) in dictionaryOfStudents {
    
    print("\t\(key) has \(value) grade.")
    
}


//  PART 1.2
print("\n1.2:\n")

dictionaryOfStudents["Michail Kondakov"] = 3
dictionaryOfStudents.updateValue(4, forKey: "Elena Sharigina")

for (key, value) in dictionaryOfStudents {
    
    print("\t\(key) has \(value) grade.")
    
}


//  PART 1.3
print("\n1.3:\n")

dictionaryOfStudents["Tatyana Andrusyak"] = 5
dictionaryOfStudents.updateValue(4, forKey: "Ulayana Dokuchaeva")

for (key, value) in dictionaryOfStudents {
    
    print("\t\(key) has \(value) grade.")
    
}


//  PART 1.4
print("\n1.4:\n")

dictionaryOfStudents["Michail Kondakov"] = nil
dictionaryOfStudents.removeValue(forKey: "Elena Sharigina")

for (key, value) in dictionaryOfStudents {
    
    print("\t\(key) has \(value) grade.")
    
}


//  PART 1.5
print("\n1.5:\n")

var sumOfGrades = 0
var averageOfGrades = 0

for (_, value) in dictionaryOfStudents {
    
    sumOfGrades += value
    
    
}

averageOfGrades = sumOfGrades / dictionaryOfStudents.count

print("General score of all students = \(sumOfGrades)")
print("Average of grades = \(averageOfGrades)")


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


