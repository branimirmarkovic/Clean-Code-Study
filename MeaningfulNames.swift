//
//  MeaningfulNames.swift
//  Clean Code Study
//
//  Created by Branimir Markovic on 14.11.22..
//

import Foundation



//  “The name of a variable, function, or class, should answer all the big questions. It should tell you why it exists, what it does, and how it is used. If a name requires a comment, then the name does not reveal its intent.”

let b: Int = 0  // Elapsed Time in days

// Examples
let elapsedTimeInDays: Int = 0

typealias NumberOfDays = Int
let elapsedTime: NumberOfDays = 0

// Choosing good names will improve code while number of lines and code complexity will remain the same.

// MARK: - Avoid Disinformation

// “ We should avoid words whose entrenched meanings that vary from our intended meaning”

// Example - If itemList is not really List, do not use that word.

let itemList = "Mark, Brian, John"

// Do not use similar names that vary slightly

class UserXYZControlsManager {}
class UserXZYControlsManager {}

// Avoid spelling errors. You can turn on Xcode build spell checker. Edit -> Format -> Spelling and Grammar.

// MARK: - Make Meaningful Distinctions.

// Do not use misspellings just to satisfy compiler.

class klass {}

// Avoid non informative naming


// In swift there is wide variety of syntax features to name parameters in functions or to omit them if they are not necessary.


// Avoid Noise words

struct Product {
    let productData: Data
    let productName: String
    let productDate: Date
}
// It is unnecessary to prefix every property with class Name

struct Product1 {
    let data: Data
    let name: String
    let date: Date
}

// MARK: - Use Pronounceable Names

// “Make your names pronounceable.“If you can’t pronounce it, you can’t discuss it without sounding strange.”
// Always write full words, do not use made up words.

let resDatDic: [String: Data] = [:]
let responseDataDictionary: [String: Data] = [:]

// MARK: - Use Searchable Names 

// “Single-letter names and numeric constants have a particular problem in that they are not easy to locate across a body of text.”
// It is hard to search for example variable "e" in file because that letter is most common in English language and it is likely to show up in every passage of text in every source file.

//“single-letter names can ONLY be used as local variables inside short methods. The length of a name should correspond to the size of its scope
func foo() {
    for i in 0...10 {
        print("\(i)")
    }
}

// MARK: - Pick one Word per Concept

// “Pick one word for one abstract concept and stick with it. For instance, it’s confusing to have fetch, retrieve, and get as equivalent methods of different classes”

// MARK: - Use Solution Domain Names.
// “use computer science (CS) terms, algorithm names, pattern names, math terms, and so forth”


class AccountVisitor {}

// Visitor word will mean a great deal to a person who is familiar with VISITOR pattern and will read your code.

// MARK: - “Don’t Add Gratuitous Context”


//“In an imaginary application called “Gas Station Deluxe,” it is a bad idea to prefix every class with GSD. You type G and press the completion key and are rewarded with a mile-long list of every class in the system.”




