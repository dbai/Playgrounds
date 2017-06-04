import UIKit

var str = "Hello, playground"

var id:String? = "11112222"
var capacity:Int? = 16
var test:Int?
test = nil
capacity = nil
print(test)
let pi = 3.1415
print(String(format: "pi = %f", pi))
print("'P' yes")

var i: Int? = 123
print(i!)

var j: Int! = 123
print(j)

var k: Int? = 123
print(k)

var m: Int? = 123
print(m ?? 0)

///////////////////////////////

let p = (4, 2)
switch p {
    case (0, 0):
        print("在 (0, 0) 上")
    case (_, 0):
        print("(\(p.0), 0) 是在 X 軸上)")
    case (0, _):
        print("(0, \(p.1)) 是在 Y 軸上)")
    default:
        print("(\(p.0), \(p.1)) 是任意一點")
}

switch p {
    case (0, 0):
        print("在 (0, 0) 上")
    case (let x, 0):
        print("(\(x), 0) 是在 X 軸上)")
    case let (0, y):
        print("(0, \(y)) 是在 Y 軸上)")
    case (let x, let y) where x != y:
        print("(\(x), \(y)) 是任意一點，而且 x != y")
    case let(x, y) where x == y:
        print("(\(x), \(y)) 是任意一點，而且 x == y")
    default:
        print("沒事")
}

///////////////////////////////

let numbers = [5, 0, 3, 7, 9, 2, 1, 8, 4]
func ascending(a: Int, b: Int) -> Bool {
    return a < b
}

for i in numbers {
    print("\(i) ", terminator: "")
}
print()
//var finished = numbers.sorted(by: ascending)
//var finished = numbers.sorted(by: {(a, b) in return a < b})
//var finished = numbers.sorted(by: {(a, b) in a < b})
//var finished = numbers.sorted(by: {$0 < $1})
//var finished = numbers.sorted(by: <)
var finished = numbers.sorted() {
    (a: Int, b: Int) -> Bool in
    return a < b
}

for i in finished {
    print("\(i) ", terminator: "")
}

///////////////////////////////

print()
func calculateSquare(forNumber n: Int) -> () -> Int {
    var square = 1
    print("first square: \(square)")
    func answer() -> Int {
        print("square: \(square)")
        square = square * n
        return square
    }
    return answer
}

let squareByFive = calculateSquare(forNumber: 5)
print(squareByFive())
print(squareByFive())
print(squareByFive())
print(squareByFive())
print(squareByFive())

///////////////////////////////

enum People {
    case freshman
    case sophomore
    case junior
    case senior
}

enum People2 {
    case freshman, sophomore, junior, senior
}

enum People3 {
    case freshman(Int)
    case sophomore(Int)
    case junior(Int)
    case senior(Int)
}

enum People4 {
    case freshman(Int), sophomore(Int), junior(Int), senior(Int), other(Int, Int), alumnus
}

enum People5: Int {
    case freshman = 1, sophomore, junior, senior, other = 100, alumnus
}

let man1 = People4.freshman(1)
let man2 = People4.other(8, 2)
switch man2 {
    case .freshman(let grade):
        print("\(grade) sucks")
    case .other(let one, let two):
        print("\(one) and \(two) are both stupid")
    default:
        print("get out")
}

switch man2 {
    case .freshman(let grade):
        print("\(grade) sucks")
    case let .other(one, two):
        print("\(one) and \(two) are both stupid")
    default:
        print("get out")
}

let man3 = People5.senior
print("\(man3.rawValue) \(man3.hashValue)")
let man4 = People5.alumnus
print("\(man4.rawValue) \(man4.hashValue)")

///////////////////////////////

class Rectangle {
    var width = 0.0
    var height = 0.0
    
    func getArea() -> Double {
        return width * height
    }
    
//    func setWidthAndHeight(width w: Double, height h: Double) {
//        width = w
//        height = h
//    }
    
    func setWidthAndHeight(w: Double, h: Double) {
        width = w
        height = h
    }
}

let rectObj = Rectangle()
rectObj.setWidthAndHeight(w: 10, h: 20)
let rectArea = rectObj.getArea()
print("矩形面積: \(rectArea)")


struct Circle {
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * 3.14159
    }
    
    mutating func setRadius(r: Double) {
        radius = r
    }
}

var circleObj = Circle()
circleObj.setRadius(r: 10)
let totalArea = circleObj.getArea()
print("面積: \(totalArea)")

struct Circle2 {
    var radius: Double {
//        get {
            return 0.0
//        }
    }
    
    func getArea() -> Double {
        return radius * radius * 3.14159
    }
}

var circleObj2 = Circle(radius: 10)
let totalArea2 = circleObj2.getArea()
print("面積: \(totalArea2)")


class Father {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    /*final*/ func test() {
        
    }
}

class Son: Father {
    override func test() {
        
    }
}

var son = Son(name: "Ben")
print(son.name)

///////////////////////////////

struct Fruits {
    var fruitName: String
}

//class Fruits {
//    var fruitName: String
//}

var myFruit = Fruits(fruitName: "Mango")
print("Buy some \(myFruit.fruitName)es")

///////////////////////////////

class A {
    var name: String?
    var b: B?
    
    deinit {
        print("de-initialized")
    }
}

class B {
    
}

var a1: A? = A()
var a2: A? = a1
var a3: A? = a1
a1 = nil
a2 = nil
a3 = nil

///////////////////////////////

class Teacher {
    var name: String
    var status: String
    
    init(name: String, status: String) {
        self.name = name
        self.status = status
    }
}

//let campusObj: [AnyObject] = [ //this line works too
let campusObj: [Any] = [
    Teacher(name: "David", status: "Professor"),
    Teacher(name: "Swan", status: "Assistant")
]

for obj in campusObj {
    if let t = obj as? Teacher {
        print("\(t.name): \(t.status)")
    }
    
    let t2 = obj as! Teacher
    print("\(t2.name): \(t2.status)")
}

///////////////////////////////

extension Int {
    subscript(index: Int) -> Int {
        var base = 1, i = 1
        while i <= index {
            base *= 10
            i += 1
        }
        return (self / base) % 10
    }
    
    subscript(multiplier: Double) -> Double {
        return Double(self) * multiplier
    }
}

print(123456789[0])
print(123456789[1])
print(123456789[2])
print(123456789[8])
print(123456789[9])

print(123456789[0.0])
print(123456789[1.0])
print(123456789[2.0])
print(123456789[8.0])
print(123456789[9.0])