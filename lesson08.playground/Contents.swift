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


