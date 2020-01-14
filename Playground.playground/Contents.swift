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




