//
//  ValidationTests.swift
//  ValidationTests
//
//  Created by y_hakutaku on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import XCTest
@testable import Validation

class ValidationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let format = FormatDataForString(value:"bob",restriction:Restriction.String(key: "name", mandatory: false, regex: nil, min: 0, max: 10))
        var obj = JSONObject();
        obj.addFormatData(key: "name", formatData: format)
        let builder = JSONBuilder(jsonObject: obj)
        builder.jsonString()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
