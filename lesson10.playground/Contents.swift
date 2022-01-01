/*
             LESSSON10: Fuctions
 */

func calculateMoney(inWallet wallet: [Int], withType type: Int? = nil) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0
    
    for value in wallet {
        
        if (type == nil) || (value == type!) {
            sum += value
            count += 1
        }
        
    }
    
    return (sum, count)
}

let wallet = [1, 100, 5000, 300, 200, 100, 14]

let sum = calculateMoney(inWallet: wallet, withType: 100)

sum.total
sum.count

func calculateMoney(inSecuence range: Int...) -> Int {
    
    var sum = 0
    
    for value in range {
        sum += value
    }
    return sum
}

calculateMoney(inSecuence: 5, 10, 10, 100, 1000, 500, 200, 100, 1, 1, 100, 100)

func sayHi() {
    print("Hi!")
}


/*
             HOMEWORK
 */

func homeWorkPrint(part: Int = 0) {
    
    let emptyString = "                                "
    let filledString  = "________________________________________________________________________"
    var out = ""
    
    if part > 0 {
        
        if part == 1 {
            out = emptyString + "HOMEWORK\n" + filledString
        }
        
        out += "\n\n\tPART " + String(part) + ":\n"
        
    } else {
        out = filledString
    }
    
    print(out)
}

/*
 Part 1.
 
 Create a cople functions with short names which return the string with beatiful symbol or symbols. For example heart() return the heart etc. Call this fuctions into print() for a output this symbols with help koncationation.
 */
homeWorkPrint(part: 1)


func cube() -> String {
    return "\u{1F9CA}"
}

func corona() -> String {
    return "\u{1F9A0}"
}

print(cube() + corona())

homeWorkPrint()
/*
 Part 2.
 
 Implement a function, that takes a letter and a number of chessboard, and returns a color this cell.
 */
homeWorkPrint(part: 2)


func defineCellColor(letter l: String, number n: String) -> String {
    
    let dictLetters = ["A" : 1,
                       "B" : 2,
                       "C" : 3,
                       "D" : 4,
                       "E" : 5,
                       "F" : 6,
                       "G" : 7,
                       "H" : 8,
                       "I" : 9,
                       "J" : 10]
    
    if dictLetters[letter] % 2 == 0 {
        
    }
    return result
}


homeWorkPrint()
/*
 Part 3.
 
 
 */
homeWorkPrint(part: 3)


//write here


homeWorkPrint()
