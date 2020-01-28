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

//print(myCar is Vehicle)
//print(myCar is Int)

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

//LESSON 4
//Set
var tuple = (integer:1,double: 2.1,mystring: "ss")
var tupleItem1 = tuple.0
var tupleItem2 = tuple.1
var tupleItem3 = tuple.mystring

typealias MyCustomTupleType = (integer: Int, double: Double, mystring: String)

var customTuple: MyCustomTupleType
customTuple.integer = 1

var customSet: Set<Int> = [1,2,3,4,5]
customSet.count

var subSet: Set<Int> = [3,5]
var isSubset = subSet.isSubset( of: customSet)

customSet.remove(6)
customSet
func functionname(param: Int) -> Int
{
    return param
}

var variable = functionname(param: 1)

func color (_ red: Int? = 1, _ green: Int? = 1, _ blue: Int? = 1 )->Int
{
/*
    guard let red = red,
          let green = green,
          let blue = blue
        else {
        return 0
    }
 */
    return (red ?? 0) + (green ?? 0) + (blue ?? 0)
}
print(color())

var op1: Int?
var op2: Int?
var int1: Int
int1 = (op1 ?? 0) + (op2 ?? 0)

struct CustomStruct2 {
    internal func shortAction() {
        
    }
    static func internalFunc() {
        
    }
}

var customStructVar = CustomStruct2()
customStructVar.shortAction()
//customStructVar.internalFunc()
CustomStruct2.internalFunc()

//Замыкания
var customClosure: (Int, String) -> Void = {integerVal, stringVal in
    print("closure is called")
    print(integerVal)
}

var newClosure = customClosure

newClosure(1, "2")

var customClosure2: (Int, String) -> Void = {
    print("closure is called")
    print($0)
    print($1)
}
customClosure(1, "2")

typealias MyClosure = (Int, String) -> Void

var omClosure : MyClosure = {
    $0
    $1
}

//HW Lesson 4

// Написать функцию в которой необходимо:
//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.
print("HW4")
func checkArrayElelemnts(firstArray: Array<Int>, secondArray: Array<Int>){
    
    var internalArray: [Int] = [1,2,3]
    
    print("Array func")
    if firstArray[0] == 0 && secondArray[0] == 0
    {
        print("First elemnts of arrays are zero")
    }
    if !( firstArray.contains(3) || firstArray.contains(5)) && !( secondArray.contains(3) || secondArray.contains(5))
    {
        print("Arrays don't contain 3 and 5")
    }
    if firstArray.first != nil
    {
        if firstArray.first == firstArray.last
        {
            print("First array element is equal to last array element")
        }
        else{
            print("First array element is not equal to last array element")
        }
    }
    else
    {
        print("First Array is empty")
    }
    
    internalArray.append(2)
    internalArray.remove(at: 1)
    internalArray[0] = 3
    internalArray
    print("Internal array size is \(internalArray.count)")
    
    var bookCard = [
        "title"     : "War and Peace",
        "author"   : "Tolstoy"
    ]
    bookCard["publisher"] = "BelarusDruk"
    bookCard
    bookCard["title"] = "War and World"
    bookCard.removeValue(forKey: "publisher")
    print("Dictionary Book Card size is \(bookCard.count)")
    
    var internalSet: Set<Int> = []
    internalSet.insert(7)
    internalSet
    print("Internal set size is \(internalSet.count)")
    
}

var hw4Array1 = [0,1,3,2,7,0]
var hw4Array2 = [0,1,2,7]
var hw4Array3:Array<Int> = []
checkArrayElelemnts(firstArray: hw4Array1, secondArray: hw4Array2)

var filter = hw4Array1.filter({$0 == 3 || $0 == 5})
filter

hw4Array3 = hw4Array1 + hw4Array2

typealias HwClosure = (Int, Int) -> Int

var hwClosure: HwClosure = {firstInt, secondInt in
    print("closure is called")
    return firstInt + secondInt
}

func forClosure(int1:Int, int2:Int, closure:HwClosure )
{
    var resultInt: Int
    resultInt = closure(int1, int2)
    print("Result Int = \(resultInt)")
}
forClosure(int1: 1, int2: 2, closure: hwClosure)
//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль
//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль
//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)
//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)
//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)
//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)
//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его или вывести в консоль.

//Lesson 5

do {
    guard 1 < 0 else {
        throw NSError(domain: "1", code: 401, userInfo: nil)
    }
}
catch {
    print(error)
}
var globalVar = 10
var color = UIColor.red
var closure: (Int) ->Void = {[weak color] integer in
    print(globalVar, integer)
}
globalVar = 11
print(globalVar)

