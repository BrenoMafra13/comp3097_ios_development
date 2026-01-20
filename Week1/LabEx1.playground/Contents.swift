import UIKit

var greeting: String
greeting = "Hello, playground"

let c = 1
var x = c + 123 - 1

greeting = greeting + String(c)
greeting = "Hello, playground \(c)"
print(greeting)

var arr = [1, 2, 3, 4]
print(arr[1])

var d = ["one": 1, "two": 2]
print(d["one"] ?? 0)

var ops: String? = ""
print(ops!)

var v = "Banana"
switch v {
case "Banana":
    print("Banana")
case let x where x.hasPrefix("Pepper"):
    print("Kind of pepper")
case "Cucumber", "Melon":
    print("Kind of melon")
default:
    print("Unknown")
}

func Foo(a: Int, b: Int) -> Int {
    return a + b
}
Foo(a: 1, b: 2)

class Shape {
    private var x: Int = 0
    var perimeter: Int {
        get {
            return x
        }
        set {
            x = newValue
        }
    }
}

let f = Shape()
f.perimeter = 3

func greetings(name: String) {
    print("Greetings, \(name)")
}

func checkFirstOrLast(X: Int, array: [Int]) -> Bool {
    guard !array.isEmpty else { return false }
    return array.first == X || array.last == X
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingPowerUp || touchingSeed
}

score(touchingPowerUp: true, touchingSeed: true)
