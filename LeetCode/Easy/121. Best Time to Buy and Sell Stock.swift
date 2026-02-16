//
//  121. Best Time to Buy and Sell Stock.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 16.02.2026.
//

import Foundation

struct BestTimeBuySellStock {
    
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var ans = 0
        
        for price in prices {
            let minValue = min(minPrice, price)
            minPrice = minValue
            let maxValue = max(ans, price - minPrice)
            ans = maxValue
        }

        return ans
    }

    func maxIndex(in array: [Int], startIndex: Int, endIndex: Int) -> Int {
        var resultIndex = startIndex
        var prev = array[startIndex]
        var index = startIndex + 1
        while index <= endIndex {
            let currentValue = array[index]
            if prev < currentValue {
                prev = currentValue
                resultIndex = index
            }
            index += 1
        }
        return resultIndex
    }

    func minIndex(in array: [Int], startIndex: Int, endIndex: Int) -> Int {
        var resultIndex = startIndex
        var prev = array[startIndex]
        var index = startIndex + 1
        while index <= endIndex {
            let currentValue = array[index]
            if prev > currentValue {
                prev = currentValue
                resultIndex = index
            }
            index += 1
        }
        return resultIndex
    }
}
