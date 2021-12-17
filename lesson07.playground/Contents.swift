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



print("\t1.1:\n")

let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for days in daysInMonths {
    print(days)
}



print("\n\t1.2:\n")

let nameOfMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var index = 0

for name in nameOfMonth {
    
    print("\(name) has \(daysInMonths[index]) days.")
    index += 1
}



print("\n\t1.3:\n")

var arrayOfMonths = [(name: String, numberOfDays: Int)](repeating: (name: "", numberOfDays: 0), count: 12)
index = 0

for (i, month) in arrayOfMonths.enumerated() {

    month.name = nameOfMonth[index]
    month.numberOfDays = daysInMonths[index]
    
    index += 1
}

for month in arrayOfMonths {
    print("\(month.name) has \(month.numberOfDays) days.")
}


print(endPointer)
/*
 Part 2.
 
 Сделайте первое задание к уроку номер 4 используя массивы:

 (создайте массив опшинал интов и посчитайте сумму)

 - в одном случае используйте optional binding
 - в другом forced unwrapping
 - а в третьем оператор ??

 3. создайте строку алфавит и пустой массив строк

 в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед
 */
print(startSecondPartPointer)



print(endPointer)
/*
 Part 3.
 */
print(startThirdPartPointer)


    
print(endPointer)


