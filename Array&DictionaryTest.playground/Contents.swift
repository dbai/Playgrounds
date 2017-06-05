//: Playground - noun: a place where people can play

import UIKit

var array1: [String]
var array2: [String] = []
var arrar3 = [String]()
var array4: Array<String>
var array5: Array<String> = []
array1 = []
array4 = []

var array6 = ["David", "Swan", "Ben", "Luke"]
var array7: [String] = ["David", "Swan", "Ben", "Luke"]
var array8: Array<String> = ["David", "Swan", "Ben", "Luke"]
var array9 = [String](repeating: "Love", count: 5)
var array10 = Array(repeating: "Love", count: 5)

var array11: [SetIndex<String>] = []

//////////////////////////


array6.append("Love")
array6 += ["Love"]

array6[4...5] = ["The", "Beatles"]

for i in array6 {
    print("Method 1: \(i)")
}

for (index, element) in array6.enumerated() {
    print("Method 2: \(index): \(element)")
}

//////////////////////////
// enumerated() 只適用於 zero-based, integer-indexed collections, such as Array and ContiguousArray
// 如果是 Set，必須用 zip(_:_:) 去 iterate

let names: Set = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
var shorterIndices: [SetIndex<String>] = []
for (i, name) in zip(names.indices, names) {
    if name.characters.count <= 5 {
        shorterIndices.append(i)
    }
}
for i in shorterIndices {
    print(names[i])
}

//////////////////////////

var dic1: [Int: String]
var dic2: [Int: String] = [:]
var dic3 = [Int: String]()
var dic4: Dictionary<Int, String>
var dic5: Dictionary<Int, String> = [:]
dic1 = [:]
dic4 = [:]
var dic6 = [1: "David", 2: "Swan", 3: "Ben"]
var dic7: [Int: String] = [1: "David", 2: "Swan", 3: "Ben"]
var dic8: Dictionary<Int, String> = [1: "David", 2: "Swan", 3: "Ben"]

for (key, value) in dic8 {
    print("\(key): \(value)")
}

var countries = ["Taiwan": "Taipei 101", "France": "Eiffel Tower", "USA": "Statue of Liberty"]
if let removedCountry = countries.removeValue(forKey: "Taiwan") {
    print("The removed lanmark name is: \(removedCountry)")
}
else {
    
}
