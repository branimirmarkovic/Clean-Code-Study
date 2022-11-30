//
//  Functions.swift
//  Clean Code Study
//
//  Created by Branimir Markovic on 17.11.22..
//

import UIKit


// MARK: - Small Functions

// “The first rule of functions is that they should be small”

// “Blocks within if statements, else statements, while statements, and so on should be one line long. Probably that line should be a function call. Not only does this keep the enclosing function small, but it also adds documentary value because the function called within the block can have a nicely descriptive name.
// This also implies that functions should not be large enough to hold nested structures. Therefore, the indent level of a function should not be greater than one or two. This, of course, makes the functions easier to read and understand.”

let isPreparationOn = true
let isTeardownRequired = false

func doSomethingWithPreparation() {
    
    if isPreparationOn {
        prepare()
    }
    
    doLogic()
    
    if isTeardownRequired {
        tearDown()
    }
}

private func prepare() {}
private func doLogic() {}
private func tearDown() {}

// MARK: - Do One Thing

// “FUNCTIONS SHOULD DO ONE THING. THEY SHOULD DO IT WELL. THEY SHOULD DO IT ONLY.”

// “Functions that do one thing cannot be reasonably divided into sections.”


// MARK: - One Level of Abstraction per Function

// “In order to make sure our functions are doing “one thing,” we need to make sure that the statements within our function are all at the same level of abstraction”

// “We want the code to read like a top-down narrative.5 We want every function to be followed by those at the next level of abstraction so that we can read the program, descending one level of abstraction at a time as we read down the list of functions. I call this The Step-down Rule.”

// Fist Level
func renderWithCheck(data: Data) {
    if dataIsValid(data) {
        render(data)
    } else {
        showError()
    }
}

// Second Level
func dataIsValid(_ data: Data) -> Bool {
    return data.count > 0
}
func render(_ data: Data) {
    // rendering...
}
func showError() {
    // show error..
}

// MARK: - Switch Statements

//  It’s also hard to make a switch statement that does one thing. By their nature, switch statements always do N things. Unfortunately we can’t always avoid switch statements, but we can make sure that each switch statement is buried in a low-level class and is never repeated. We do this, of course, with polymorphism”


// MARK: - Use Descriptive Names

// “Don’t be afraid to make a name long. A long descriptive name is better than a short enigmatic name. A long descriptive name is better than a long descriptive comment.”


// MARK: -  Function Arguments

// “The ideal number of arguments for a function is zero (niladic). Next comes one (monadic), followed closely by two (dyadic). Three arguments (triadic) should be avoided where possible. More than three (polyadic) requires very special justification—and then shouldn’t be used anyway.”

// MARK: - Common Monadic Forms
// Doing logic and returnig value

func numberOfLetters(in message:String) -> Int { message.count }
// Event is form when there is an input argument but no output argument”
func shwoMessage(_ message:String) {}

// Bad forms

func numberOfLetterss(in message:String) {} // No return value, where is this number that functions is calculating??

func showMessage(_message: String) -> Int { 1 } //What is this return int, it is not clear from function name and parameters.

// MARK: - Flag Arguments

// “Flag arguments are ugly. Passing a boolean into a function is a truly terrible practice. It immediately complicates the signature of the method, loudly proclaiming that this function does more than one thing. It does one thing if the flag is true and another if the flag is false!”
// God practice is to split function in two based on flag.

func makeWeather(_ isSummer: Bool) {
    if isSummer {
        // temperatue = 35
        // rain = nil ...
    } else {
        // temperature = 0
        // rain = 10...
    }
}

func makeWinterWeather() {
    // temperature = 0
    // rain = 10...
}
func makeSummerWeather() {
    // temperatue = 35
    // rain = nil ...
}


// MARK: - Argument Objects

// “When a function seems to need more than two or three arguments, it is likely that some of those arguments ought to be wrapped into a class of their own.”

// From this
func saveAdress1( street: String, city: String, postalCode: Int ) {}
// To this

func saveAdress2(_ adress: Adress) {}
struct Adress {
    var street: String
    var city: String
    var postalCode: Int
}

// common example in swift 

func upload(data: Data, destination: String, completion : @escaping (Data, Error, Bool) -> Void) {}

typealias UploadCompletion = (Result<Data,Error>) -> Void
struct UploadTask {
    var data: Data
    var destination: String
    var completion: UploadCompletion
}

func upload1(task:UploadTask){}

// MARK: - “Have No Side Effects”


// “Side effects are lies. Your function promises to do one thing, but it also does other hidden things. Sometimes it will make unexpected changes to the variables of its own class.”

// Bad Example

func logIn(userName: String, password: String) {
    if userNameIsValid() && passwordIsValid() {
        logIn()
        // Here is problem
        startLoggerSession()
    }
}

// Better way is
func logInAndStartSession(userName: String, password: String) {
    if userNameIsValid() && passwordIsValid() {
        logIn()
        startLoggerSession()
    }
}
// But this also violates "Do one Thing."

//Solution
func logIn(userName: String, password: String, completion: () -> Void) {
    if userNameIsValid() && passwordIsValid() {
        logIn()
        completion()
    }
}
func userNameIsValid() -> Bool {Bool.random()}
func passwordIsValid() -> Bool {Bool.random()}
func logIn() {}
func startLoggerSession() {}

// MARK: - Command Query Separation

// “Functions should either do something or answer something, but not both. Either your function should change the state of an object, or it should return some information about that object. Doing both often leads to confusion.”

// MARK: - “Error Handling Is One Thing”


// “Functions should do one thing. Error handing is one thing. Thus, a function that handles errors should do nothing else. This implies  that if the keyword try exists in a function, it should be the very first word in the function and that there should be nothing after the catch/finally blocks.”






