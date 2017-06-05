//: Playground - noun: a place where people can play

import UIKit

var str = "Level2"
let start = str.startIndex
let end = str.index(start, offsetBy: 5)
let range = Range(start..<end)
var level = str.substring(with: range)
str.removeSubrange(range)



let name = "Marie Curie"
let firstSpace = name.characters.index(of: " ")!
let firstName = String(name.characters.prefix(upTo: firstSpace))
print(firstName)

class Person  {
    var firstName = ""
    var lastName = ""
    var age = 0
    
    func input() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding:String.Encoding.utf8.rawValue)
        if let string = rawString {
            return string.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        } else {
            return "Invalid input"
        }
    }
    
    func changeFirstName(newFirstName:String) {
        firstName = newFirstName
    }
    
    func enterInfo() {
        print("What is the first name?")
        firstName = input()
    }
    
    func printInfo() {
        print("First Name: \(firstName)")
    }
}

var newPerson = Person()
newPerson.firstName = "David"
newPerson.lastName = "Pai"
newPerson.age = 43
newPerson.changeFirstName(newFirstName: "Johnny")

//////////////////////////////////////////

func doSomething(callback:()->Void) {
    debugPrint("executed doSomething")
    callback()
}
let onComplete:()->Void = { debugPrint("executed the closure") }
//doSomething(callback: onComplete) // executed

class SomeClass {
    var callback:(()->Void)?
    
    func doSomething(callback: @escaping ()->Void) {
        debugPrint("executed doSomething")
        //self.callback = callback  // error: 閉包逃離該函式,需要在 callback 參數上面加 @escaping
        callback()
    }
}
let someObj = SomeClass()
someObj.doSomething(callback: onComplete)

//////////////////////////////////////////

//var sinValue: Double = 0.0
//for i in 0..<100 {
//    sinValue = sin(Double(i)/10)
//}

//////////////////////////////////////////

var val: Float
val = 10.218
var formatStr = String(format: "%8.2f.", val)
print(formatStr)
formatStr = String(format: "%-8.2f.", val)
print(formatStr)
