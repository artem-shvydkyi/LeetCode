//
//  3010. Divide an Array Into Subarrays With Minimum Cost I.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 03.02.2026.
//

import Foundation

struct DivideArrayIntoSubarraysMinimumCost {
    
    func minimumCost(_ nums: [Int]) -> Int {
        
        var _nums = nums
        let firstCost = _nums.removeFirst()
        
        guard let secondMin = _nums.min(),
              let secondMinIndex = _nums.firstIndex(of: secondMin) else {
            return 0
        }
        _nums.remove(at: secondMinIndex)
        guard let thirdMin = _nums.min() else {
            return 0
        }
        let result = firstCost + secondMin + thirdMin
        return result
        
    }
}
