//
//  1. Two Sum.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 12.02.2026.
//

import Foundation

struct TwoSum {

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var firstIndex: Int = 0
        while (firstIndex < nums.count) {
            let currentValue = nums[firstIndex]
            var secondIndex = firstIndex + 1
            while (secondIndex < nums.count) {
                let secondValue = nums[secondIndex]
                if target == (currentValue + secondValue) {
                    return [firstIndex, secondIndex]
                } else {
                    secondIndex += 1
                }
            }
            firstIndex += 1
        }
        return []
    }
}
