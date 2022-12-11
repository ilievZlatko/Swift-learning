import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 20)

foo.name
foo.age


// Struct with initializer
struct CommodoreComputer {
    let name: String
    let manufacturer: String
    
    init(name: String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 = CommodoreComputer(name: "C64")
c64.name
c64.manufacturer


// Struct with computed property
struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")
fooBar.firstName
fooBar.lastName
fooBar.fullName


// Structure with mutation
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        currentSpeed = speed
    }
}

// if the immutableCar is declared with let it can't be mutated
var immutableCar = Car(currentSpeed: 10)
immutableCar.drive(speed: 20)

// Struct inheritance is not possible
struct LivingThing {
    init() {
        "I'm a living thing"
    }
}

// Struct can not inherit structs
//struct Animal: LivingThing {
//
//}
