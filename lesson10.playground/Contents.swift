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
    let fillString  = "________________________________________________________________________"
    var out = ""
    
    if part > 0 {
        
        if part == 1 {
            out = emptyString + "HOMEWORK\n" + fillString
        }
        
        out += "\n\n\tPART " + String(part) + ":\n"
        
    } else {
        out = fillString
    }
    
    print(out)
}

/*
 Part 1.
 
 Create a cople functions with short names which return the string with beatiful symbol or symbols. For example heart() return the heart etc. Call this fuctions into print() for a output this symbols with help koncationation.
 
 
 */
homeWorkPrint(part: 1)

//write here


homeWorkPrint()
/*
 Part 2.
 
 
 */
homeWorkPrint(part: 2)


//write here



homeWorkPrint()
/*
 Part 3.
 
 
 */
homeWorkPrint(part: 3)


//write here


homeWorkPrint()
