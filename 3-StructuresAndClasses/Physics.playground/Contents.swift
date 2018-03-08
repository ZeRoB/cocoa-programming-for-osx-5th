//: Playground - noun: a place where people can play

import Cocoa

struct Vector: CustomStringConvertible{
    var x: Double
    var y: Double
    var length: Double {
        return sqrt(x * x + y * y)
    }

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
    
    var description: String {
        return "(\(x), \(y))"
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
print("Gravity is \(gravity)")

class Particle {
    var position: Vector
    var velocity: Vector
    var acceleration: Vector

    init(position: Vector) {
        self.position = position
        velocity = Vector()
        acceleration = Vector()
    }

    convenience init() {
        self.init(position: Vector())
    }

    func tick(dt: TimeInterval) {
        velocity = velocity + acceleration * dt
        position = position + velocity * dt
        position.y = max(0, position.y)
    }
}

class Simulation {
    var particles: [Particle] = []
    var time: TimeInterval = 0.0

    func addParticle(particle: Particle) {
        particles.append(particle)
    }
    func tick(dt: TimeInterval) {
        for particle in particles {
            particle.acceleration = particle.acceleration + gravity
            particle.tick(dt: dt)
            particle.acceleration = Vector()
            particle.position.y
        }
        time += dt
        particles.filter { (particle) -> Bool in
            let live = particle.position.y > 0.0
            if !live {
                print("Particle terminated at time \(time)")
            }
            return live
        }
    }
}

class Rocket: Particle {
    let thrust: Double
    var thrustTimeRemaining: TimeInterval
    let direction = Vector(x: 0, y: 1)
    
    convenience init(thrust: Double, thrustTime: TimeInterval) {
        self.init(position: Vector(), thrust: thrust, thrustTime: thrustTime)
    }
    init(position: Vector, thrust: Double, thrustTime: TimeInterval) {
        self.thrust = thrust
        self.thrustTimeRemaining = thrustTime
        super.init(position: position)
    }
    
    override func tick(dt: TimeInterval) {
        if thrustTimeRemaining > 0.0 {
            let thrustTime = min(dt, thrustTimeRemaining)
            let thrustToApply = thrust * thrustTime
            let thrustForce = direction * thrustToApply
            acceleration = acceleration + thrustForce
            thrustTimeRemaining -= thrustTime
        }
        super.tick(dt: dt)
    }
}


let simulation = Simulation()
//let ball = Particle()
//ball.acceleration = Vector(x: 0, y: 100)
//simulation.addParticle(particle: ball)

let rocket = Rocket(thrust: 10.0, thrustTime: 60.0)
simulation.addParticle(particle: rocket)

while simulation.particles.count > 0 && simulation.time < 500 {
    simulation.tick(dt: 1.0)
}






















