//
//  ErrorHandling.swift
//  Build
//
//  Created by Branimir Markovic on 30.11.22..
//

import Foundation

enum ErrorExample: Error {
    case unknown
    case known
    case someError
}


// MARK: - “Use Exceptions Rather Than Return Codes”


// Example for return code

func something() -> ErrorExample? {
    return nil
}

func handler() {
    let returnType = something()
    if returnType == .unknown {
        // log this case
    } else if returnType == .known {
        // log this case
    } else if returnType == .someError {
        // log this
    } else {
        // react to sucess
    }
}

// Example for Exception

func something1() throws  {
    throw ErrorExample.someError
}

func handler1() {
    do {
        try something1()
        // success case
    } catch {
        // log error
    }
}



// MARK: - “wrapping third-party APIs Errors”

// “When you wrap a third-party API, you minimize your dependencies upon it: You can choose to move to a different library in the future without much penalty. Wrapping also makes it easier to mock out third-party calls when you are testing your own code.”

enum ThridParAPiErrors: Error {
    case unknown
    case unspecified
    case code999
    case code899
    case noInternetConnectivity
    case badAccessPoint
    case nullExceptionInServerObject
}

enum OurError: Error {
    case clientError
    case serverError
    case unknown
}

extension OurError {
    // mapper
    
    func fromThirdpartApiError(_ error: ThridParAPiErrors) -> Self {
        switch error {
        case .unknown:
            return .unknown
        case .unspecified:
            return .unknown
        case .code999:
            return .serverError
        case .code899:
            return .serverError
        case .noInternetConnectivity:
            return .clientError
        case .badAccessPoint:
            return .clientError
        case .nullExceptionInServerObject:
            return .serverError
        }
    }
}

// MARK: - Avoid Return null form functions

// MARK: - Avoid passing null in function parameters