//Range
let doubleClosedRange = 1...111.1
let intClosedRange = 1...111 // 111>=value>=1

let doubleHalfClosedRange: Range<Double> = -10..<10

let oneSideRangeTo = ...10 //from min Int to 10

let secondSideRangeTo = 10... // from 10 to Max

secondSideRangeTo.contains(9)

//Loop

for index in 0...5 {
 //   print(index)
}

//var optionalInt2:Int?
//
//func guardlet2 (){
//    guard optionalInt2 as? Int else {
//        print("alert in guardlet")
//        return
//    }
//    print("In guardlet")
//}
//guardlet2()

let autoArray = Array(repeating: 1, count: 5)

for element in autoArray {
 //   print(element)
}

for _ in -10...5 {
//print(index)
}

for value in autoArray.enumerated()
{
    //print(value.element, value.offset)
    guard value.offset == 2 else {continue} //break
    print("Number 2:\(value.element)")
}

//HW Lesson 5

/* Day 0 challenge
 let inputString = readLine()! // get a line of input from stdin and save it to our variable

 // Your first line of output goes here
 print("Hello, World.")

 // Write the second line of output

 print(inputString)
 */

/* Interview warm up
 import Foundation

 // Complete the sockMerchant function below.
 func sockMerchant(n: Int, ar: [Int]) -> Int {
     var result = 0
     var colors: Array<Int> = []
     for element in ar
     {
         var index = colors.firstIndex(of: element)
         if index != nil {
             result+=1
             colors.remove(at:index!)
         }
         else
         {
             colors.append(element)
         }
     }
     return result
 }

 let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
 FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
 let fileHandle = FileHandle(forWritingAtPath: stdout)!

 guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
 else { fatalError("Bad input") }

 guard let arTemp = readLine() else { fatalError("Bad input") }
 let ar: [Int] = arTemp.split(separator: " ").map {
     if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
         return arItem
     } else { fatalError("Bad input") }
 }

 guard ar.count == n else { fatalError("Bad input") }

 let result = sockMerchant(n: n, ar: ar)

 fileHandle.write(String(result).data(using: .utf8)!)
 fileHandle.write("\n".data(using: .utf8)!)
 */

//Lesson 6 Test
/*1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите переменную sum типа Optional-Int  без начального значения
 - Присвойте sum значение равное сумме x и y
 */
let x2 = 1
var y = 2.2
var sum:Int?

sum = x2 + Int(y)

/*:
 2. Разверните опционал sum и выведите в консоль. Обратите внимание чтобы в выводе отсутствовало Optional()
 */
if sum != nil
{
    print(sum!)
}

/*:
 3. Выведите в консоль четные числа от 2 до 2000
 */
var oddNumber = 2
while oddNumber <= 20
{
    print(oddNumber)
    oddNumber += 2
}

/*:
 4. Объявите новый тип ColorTuple, который является tuple из четырех компонентов (3 для цвета и один для прозрачности)
 Объявите переменную myColor типа ColorTuple?
 Задайте ей значение
 */
typealias ColorTuple = (red: Int, green: Int, blue: Int, alpha: Double)

var myColor: ColorTuple? = (256,256,256,0.5)

/*:
 5. Объявите функцию, которая получет на вход 3 параметра типа Int и возвращает результат типа ColorTuple
 */
func setColor(red: Int, green:Int, blue:Int) -> ColorTuple
{
    let alphaDefault = 0.5
    return (red,green,blue,alphaDefault)
}
var myColorTest: ColorTuple
myColorTest = setColor(red:1,green:2,blue:3)
print(myColorTest)

/*:
 6. Выведите в консоль результат работы вашей функции для summ
 */

/*:
 7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией
 */
typealias Name = (firstName:String, secondName:String)
func getNames(firstName: String, secondName: String)->Name
{
    return (firstName, secondName)
}
/*:
 8. Напишите функцию, которая получает на вход массив [String?] и возвращает массив [String], в котором выброшены все nil значения из первого массива

 Например из массива
 ["a", nil, "b"] получится массив ["a", "b"]
 */
var inputString: [String?]
var outputString: [String]

inputString = ["a", nil, "b"]

func unwrapString(input:[String?])->[String]
{
    var out:[String] = []
    var size = 0
    
    size = input.count
    for i in 0...(size - 1)
    {
        if input[i] != nil
        {
            out.append(input[i]!)
        }
    }
    return out
}

outputString = unwrapString(input:inputString)

print(outputString)
