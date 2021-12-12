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
*/
print(startFirstPartPointer)

let daysInMonth = (jan: 31, feb: 28, mar: 31, apr: 30, may: 31, jun: 30, jul: 31)
let timeValues = (hoursInDay: 24, minInHour: 60, secInMinute: 60)


print(endPointer)
/*
 Part 2.
 
 Count and display what quarter you were born in.
 */

print(startSecondPartPointer)






print(endPointer)

/*
 Part 3.
 
 You have a chessboard. it has 64 cells, 8 on each side.
 Each side is numbered from 1 to 8. You get a number and
 you should recognize the white or black cell with these
 coordinates.
 */

print(startThirdPartPointer)



      
      
print(endPointer)

