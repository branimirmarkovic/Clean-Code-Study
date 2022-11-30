//
//  Boundaries.swift
//  Build
//
//  Created by Branimir Markovic on 30.11.22..
//

import Foundation

// MARK: - Clear Boundaries

// “Code at the boundaries needs clear separation and tests that define expectations. We should avoid letting too much of our code know about the third-party particulars. It’s better to depend on something you control than on something you don’t control, lest it end up controlling you.
// We manage third-party boundaries by having very few places in the code that refer to them. We may wrap them as we did with Map, or we may use an ADAPTER to convert from our perfect interface to the provided interface.”
// MARK: - Learning Tests

// “we could write some tests to explore our understanding of the third-party code.Such tests are called learning tests.”

// In times when third party api gets update, we can run our learning tests to check if expect behaviour by us is changed.

