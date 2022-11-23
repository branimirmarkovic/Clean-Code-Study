//
//  Objects and Data Structures.swift
//  Build
//
//  Created by Branimir Markovic on 23.11.22..
//

import Foundation

// “There is a reason that we keep our variables private. We don’t want anyone else to depend on them. We want to keep the freedom to change their type or implementation on a whim or an impulse.”

// “Hiding implementation is not just a matter of putting a layer of functions between the variables. Hiding implementation is about abstractions! A class does not simply push its variables out through getters and setters. Rather it exposes abstract interfaces that allow its users to manipulate the essence of the data, without having to know its implementation.”

class Vehicle {
    private let capacity: Int = 200
    private var currentFuel: Int = 190
    func getVehicleCapacityInLiters() -> Int {self.capacity}
    func getLitersOfGasoline() -> Int {self.currentFuel}
}

// prefered example with abstraction

class Vehicle1 {
    private let capacity: Int = 200
    private var currentFuel: Int = 190
    
    func getPercentFuelRemaining() -> Double {Double(self.capacity / self.currentFuel)}
    
    // “We do not want to expose the details of our data. Rather we want to express our data in abstract terms. This is not merely accomplished by using interfaces and/or getters and setters. Serious thought needs to be put into the best way to represent the data that an object contains. The worst option is to blithely add getters and setters.”
}

// MARK: - “Data/Object Anti-Symmetry”

// “These two examples above show the difference between objects and data structures. Objects hide their data behind abstractions and expose functions that operate on that data. Data structure expose their data and have no meaningful functions.”

// MARK: - Procedural Code

struct Circle {
    let radius: Double
}
struct Rectangle {
    let sideA: Double
    let sideB: Double
}
struct Square {
    let side: Double
}

class Geometry {
    static let pi: Double = 3.14
    
    func area(for shape: Any) -> Double? {
        if let shape = shape as? Circle {
            return shape.radius * 2 * Self.pi
        } else if let shape = shape as? Rectangle {
            return shape.sideA * shape.sideB
        }  else if let shape = shape as? Square {
            return shape.side * shape.side
        } else {
            return nil
        }
    }
}

// MARK: - OO Code

class Shape {
    func area() -> Double? {nil}
}

class Circle1: Shape {
    override func area() -> Double? {
        // code for area
        nil
    }
}
class Rectangle1: Shape {
    override func area() -> Double? {
        // code for area
        nil
    }
}
class Square1: Shape {
    override func area() -> Double? {
        // code for area
        nil
    }
}



// “Procedural code (code using data structures) makes it easy to add new functions without changing the existing data structures. OO code, on the other hand, makes it easy to add new classes without changing existing functions.”
// “Procedural code makes it hard to add new data structures because all the functions must change. OO code makes it hard to add new functions because all the classes must change.”

    
// MARK: - Hybrid Structures

// hybrid structures that are half object and half data structure. They have functions that do significant things, and they also have either public variables or public accessors and mutators that, for all intents and purposes, make the private variables public, tempting other external functions to use those variables the way a procedural program would use a data structure
// This is sometimes called Feature Envy.
//Such hybrids make it hard to add new functions but also make it hard to add new data structures. They are the worst of both worlds. Avoid creating them. They are indicative of a muddled design whose authors are unsure of—or worse, ignorant of—whether they need protection from functions or types.”

// MARK: - Data Transfer Objects

// The quintessential form of a data structure is a class with public variables and no functions. This is sometimes called a data transfer object, or DTO. DTOs are very useful structures, especially when communicating with databases or parsing messages from sockets, and so on. They often become the first in a series of translation stages that convert raw data in a database into objects in the application code.”

final class DataMapper {
    func map(from data: Data) -> [String:Any] {
        // logic for mapping 
        [:]
    }
}

// MARK: - Conclusion

// “Objects expose behavior and hide data. This makes it easy to add new kinds of objects without changing existing behaviors. It also makes it hard to add new behaviors to existing objects. Data structures expose data and have no significant behavior. This makes it easy to add new behaviors to existing data structures but makes it hard to add new data structures to existing functions.
// In any given system we will sometimes want the flexibility to add new data types, and so we prefer objects for that part of the system. Other times we will want the flexibility to add new behaviors, and so in that part of the system we prefer data types and procedures. Good software developers understand these issues without prejudice and choose the approach that is best for the job at hand.”

