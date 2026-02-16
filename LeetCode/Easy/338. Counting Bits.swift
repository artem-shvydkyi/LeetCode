//
//  338. Counting Bits.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 16.02.2026.
//

import Foundation

struct CountingBits {

    func countBits(_ n: Int) -> [Int] {
        var result: [Int] = []
        result.reserveCapacity(n + 1)
        for i in 0...n {
            let count = String(i, radix: 2).filter {$0 != "0" }.count
            result.append(count)
        }
        //(0...n).map(\.nonzeroBitCount)
        return result
    }
}
