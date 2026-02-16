//
//  190. Reverse Bits.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 16.02.2026.
//

import Foundation

struct ReverseBits {

    func reverseBits(_ n: Int) -> Int {
        var result: Int = 0
        var number = n
        var index: Int = 31
        while index >= 0 {
            let currentValue = pow2(index)
            if number >= currentValue {
                number -= currentValue
                result += pow2(31 - index)
            }
            index -= 1
        }
        return result
    }
    
    func pow2(_ index: Int) -> Int {
        var _index = 0
        var result = 1
        while _index < index {
            result *= 2
            _index += 1
        }
        return result
    }
}
