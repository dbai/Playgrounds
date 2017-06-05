//: Playground - noun: a place where people can play


// 1
import UIKit
import XCPlayground
import PlaygroundSupport

// 2
class Responder: NSObject {
    
    func tap() {
        print("Button pressed")
    }
}
let responder = Responder()

// 3
let button = UIButton(type: .system)
button.setTitle("Button", for: .normal)
button.addTarget(responder, action: #selector(Responder.tap), for: .touchUpInside)
button.sizeToFit()
button.center = CGPoint(x: 50, y: 25)

// 4
let frame = CGRect(x: 0, y: 0, width: 100, height: 50)
let view = UIView(frame: frame)
view.addSubview(button)
XCPlaygroundPage.currentPage.liveView = view
//PlaygroundPage.current.liveView = view

