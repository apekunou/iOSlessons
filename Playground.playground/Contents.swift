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




