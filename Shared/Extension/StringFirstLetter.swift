//
//  StringFirstLetter.swift
//  multi-challenge
//
//  Created by Eduardo Oliveira on 17/05/21.
//

import SwiftUI

extension String {
    // charAt(at:) returns a character at an integer (zero-based) position.
    // example:
    // let str = "hello"
    // var second = str.charAt(at: 1)
    //  -> "e"
    func charAt(index: Int) -> Character {
        let charIndex = self.index(self.startIndex, offsetBy: index)
        return self[charIndex]
    }
}
