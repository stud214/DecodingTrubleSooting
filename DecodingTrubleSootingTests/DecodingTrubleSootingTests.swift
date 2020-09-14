//
//  DecodingTrubleSootingTests.swift
//  DecodingTrubleSootingTests
//
//  Created by Hyun BnS on 2020. 9. 14..
//  Copyright © 2020년 stud214. All rights reserved.
//

import XCTest
import Foundation

@testable import DecodingTrubleSooting

class DecodingTrubleSootingTests: XCTestCase {

    var base64Encoded = "eyJhdWQiOlsiTEFCUy1zZXJ2aWNlcyJdLCJsb2dpbklkIjoiY29tbTE0MzExIiwidXNlcl9uYW1lIjoiMzk5Iiwic2NvcGUiOlsic2VydmVyIl0sImFwcGxpY2F0aW9uU2VxIjozOSwiZXhwIjoxNjAwMTMzOTA3LCJqdGkiOiI0YjNiOWUzZi0wZTg4LTQwMjctOWMzYi05MTQ2N2U3NGNlYzgiLCJjbGllbnRfaWQiOiJocmQtZnJvbnQifQ"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
//    func testBase64Encode() {
//
//        print("base64Encoded = \(base64Encoded)")
//        XCTAssertNotNil(base64Encoded)
//    }
//
    func testBase64DecodeFailed() {

        var base64Decode: String? = nil

        if let data = Data(base64Encoded: base64Encoded, options: .ignoreUnknownCharacters) {
            base64Decode = String(data: data, encoding: .utf8)
        }

        XCTAssertNotNil(base64Decode)
    }
    
    func testBase64DecodeSuccess() {
        XCTAssertNotNil(base64Encoded.base64Decoded)
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
