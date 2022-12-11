import Foundation

// Similar to TS interface
protocol CanBreath {
    func breathe()  // function with no body
}

struct Animal: CanBreath {
    func breathe() {
        "The animal is able to breath"
    }
}

struct Person: CanBreath {
    func breathe(){
        "The person is able to breath"
    }
}

let dog = Animal()
dog.breathe()

let foo = Person()
foo.breathe()


protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        "Jumping..."
    }
}

struct Cat: CanJump {

}

let whiskers = Cat()
whiskers.jump()


protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

extension HasName {
    func describeMe() -> String {
        return "Your name is \(name) and your are \(age) years old"
    }
    
    mutating func increaseAge() {
        self.age += 1
    }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

var woof = Dog(name: "Woof", age: 10)
woof.name
woof.age
woof.age += 1
woof.age
woof.describeMe()
woof.increaseAge()
woof.age


protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int
    
    init() {
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed

func describe(obj: Any) {
    if obj is Vehicle {
        "obj conforms to the Vehicle protocol"
    } else {
        "obj does not conform to the Vehicle protocol"
    }
}

describe(obj: bike)


func increaseSpeedIfVehicle(obj: Any) {
    if var vehicle = obj as? Vehicle {
        vehicle.speed
        vehicle.increaseSpeed(by: 10)
        vehicle.speed
    } else {
        "This is not a vehicle"
    }
}

increaseSpeedIfVehicle(obj: bike)
