import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
}

let animal = Animals.cat
animal

if animal == Animals.cat {
    "This is a cat"
} else if animal == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}

switch animal {
    case .cat:
        "This is a cat"
        break
    case .dog:
        "This is a dog"
        break
    case .rabbit:
        "This is a rabbit"
        break
}

func describeAnimal(_ animal: Animals) {
    switch animal {
        
    case .cat:
        "This is a cat"
        break
    case .dog:
        "This is a dog"
        break
    case .rabbit:
        "This is a rabbit"
        break
    }
}

describeAnimal(animal)


enum Shortcuts {
    case fileOrFoldrt(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcuts.wwwUrl(path: URL(string: "https://apple.com")!)


switch wwwApple {
    case .fileOrFoldrt(let path, let name):
        path
        name
        break
    case .wwwUrl(let path):
        path
        break
    case .song(let artist, let songName):
        artist
        songName
        break
}

// after the clean up
switch wwwApple {
    case let .fileOrFoldrt(path, name):
        path
        name
        break
    case let .wwwUrl(path):
        path
        break
    case let .song(artist, songName):
        artist
        songName
        break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcuts.song(artist: "Symphony X", songName: "Without You")

// you can ignore some of the properties you are not concerned to
if case let .song(_, songName) = withoutYou {
    songName
}


enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMake: Int)
    
    // function getter
    func getManufacturer() -> String {
        switch self {
            case let .car(manufacturer, _):
                return manufacturer
            case let .bike(manufacturer, _):
                return manufacturer
        }
    }
    
    // or computed prop
    var manufacturer: String {
        switch self {
            case let .car(manufacturer, _), // swift can combine the cases like so
                let .bike(manufacturer, _):
                return manufacturer
        }
    }
}


let car = Vehicle.car(manufacturer: "Tesla", model: "X")
let bike = Vehicle.bike(manufacturer: "HD", yearMake: 1987)

car.getManufacturer()
bike.getManufacturer()

car.manufacturer
bike.manufacturer


// Enum with raw value
// Always have to specify the type with raw value
enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue // -> "Dad"
FamilyMember.brother.rawValue // -> "Bro"


enum FavoriteEmiji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoriteEmiji.allCases
FavoriteEmiji.allCases.map(\.rawValue)


if let blush = FavoriteEmiji(rawValue: "😊") {
    "Found the blush emoji"
    blush
} else {
    "This emoji doesn't exist"
}

enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight


// Indirect (recursive) enumerations
indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    
    func calculateResult(of operation: IntOperation? = nil) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freeHand(operation):
            return calculateResult(of: operation)
        }
    }
}

let freehand = IntOperation.freeHand(.add(2, 4))
freehand.calculateResult()
