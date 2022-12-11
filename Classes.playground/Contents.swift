import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func gettingOld() {
        self.age += 1
    }
    
    func gettingOld(with years: Int) {
        self.age += years
    }
}

let John = Person(name: "John", age: 20)

John.age
John.gettingOld()
John.age

John.age
John.gettingOld(with: 7)
John.age

let Julia = John

if John === Julia {
    "John and Julia point to the same memory space"
} else {
    "They don't point to the same memory"
}


// Subclass
class Vehicle {
    func getVroom() -> String {
        return "Vroom vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.getVroom()


class Person2 {
    private(set) var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let baz = Person2(age: 20)
baz.age
// baz.age += 1 -> can't be mutated from the outside
baz.increaseAge()
baz.age


class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    // Designated initializers
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    
    // convenience initializer
    convenience init(model: String) {
        self.init(model: model, year: 2023)
    }
}

class TeslaModelY: Tesla {
    override init() { // we need override here
        super.init(model: "Y", year: 2023) // we only are allowed to call designated init here
//        super.init(model: "Y")
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)
fooBar.age

func doSomething(with person: Person2) {
    person.increaseAge()
}

doSomething(with: fooBar)
fooBar.age


// Deinitializers
class MyClass {
    init() {
        "Initialized"
    }
    
    func doSomething() {
        "Do Something"
    }
    
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}

myClosure()
