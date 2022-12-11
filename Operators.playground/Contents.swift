import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    "I'm older than you"
} else if myAge < yourAge {
    "I'younger than you"
} else {
    "Oh hey, we are the same age!"
}

let myMothersAge = myAge + 30
let doubleMyAge = myAge * 2

/// 1. unary prefix
let foo = !true

/// 2. unary postfix
let name = Optional("Swift")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

/// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"

/// 4. ternary operator
let age = 30
let message: String = age >= 18
    ? "You are an adult"
    : "Ypu are not yet an adult"
