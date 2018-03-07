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

class Particle {
    var position: Vector
    var velocity: Vector = Vector()
    var acceleration: Vector = Vector()
    
    init(position: Vector) {
        self.position = position
    }
}

func +(left: Vector, right: Vector) -> Vector {
    return left.vectoreByAddingVector(vector: right)
}
func *(left: Vector, right: Double) -> Vector {
    return Vector(x: left.x * right, y: left.y * right)
}

let gravity  = Vector(x: 0.0, y: -9.8)
let twoGs = gravity + gravity
let twoGsAlso = gravity * 2.0
