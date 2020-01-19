import UIKit

var str = "Hello, playground"
// comment2

class C { var data: Int = -1 }

var x = C()
print (x.data)
var b = x
print (b.data)
b.data = 1
print (x.data)

print ("\(x.data)")

class Play {
    func playground() {
        print ("playground")
    }
}

var c = Play()
c.playground()

let integer = 1

var double1: Double
var num1 = 5
var num2 = 3
double1 = Double(num1)/Double(num2)

//ДЗ урок 2

let constInt1 = 1
var varInt1 = 1
var varInt2 = constInt1 + varInt1
varInt2 = constInt1 * varInt1
var varDouble: Double = 1.2
var varBoul: Bool = constInt1 == varInt1
var varString = "Hello"

var firstItem = 0
var secondItem = 1

if firstItem > secondItem
{
    print("WoW")
}
var thirdItem = 0
var fourthItem = 1

if ((thirdItem < fourthItem) && (firstItem == secondItem)) || fourthItem > 0
{
    print("Wow ||")
}

func guardCheck (_ item1:Int, _ item2:Int )
{
    guard item1 == item2 else {
        print("wrong value")
        return
    }
    print("true")
}
guardCheck(2,3)

//ternary operator

let constantBool = (firstItem == secondItem) ? true : false
let constantInt = (firstItem == secondItem) ? 10 : 20

var intForSwitch = 1



switch intForSwitch {
case 1:
    print("case 1")
    fallthrough
case 2:
    print("case 2")
    fallthrough
default:
    print("def")
}

intForSwitch = 2

//Optional
var optionalInt: Int?
func printInt(value: Int)
{
    print(value)
}

//optionalInt = 2

if let nonOptional = optionalInt
{
    printInt(value: nonOptional)
}

func guardlet (){
    guard optionalInt != nil else {
        print("alert in guardlet")
        return
    }
    print("In guardlet")
}

guardlet()

optionalInt = 2

optionalInt?.distance(to: 100)

print("after failed optional")

print( optionalInt ?? "there is nill")

let nonOp = optionalInt ?? 20

print("!!! \(nonOp)")

let nonOptionalForced = optionalInt!

enum Directions: CaseIterable{
    case west, east, north, south
}

var direction: Directions = .west

switch direction {
case .east:
    print(direction)
default:
    print("wrong direction")
}

for possibleDirection in Directions.allCases
{
    print("possibleDirection \(possibleDirection) ")
}

struct CustomStruct {
    var firstVariable: Int
}
let myStructInstance = CustomStruct(firstVariable: 1)

class CustomClass{
    var firstVariable: Int?
}
let myClassInstance = CustomClass()

class Vehicle {
    let canMove = true
}

class Car: Vehicle {
    var color: Int
    var trunk: String?
    init(inputColor:Int)
    {
        if inputColor != 0
        {
            color = inputColor
        }
        else
        {
            color = 11111
        }
    }
}

let myCar = Car(inputColor: 2222)

myCar.color
myCar.trunk
myCar.canMove

protocol GenericProtocol {
    var genericProperty: Int { get set }
}

struct ProtocolStruct:GenericProtocol{
    var firstVariable: Int
    var genericProperty: Int
}

var protocolStruct = ProtocolStruct(firstVariable: 1, genericProperty: 1)

print(myCar is Vehicle)
print(myCar is Int)

var i:Int

// HW lesson 3

let hw3Const1 = 1
let hw3Const2 = 2
if hw3Const1 > hw3Const2
{
    print("const1 > const2")
}
else if hw3Const1 < hw3Const2
{
    print("const1 < const2")
}
else
{
    print("const1 = const2")
}

var hw3Var1 = 1
var hw3Var2 = 3
var hw3Var3 = 3

print("Результат сложения переменных: \(hw3Var1 + hw3Var2 + hw3Var3)")

func checkEqual(first:Int, second:Int, third:Int) -> Bool
{
    if first == second || first == third || second == third
    {
        hw3Var1 = hw3Var1 + 5
        hw3Var2 = hw3Var2 + 5
        hw3Var3 = hw3Var3 + 5
        return true
    }
    else
    {
        return false
    }
}

if !checkEqual(first:hw3Var1, second:hw3Var2, third:hw3Var3)
{
    print("Равных нет")

}

var hw3Int:Int?
hw3Int = 2
if hw3Int == nil
{
    print("nil")
}
else
{
    print(hw3Int!)
}
