/*
             LESSSON07: Arrays
 */

let firstConstArray = ["a", "b", "c", "d"]
let secondConstArray: [String] = ["i", "j", "k", "l"]

firstConstArray.count

var array = [String]()

if array.isEmpty {
    print("Array is emoty")
}

array += firstConstArray
array += secondConstArray
array += ["m"]
array.append("n")

var arrayTwo = array

arrayTwo[0] = "1"

array
arrayTwo

//array[1...4] = ["0"]

array.insert("-", at: 3)
array.remove(at: 3)

array

//let test = [Int](repeating: 100, count: 10)

let money = [100, 1, 4, 20, 1, 50, 1, 1, 20, 2]
var sum = 0

for (index, value) in money.enumerated() {
    
    print("Index = \(index), value = \(value)")
    sum += value
}

sum
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
 
 Create array "Days in months".
 12 elements include the number of days in each month.
 Using a cycle "for" and this array:

 1. Withdraw number of day in each month without a name of months.
 
 2. Using another array with the name of the months, to display
        the name of the month + the number of days in month
 
 3. Do the same, but using an array of tuples with parameters:
        month name, number of days.
 
 4. Do the same, but show the days in reverse order. (The order
        in the array does not change)
 
 5. For a randomly selected date (month and day), calculate the
        number of days to this date from start of the year.
 */
print(startFirstPartPointer)


//  PART 1.1
print("1.1:\n")

let daysInMonths = [31,
                    28,
                    31,
                    30,
                    31,
                    30,
                    31,
                    31,
                    30,
                    31,
                    30,
                    31]

for days in daysInMonths {
    
    print("\t" + "\(days)")
    
}


print(endPointer)
//  PART 1.2
print("\n1.2:\n")

let nameOfMonth = ["January",
                   "February",
                   "March",
                   "April",
                   "May",
                   "June",
                   "July",
                   "August",
                   "September",
                   "October",
                   "November",
                   "December"]

for (index, name) in nameOfMonth.enumerated() {
    
    print("\t\(name) has \(daysInMonths[index]) days.")
    
}


print(endPointer)
//  PART 1.3
print("\n1.3:\n")

var arrayOfMonths: [(name: String, numberOfDays: Int)] = []

for i in 0..<12 {
    
    arrayOfMonths.append((nameOfMonth[i], daysInMonths[i]))
    print("\t\(arrayOfMonths[i].name) has \(arrayOfMonths[i].numberOfDays) days.")
    
}


print(endPointer)
//  PART 1.4
print("\n1.4:\n")

for i in 0..<12 {
    
    print("\t\(arrayOfMonths[i].name) has \(arrayOfMonths[11 - i].numberOfDays) days.")
    
}


print(endPointer)
//  PART 1.5
print("\n1.5:\n")

let date: (month: Int, dayOfMonth: Int) = (7, 12)
var daysPassed = 0

if date.month < 1 || date.month > 12 {
    
    print("\tInvalid month number!")
    
} else if date.dayOfMonth < 1 || date.dayOfMonth > 31 {
    
    print("\tInvalid day number!")
    
} else {
    
    for month in 0..<date.month {
        daysPassed += arrayOfMonths[month].numberOfDays
    }
    
    daysPassed -= arrayOfMonths[date.month - 1].numberOfDays - date.dayOfMonth
    
    print("\tYear to date to \(date.dayOfMonth) \(arrayOfMonths[date.month - 1].name) passed \(daysPassed) days.")
    
}


print(endPointer)
/*
 Part 2.
 
 Do the first task of lesson04 using arrays:

 2.1: Create an array of optionals ints and calculate their sum,
        using optional binding.
 2.2: Using forced unwrapping.
 2.3: Using '??' operator.
 */
print(startSecondPartPointer)

let arrayOfInts: [Int?] = [1, 2, nil, 4, 5]
var sumInts = 0

//  PART 2.1
print("2.1:\n")

for integer in arrayOfInts {
    
    if let tmp = integer {
        sumInts += tmp
    }
    
}

print ("\tUsing an optional binding, the sum is \(sumInts)")



print(endPointer)
//  PART 2.2
print("\n2.2:\n")

sumInts = 0

for integer in arrayOfInts {
    
    if integer != nil {
        sumInts += integer!
    }
    
}

print ("\tUsing an forced unwrapped, the sum is \(sumInts)")


print(endPointer)
//  PART 2.3
print("\n2.3:\n")

sumInts = 0

for integer in arrayOfInts {
    
    sumInts += integer ?? 0
    
}

print ("\tUsing '??' operator, the sum is \(sumInts)")


print(endPointer)
/*
 Part 3.
 
 Create an alphabet string and create an empty array of strings.
 Loop through each character in order, converting each character
 to a string type, and add this string to the array, output should
 be a reverse alphabetical array
 */
print(startThirdPartPointer)

let alphabet = "abcdefghijklmnopqrstuvwxyz"
var arrayAlphabet: [String] = []

for char in alphabet {
    
    arrayAlphabet.insert(String(char), at: 0)
    
}

print("\t" + "\(arrayAlphabet)")


print(endPointer)


