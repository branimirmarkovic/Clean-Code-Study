//
//  UnitTests.swift
//  Build
//
//  Created by Branimir Markovic on 30.11.22..
//

import UIKit
import XCTest

// MARK: - “The Three Laws of TDD”

// “First Law You may not write production code until you have written a failing unit test.
// Second Law You may not write more of a unit test than is sufficient to fail, and not compiling is failing.
// Third Law You may not write more production code than is sufficient to pass the currently failing test.”

// “These three laws lock you into a cycle that is perhaps thirty seconds long. The tests and the production code are written together, with the tests just a few seconds ahead of the production code.
// If we work this way, we will write dozens of tests every day, hundreds of tests every month, and thousands of tests every year. If we work this way, those tests will cover virtually all of our production code.”


// MARK: - Keeping Tests Clean

// Quality of test code should not be “Quick and dirty”.
// It should be maintained with same standards and practices as Production Code.
// Deciding to have dirty tests is better than no tests is bad practice.

//  Having dirty tests is equivalent to, if not worse than, having no tests. The problem is that tests must change as the production code evolves. The dirtier the tests, the harder they are to change. The more tangled the test code, the more likely it is that you will spend more time cramming new tests into the suite than it takes to write the new production code. As you modify the production code, old tests start to fail, and the mess in the test code makes it hard to get those tests to pass again. So the tests become viewed as an ever-increasing liability.”

// MARK: - “Tests Enable the -ilities




// “If you don’t keep your tests clean, you will lose them. And without them, you lose the very thing that keeps your production code flexible. Yes, you read that correctly. It is unit tests that keep our code flexible, maintainable, and reusable. The reason is simple. If you have tests, you do not fear making changes to the code! Without tests every change is a possible bug. No matter how flexible your architecture is, no matter how nicely partitioned your design, without tests you will be reluctant to make changes because of the fear that you will introduce undetected bugs.”

// MARK: - Clean Test

// Clean test should follow BUILD-OPERATE-CHECK pattern ( aka AAA Pattern - Arrange, Act, Assert

func colorViewToRed(_ view: UIView) -> UIView {
    view.backgroundColor = .red
    return view
}

func test_colorViewToRed_success() {
    // ARRANGE
    var sut = UIView()
    
    // ACT
    sut = colorViewToRed(sut)
    
    // ASSERT
    XCTAssertTrue(sut.backgroundColor == .red)
}

// MARK: - One assert pert test

// “Single assert rule is a good guideline, but do not afraid to put more than one assert in a test.The best thing we can say is that the number of asserts in a test ought to be minimized.”

// MARK: - “Single Concept per Test”

// “Perhaps a better rule is that we want to test a single concept in each test function. We don’t want long test functions that go testing one miscellaneous thing after another.”

// MARK: - F.I.R.S.T

// “Fast Tests should be fast. They should run quickly. When tests run slow, you won’t want to run them frequently. If you don’t run them frequently, you won’t find problems early enough to fix them easily. You won’t feel as free to clean up the code. Eventually the code will begin to rot.
//Independent Tests should not depend on each other. One test should not set up the conditions for the next test. You should be able to run each test independently and run the tests in any order you like. When tests depend on each other, then the first one to fail causes a cascade of downstream failures, making diagnosis difficult and hiding downstream defects.
//Repeatable Tests should be repeatable in any environment. You should be able to run the tests in the production environment, in the QA environment, and on your laptop while riding home on the train without a network. If your tests aren’t repeatable in any environment, then you’ll always have an excuse for why they fail. You’ll also find yourself unable to run the tests when the environment isn’t available.
//“Self-Validating The tests should have a boolean output. Either they pass or fail. You should not have to read through a log file to tell whether the tests pass. You should not have to manually compare two different text files to see whether the tests pass. If the tests aren’t self-validating, then failure can become subjective and running the tests can require a long manual evaluation.”



// “Timely The tests need to be written in a timely fashion. Unit tests should be written just before the production code that makes them pass. If you write tests after the production code, then you may find the production code to be hard to test. You may decide that some production code is too hard to test. You may not design the production code to be testable.”


