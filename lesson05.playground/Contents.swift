/*
 
 LESSSON 05: BASIC OPERATORS
 
 */

let total = 5 + 6 - 8 * 3 - 5 / 10

let div = 10 / 3
let rest = 10 % 3

var small: UInt8 = 0xff

small = 0b1111_1111
small = small &+ 5 //operator of overflow

let str = "Hi, " + "there!"

let a = 6
let b = 3

var c: Int

//if a < b {
//    c = a
//} else {
//    c = b
//}

c = a < b ? a : b

let text = "123"
Int(text)

let n = Int(text)

if n != nil {
    c = n!
} else {
    c = 0
}

if let opt = n {
    c = opt
} else {
    c = 0
}

c = n ?? 0

0...5
0..<5

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

 You should find out how many seconds have passed
 since the beginning of the year until your birthday.
 
 My birthday is July 12.
*/
print(startFirstPartPointer)

let dayInMonthOfBirthday = 12
let daysInMonth = (jan: 31, feb: 28, mar: 31, apr: 30, may: 31, jun: 30, jul: 31)
let timeValues = (hoursInDay: 24, minutesInHour: 60, secondsInMinute: 60)

let daysInBirthdayMonth = daysInMonth.jul - (daysInMonth.jul - (dayInMonthOfBirthday - 1))

let daysToBirthday = daysInMonth.jan + daysInMonth.feb +
                    daysInMonth.mar + daysInMonth.apr + daysInMonth.may +
                    daysInMonth.jun + daysInBirthdayMonth

let secondsInDay = timeValues.hoursInDay * timeValues.minutesInHour * timeValues.secondsInMinute

let secondsToBithday = daysToBirthday * secondsInDay

print("\(secondsToBithday) seconds have passed since the beginning of the year until my birthday.")


print(endPointer)
/*
 Part 2.
 
 
 Count and display what quarter you were born in.
 */
print(startSecondPartPointer)

let monthNumber = 10

if monthNumber < 1 && monthNumber > 12 {
    print("Invalid month number!")
}

if monthNumber > 0 && monthNumber < 4{
    print("Birthday in first quarter")
} else if monthNumber > 3 && monthNumber < 7 {
    print("Birthday in second quarter")
} else if monthNumber > 6 && monthNumber < 10 {
    print("Birthday in third quarter")
} else if monthNumber > 9 && monthNumber <= 12 {
    print("Birthday in fourth quarter")
}


print(endPointer)
/*
 Part 3.
 
 You have a chessboard. it has 64 cells, 8 on each side.
 Each side is numbered from 1 to 8. You get a number and
 you should recognize the white or black cell with these
 coordinates.
 */
print(startThirdPartPointer)


let cell = (x: 8, y: 8)
let cellColor = (black: "black", white: "white")
let answer = "Cell with coordinates x = \(cell.x), y = \(cell.y) is "

if cell.x == cell.y {
    print(answer + cellColor.black)
} else if cell.x > 8 || cell.x < 1 || cell.y > 8 || cell.y < 1 {
    print("Invalid values!")
} else {
    (cell.x * cell.y) % 2 == 0 ? print(answer + cellColor.white) : print(answer + cellColor.black)
}

      
print(endPointer)
