import UIKit

var str = "Hello, playground"
str = "Hello, Swift!"
let constStr = str

let number = 42
let meaningOfLife = String(number)
let fmStation = 91.1

let availableRooms = Set([205, 411, 412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

// let countingUp = ["one", "two"]
var countingUp = ["One", "Two"]
let firstElement = countingUp[0]
let secondElement = countingUp[1]
countingUp.count
countingUp.append("Three")

var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?

var reading1: Float?
var reading2: Float?
var reading3: Float?
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7
// let avgReading = (reading1! + reading2! + reading3!) / 3
if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
    _ = (r1 + r2 + r3) / 3
} else {
    _ = "Instrument reported a reading that was nil."
}

let nameByParkingSpace = [13: "Alice", 27: "Bob"]
for (space, name) in nameByParkingSpace {
    _ = "Space \(space): \(name)"
}
// let space13Assignee: String? = nameByParkingSpace[13]
if let space13Assignee = nameByParkingSpace[13]{
    print("Key 13 is assigned in the dictionary!")
}
let space42Assignee: String? = nameByParkingSpace[42]

//let emptyString: String()
let emptyArrayOfInt = [Int]()
let emptySetOfFloats = Set<Float>()

let defualtNumber = Int()
let defaultBool = Bool()


var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

var arrayOfInts: [Int]
var dictionaryOfCaptialsByCounty: [String: String]
var winningLotteryNumbers: Set<Int>

enum PieType: Int {
    case apple = 0
    case cherry
    case pecan
}

let pieRawValue = PieType.pecan.rawValue
// pieRawValue is an Int with a value of 2.
 
if let pieType = PieType(rawValue: pieRawValue) {
    // Got a valid 'pieType'!
}

let favoritePie = PieType.apple

let name: String
switch favoritePie {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}
