//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

@objc class Student: NSObject {
    @objc var name = ""
    @objc var gradeLevel = 0
}

let s = Student()
s.setValue("Kelly", forKey: "name")
s.setValue(3, forKey: "gradeLevel")

s.name
s.gradeLevel
s.value(forKey: "name")
s.value(forKey: "gradeLevel")
