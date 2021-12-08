let intNumber    = 1_234_567_89
let octNumber    = 0o1234567
let hexNumber    = 0x123456789ABCDEF
let binaryNumber = 0b1111_1111

let intNumberMax = Int.max
let intNumberMin = Int.min

let unsignedIntMax : UInt = UInt.max
let unsignedIntMin : UInt = UInt.min


let intMax8 : Int8 = Int8.max
let intMin8 : Int8 = Int8.min

let unsignedIntMax8 : UInt8 = UInt8.max
let unsignedIntMin8 : UInt8 = UInt8.min


let intMax16 : Int16 = Int16.max
let intMin16 : Int16 = Int16.min

let unsignedIntMax16 : UInt16 = UInt16.max
let unsignedIntMin16 : UInt16 = UInt16.min


let intMax32 : Int32 = Int32.max
let intMin32 : Int32 = Int32.min

let unsignedIntMax32 : UInt32 = UInt32.max
let unsignedIntMin32 : UInt32 = UInt32.min


let intMax64 : Int64 = Int64.max
let intMin64 : Int64 = Int64.min

let unsignedIntMax64 : UInt64 = UInt64.max
let unsignedIntMin64 : UInt64 = UInt64.min

123.456e2   //123.456 * 10^2
123.456e-2  //123.456 * 10^(-2)

0x5
0x5p2       //5 * 2^2
0x5p-2      //5 * 2^(-2)

typealias SomeType = Int
let variable : SomeType = 10 

/*          HOME WORK

1. Infer ranges of basic data types.
2. Create a three constants as Int, Double and Float
3. Compare Int and Double constants with each other
 */

//task 1
let rangeOfInt = "The range of Int is  \(Int.min) <= 0 < \(Int.max)"
let rangeOfUInt = "The range of UInt is \(UInt.min) <= \(UInt.max)"

let rangeOfInt8 = "The range of Int8 is \(Int8.min) <= 0 < \(Int8.max)"
let rangeOfUInt8 = "The range of UInt8 is \(UInt8.min) <= \(UInt8.max)"

let rangeOfInt16 = "The range of Int16 is \(Int16.min) <= 0 < \(Int16.max)"
let rangeOfUInt16 = "The range of UInt16 is \(UInt16.min) <= \(UInt16.max)"

let rangeOfInt32 = "The range of Int8 is \(Int32.min) <= 0 < \(Int32.max)"
let rangeOfUInt32 = "The range of UInt8 is \(UInt32.min) <= \(UInt32.max)"

let rangeOfInt64 = "The range of Int64 is \(Int64.min) <= 0 < \(Int64.max)"
let rangeOfUInt64 = "The range of UInt64 is \(UInt64.min) < =\(UInt64.max)"

print(rangeOfInt)
print(rangeOfUInt)

print(rangeOfInt8)
print(rangeOfUInt8)

print(rangeOfInt16)
print(rangeOfUInt16)

print(rangeOfInt32)
print(rangeOfUInt32)

print(rangeOfInt64)
print(rangeOfUInt64)

//task 2
let intConstant = 1
let floatConstant : Float = 1.5
let doubleConstant = 1.5

let sumOfConstantsInt = Int(Double(intConstant) + Double(floatConstant) + Double(doubleConstant))
let sumOfConstantsFloat : Float = Float(intConstant) + floatConstant + Float(doubleConstant)
let sumOfConstantsDouble = Double(intConstant) + Double(floatConstant) + doubleConstant

//task 3
if Double(sumOfConstantsInt) < sumOfConstantsDouble {
    print("sumOfConstantsInt smaller")
} else {
    print("sumOfConstnatsInt bigger or equal")
}
