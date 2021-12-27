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

let hi = sayHi()

sayHi()

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
