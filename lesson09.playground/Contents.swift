/*
             LESSSON09: Switch operatorf
 */

mainLoop: for _ in 0...100 {

    for i in 0...10 {
        
        if i < 4 {
            continue
        }
        
        if i == 5 {
            break mainLoop
        }
        print(i)
    }
}

var age = 60

switch age {
    
    case 0...16:
        print("\(age)")
        fallthrough         //fallthrough - execute the following case
    case 17...21:
        print("\(age)")
    case 22...50:
        break
    case 51, 53:
        print("51, 53")
    default: print("default")
}

let name = "Alex"

switch name {
    
    case "Alex" where age < 50:   //'where' allows add condition
        print("Name = \(name), Age = \(age)")
    case "Alex" where age >= 50:
        print(">= 50")
    default:
        break
}

let optional: Int? = 5

if let a = optional {    //optional binding
    print(a)
}

switch (name, age) {
    
    case ("Alex", 60):
        print("\(name) \(age)")
    case (_, let number) where number >= 65 && number <= 70:   //value binding
        print("value binding")
    case ("Alex", _):
        print("Hi, \(name)")
    default:
        break
}

let point = (5, -6)

switch point {
    
    case let (x, y) where x == y:
        print("x == y")
    case let (x, y) where x == -y:
        print("x == -y")
    case let (_, y) where y < 0:
        print("y < 0")
    default:
        break
}

let array: [CustomStringConvertible] = [5, 5.4, Float(5.4)]

switch array[0] {
    
    case _ as Int:
        print("Int")
    case _ as Double:
        print("Double")
    case _ as Float:
        print("Float")
    default:
        break
}
              
/*
             HOMEWORK
 */

let fillString = "--------------------------------"
let homeWorkPointer = "\(fillString)HOMEWORK\(fillString)"
let startFirstPartPointer = "\tPART 1:\n"
let startSecondPartPointer = "\tPART 2:\n"
let startThirdPartPointer = "\tPART 3:\n"
let startFourthPartPointer = "\tPART 4:\n"
let endPointer = fillString + fillString

print(homeWorkPointer)
/*
    Part 1.

    Create the random minimum 200 characters string. Using a loop and switch
    operator, calculate the number of vowels, consonants, numbers and
    symbols.
 */
print(startFirstPartPointer)

let someString = """
                Create the random minimum 200 characters string.
                Using a loop and switch operator, calculate
                the number of vowels, consonants, numbers and
                symbols.
                Create the random minimum 200 characters string.
                Using a loop and switch operator, calculate
                the number of vowels, consonants, numbers and
                symbols.
                """
print("String:\n\n\(someString)\n\nCount of characters: \(someString.count)")

var vowels = 0
var consonants = 0
var numbers = 0
var symbols = 0

for char in someString {
    
    let char = char.asciiValue ?? 0
    switch char {
        
        case (char > 64 && char < 91) || (char > 96 && char < 122):
            print("\(char) is alphabet")
        
        default:
            break
    }
}

print(endPointer)
/*
     Part 2.
     
     Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
 */
print(startSecondPartPointer)




print(endPointer)
/*
     Part 3.
     
     У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же
     нет,то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если
     фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.
 */
print(startThirdPartPointer)





print(endPointer)
/*
    Part 4.
 
    Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры,
    а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
 */
print(startFourthPartPointer)





print(endPointer)
