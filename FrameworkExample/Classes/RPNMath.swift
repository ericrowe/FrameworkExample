//
//  RPNMath.swift
//  Frameworks
//
//  Created by Eric Rowe (GMC-GSS-IT-CONTRACTOR) on 4/26/17.
//  Copyright © 2017 Gecko LLC. All rights reserved.
//

import UIKit

public class RPNMath: NSObject {
    // Singleton instance
    public static let shared = RPNMath()

    // Private initializer (enforces the singleton)
    private override init() {
        super.init()
    }

    // This variable is read only outside the framework, but read/write inside the framework
    public internal(set) var stack = [Double]()
    
    // MARK: - Public Maths Funcs
    public func push(value:Double) {
        stack.insert(value, at: 0)
    }
    public func add() {
        if stack.count > 1 {
            stack.insert(stack.removeFirst() + stack.removeFirst(), at: 0)
        }
    }
    public func subtract() {
        if stack.count > 1 {
            stack.insert(stack.removeFirst() - stack.removeFirst(), at: 0)
        }
    }
    public func multiply() {
        if stack.count > 1 {
            stack.insert(stack.removeFirst() * stack.removeFirst(), at: 0)
        }
    }
    public func divide() {
        if stack.count > 1 {
            stack.insert(1 / stack.removeFirst() * stack.removeFirst(), at: 0)
        }
    }
    public func swap() {
        if stack.count > 1 {
            stack.insert(stack.removeFirst(), at: 1)
        }
    }
}
