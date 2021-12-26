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
                symbols.\t\t\t\t
                Create the random minimum 200 characters string.
                Using a loop and switch operator, calculate
                the number of vowels, consonants, numbers and
                symbols.
                """
print("String:\n\n\(someString)\n")

var chars = (vowels: 0, consonants: 0, numbers: 0, symbols: 0)

for char in someString {
    
    switch char {
        
    case _ where char.isNumber:
        chars.numbers += 1
    case _ where !char.isLetter:
        chars.symbols += 1
    case _ where char.isLetter:
        let vowelsArray = ["a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "Y"]

        vowelsArray.contains(String(char)) ? (chars.vowels += 1) : (chars.consonants += 1)

    default:
        break
    }
}

print("The string contains \(someString.count) charaters, including:\n")
print("\t\(chars.vowels)\tvowels")
print("\t\(chars.consonants)\tconsonants")
print("\t\(chars.numbers)\tnumber")
print("\t\(chars.symbols)\tsymbols\n")

let sum = chars.consonants + chars.symbols + chars.vowels + chars.numbers

print("\(chars.vowels) + \(chars.consonants) + \(chars.numbers) + \(chars.symbols) = \(sum) ")


print(endPointer)
/*
     Part 2.
     
     Create a switch whitch display period of life depending on age.
 */
print(startSecondPartPointer)


let oldAge = 0

switch oldAge {

case 0...1: print("Age of infancy")
case 1...3: print("Age of early")
case 3...7: print("Preschool age")
case 7...12: print("Primary school age")
case 12...15: print("Early adolescence")
case 15...18: print("Adolescence")
case 18...35: print("Youth")
case 35...60: print("Maturity")
case 60...100: print("Old age")
    
default: print("Invalid value!")
}


print(endPointer)
/*
     Part 3.
     
    You have the students full name (russian letters). If the name
    begins with the letters "А" or "О", call his by name, if the
    middle name begins with the letters "В" or "Д", call him by name
    and last name. If last name begins with letter "Е" or "З", call
    him only by last name. Otherwise, call his by his full name.
 */
print(startThirdPartPointer)


let personName = (name: "Тлександр", lastName: "Тлизаров", middleName: "Тладимирович")

switch personName {

case (let name, _, _) where name.hasPrefix("А"): fallthrough
case (let name, _, _) where name.hasPrefix("О"): print("Hello, \(name).")
case (let name, _, let middleName) where middleName.hasPrefix("В"): fallthrough
case (let name, _, let middleName) where middleName.hasPrefix("Д"): print("Hello, \(name) \(middleName).")
case (_, let lastName, _) where lastName.hasPrefix("Е"): fallthrough
case (_, let lastName, _) where lastName.hasPrefix("З"): print("Hello, \(lastName).")

default: print("Hello, \(personName.name) \(personName.lastName) \(personName.middleName).")
}


print(endPointer)
/*
    Part 4.
 
    Imagine that you playing in sea war and you have some warships
    on battlefield with size 10x10. You should create a switch, that
    get the number of row and letter of column and withdraw: miss,
    wounded or killed.
 */
print(startFourthPartPointer)


let coords = (letter: "a", digit: 5)
let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "g"]


if !letters.contains(coords.letter) || coords.digit < 1 || coords.digit > 10 {
    print("Invalid value!")
}

switch coords {

case ("d", 3...5):
    print("Wounded!")
case ("f", 2...3):
    print("Wounded!")
case ("b", 4), ("g", 7), ("f", 8):
    print("Killed!")
    
default:
    print("Miss!")
}


print(endPointer)
