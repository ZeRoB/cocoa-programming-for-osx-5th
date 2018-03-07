//: Playground - noun: a place where people can play

import Cocoa

struct Vector {
    var x: Double
    var y: Double

    init() {
        self.init(x: 0, y: 0)
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func vectoreByAddingVector(vector: Vector) -> Vector {
        return Vector(x: x + vector.x,
                      y: y + vector.y)
    }
}

let gravity  = Vector(x: 0.0, y: -9.8)
let twoGs = gravity.vectoreByAddingVector(vector: gravity)
