//: Playground - noun: a place where people can play

import UIKit

func sayHello() -> String {
    return "您好"
}
print(sayHello())

func cal(_ x: Int, _ y: Int) -> (add: Int, sub: Int) {
    return (x + y, x - y)
}
let result = cal(6, 4)
print("6 + 4 = \(result.add), 6 - 4 = \(result.sub)")

func add(x: Int, y: Int = 4) -> Int {
    return x + y
}
print(add(x: 5))

func multiAdd(_ x: Int...) -> Int {
    var result = 0
    for i in x {
        result += i
    }
    return result
}
print(multiAdd(8, 4, 13))

func cal2(_ x: Int, _ y: inout Int) -> Int {
    //    x += 1         //錯誤,預設為常數
    y += 1         //正確
    return (y)
}
var x = 10; var y = 6
var result2=cal2(x, &y)
print(result2)


func add2(x : Int, y : Int) -> Int {
    return x + y
}
func sub2(x : Int, y : Int) -> Int {
    return x - y
}
var 一個變數: (Int, Int) -> Int = add2
print(一個變數(10, 6))
一個變數 = sub2
print(一個變數(10, 6))


func getResult(_ 一個函數參數: (Int, Int) -> Int, _ x: Int, _ y: Int) {
    print(一個函數參數(x, y))
}
getResult(add2, 6, 3)
getResult(sub2, 6, 3)


func chooseFunc(isSub: Bool) -> (Int, Int) -> Int {
    return isSub ? sub2 : add2
}
var a = 5; var b = 10
let addOrSub = chooseFunc(isSub: a - b > 0)
print(addOrSub(a, b))


func chooseFunc2(isSub: Bool) -> (Int, Int) -> Int {
    func add3(x : Int, y : Int) -> Int {
        return x + y
    }
    func sub3(x : Int, y : Int) -> Int {
        return x - y
    }
    return isSub ? sub3 : add3
}
let addOrSub2 = chooseFunc2(isSub: a - b > 0)
print(addOrSub2(a, b))


func test(_ x: Int = 10) {
    print(x)
}
test()
test(20)
