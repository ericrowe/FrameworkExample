import UIKit
import XCTest
@testable import FrameworkExample

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        // Stack is read/write from XCTest since it's marked internal, so we can clear it manually for a sterile test
        RPNMath.shared.stack.removeAll()
        
        RPNMath.shared.push(value: 1)
        RPNMath.shared.push(value: 1)
        RPNMath.shared.add()
        if let answer = RPNMath.shared.stack.first {
            XCTAssertEqual(answer, 2.0)
        } else {
            XCTFail("Stack is Empty")
        }
    }
    func testDivide() {
        // Stack is read/write from XCTest since it's marked internal, so we can clear it manually for a sterile test
        RPNMath.shared.stack.removeAll()
        
        RPNMath.shared.push(value: 10)
        RPNMath.shared.push(value: 2)
        RPNMath.shared.divide()
        if let answer = RPNMath.shared.stack.first {
            XCTAssertEqual(answer, 5.0)
        } else {
            XCTFail("Stack is Empty")
        }
    }

    
}
