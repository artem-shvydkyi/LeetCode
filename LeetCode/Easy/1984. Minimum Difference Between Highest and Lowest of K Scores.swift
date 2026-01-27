//
//  1984. Minimum Difference Between Highest and Lowest of K Scores.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 27.01.2026.
//

import Foundation

struct MinimumBetweenHighestLowest {
    func minimumDifference(_ nums: [Int], _ k: Int) -> Int {
        if nums.count < k {
            return 0
        }
        let sortedNums = nums.sorted()
        var index = 0
        var minDiff: Int?
        while (index < sortedNums.count - (k-1)) {
            let currentEleemnt = sortedNums[index]
            let endElement = sortedNums[index + k - 1]
            let diff = endElement - currentEleemnt
            if minDiff == nil || minDiff ?? 0 > diff {
                minDiff = diff
            }
            index += 1
        }
        return minDiff ?? 0
    }
}
