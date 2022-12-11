import Foundation

//func add(_ lhs: Int, _ rhs: Int) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int = { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

add(20, 30)


func customAdd(_ lhs: Int, _ rhs: Int, using callback: (Int, Int) -> Int) {
    callback(rhs, rhs)
}

customAdd(20, 30) { (lhs, rhs) in
    lhs + rhs
}

customAdd(20, 30) { $0 + $1 } // same as above

let ages = [30, 20, 19, 40]
ages.sorted(by: <)
ages.sorted(by: >)
ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs > rhs
})


func customAdd2(_ lhs: Int, _ rhs: Int, using callback: (Int, Int) -> Int) {
    callback(rhs, rhs)
}
