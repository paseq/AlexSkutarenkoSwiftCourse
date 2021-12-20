/*
             LESSSON08: Dictionaries
 */

import Foundation

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
 
 1.1.   Create a dictionary as student diary, where
        name and lastname is key of dictionary, grade
        for test it is value of key.
 
 1.2.   Some students have changed grades.
 
 1.3.   To add new students to the dictionary.
 
 1.4.   Delete some students.
 
 1.5.   Calculate the average of students grades and
        general score for all students.
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
 
 2.1.   Create a dictionary where key is month,
        number of days in this month is value.
        
        Withdraw in console a copule 'month-number
        of days' of days:
 
 2.2.   First with help tuples.
 
 2.3.   Second with help array of keys and getting
        out values.
 */
print(startSecondPartPointer)




//  PART 2.1
print("\n2.1:\n")


let dictionaryOfMonths = [ "January" : 31,
                          "February" : 28,
                             "March" : 31,
                             "April" : 30,
                               "May" : 31,
                              "June" : 30,
                              "July" : 31,
                            "August" : 31,
                         "September" : 30,
                           "October" : 31,
                          "November" : 30,
                          "December" : 31]

print(dictionaryOfMonths)


//  PART 2.2
print("\n2.2:\n")

for (month, numberOfDays) in dictionaryOfMonths {
    
    print("\t\(month) has \(numberOfDays).")
    
}


//  PART 2.3
print("\n2.3:\n")

for key in dictionaryOfMonths.keys {
    
    print("\t\(key) has \(dictionaryOfMonths[key]!).")
    
}


print(endPointer)
/*
 Part 3.
 
 Using part 3 of homework of lesson05, create a
 dictionary where keys is number of cell like 'a5'
 or 'b8', and values of this keys is true if cell
 with these number white and false if black.
 
 */
print(startThirdPartPointer)

var chessCells: [String : Bool] = [:]
let letters = ["a", "b", "c", "d", "e", "f", "g", "h" ]

for (x, letter) in letters.enumerated() {
    
    for y in 0..<letters.count {
        
        var value = true
        
        if ((x + 1) * (y + 1)) % 2 != 0 {
            value = false
        }

        chessCells.updateValue(value, forKey: letter + "\(x + 1)")
    }
    
}

chessCells

print(endPointer)


