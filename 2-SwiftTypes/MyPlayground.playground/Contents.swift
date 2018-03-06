//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
str = "Hello, Swift"
let constrStr = str

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool
var arrayOfInts: [Int]
var dictionaryOfCapitalsByCountry: [String: String]
var winningLotteryNumbers: Set<Int>

let number = 42
let meaningOfLife = String(number)
let fmStation = 91.1
var countingUp = ["one", "two"]
countingUp.append("three")
let countingDown = countingUp.reversed()
let secondElement = countingUp[1]
let nameByParkingSpace = [13: "Alice", 27: "Bob"]
if let spaceAssignee = nameByParkingSpace[13] {
    print("Key 13 was in the dicitonary!")
}
for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}

let emptyString = String()
emptyString.isEmpty
let emptyArray = [Int]()
let emptySetOfFloats = Set<Float>()
let defaultNumber = Int()
let defaultBool = Bool()

let availableRooms = Set([205, 411, 412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

var reading1: Float?
var reading2: Float?
var reading3: Float?
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7
if let r1 = reading1, let r2 = reading2, let r3 = reading3 {
    let avgReading = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil."
}










