import Foundation

/// 1. Function without arguments
func noArgsAndNoReturnValue() {
    print("I don't know what am I doing")
}

noArgsAndNoReturnValue()

/// 2. Function with arguments
func plusTwo(value: Int) {
    let newValue = value + 2
}

plusTwo(value: 30)

/// 3. Fucntion that returns a value
func newPlusTwo(value: Int) -> Int {
    value + 2
}

newPlusTwo(value: 30)

/// 4. Function with multiple arguments
func customAdd(value1: Int, value2: Int) -> Int {
    value1 + value2
}
let customAdded = customAdd(value1: 4, value2: 6)
customAdded

/// 5. internal labels
func customMinus(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}
let customSubtracted = customMinus(20, 10)

// If you want to return int but not allow the consumer to get the result mark it with @discardableResult
@discardableResult
func myCustomAdd(_ lhs: Int, _ rhs: Int) -> Int {
    lhs + rhs
}

myCustomAdd(20, 30)

/// 6. function inside function
func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    
    return mainLogic(value: value + 3)
}

doSomethingComplicated(with: 30)
