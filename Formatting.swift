//
//  Formatting.swift
//  Clean Code Study
//
//  Created by Branimir Markovic on 22.11.22..
//

import UIKit


// “You should take care that your code is nicely formatted. You should choose a set of simple rules that govern the format of your code, and then you should consistently apply those rules. If you are working on a team, then the team should agree to a single set of formatting rules and all members should comply. It helps to have an automated tool that can apply those formatting rules for you.”

// MARK: - “The Purpose of Formatting”

// “Code formatting is important. It is too important to ignore and it is too important to treat religiously. Code formatting is about communication, and communication is the professional developer’s first order of business.


// MARK: - Vertical Formatting

//“We would like a source file to be like a newspaper article. The name should be simple but explanatory. The name, by itself, should be sufficient to tell us whether we are in the right module or not. The topmost parts of the source file should provide the high-level concepts and algorithms. Detail should increase as we move downward, until at the end we find the lowest level functions and details in the source file.”

// MARK: - “Vertical Openness and Vertical Density Between Concepts”

// “If openness separates concepts, then vertical density implies close association. So lines of code that are tightly related should appear vertically dense.”

// MARK: - “Vertical Distance

// Have you ever chased your tail through a class, hopping from one function to the next, scrolling up and down the source file, trying to divine how the functions relate and operate, only to get lost in a rat’s nest of confusion? Have you ever hunted up the chain of inheritance for the definition of a variable or function? This is frustrating because you are trying to understand what the system does, but you are spending your time and mental energy on trying to locate and remember where the pieces are.
//Concepts that are closely related should be kept vertically close to each other”

// MARK: - Variable Declarations

// “Variable Declarations. Variables should be declared as close to their usage as possible. Because our functions are very short, local variables should appear a the top of each function”

func randomNumber() -> Int {
    let array: [Int] = [1,2,3,4,5,6,7]
    return array.randomElement()!
}

// MARK: - “Instance variables.

// Instance variables, on the other hand, should be declared at the top of the class”

class ABC {
    var a = ""
    var b = ""
    var c = ""
    
    func foo() {}
    
}

// MARK: - Dependent Functions.

// “If one function calls another, they should be vertically close, and the caller should be above the callee, if at all possible.”

class ViewController: UIViewController {
    
    private func configureUI() {
        addSubviews()
        configureConstraints()
    }
    
    private func addSubviews() {}
    private func configureConstraints() {}
    
}

// MARK: - Team Rules

// Every programmer has his own favorite formatting rules, but if he works in a team, then the team rules.
// A team of developers should agree upon a single formatting style, and then every member of that team should use that style. We want the software to have a consistent style. We don’t want it to appear to have been written by a bunch of disagreeing individuals.”


