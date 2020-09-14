//
//  String+Decoding.swift
//  DecodingTrubleSooting
//
//  Created by Hyun BnS on 2020. 9. 14..
//  Copyright © 2020년 stud214. All rights reserved.
//

import Foundation

extension String {
    
    /// base 64 디코딩
    var base64Decoded: String? {
        
        // base64 로 디코딩 되기 위해서는 4의 배수로 자릿수를 가져야함.
        // 부족한 자리는 뒤에 = 를 붙임
        var encodedString = self
        let remainder = encodedString.count % 4
        if remainder > 0 {
            encodedString = encodedString.padding(toLength: encodedString.count + 4 - remainder, withPad: "=", startingAt: 0)
        }
        
        guard let data = Data(base64Encoded: encodedString, options: .ignoreUnknownCharacters) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    
}
