//
//  1200. Minimum Absolute Difference.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 27.01.2026.
//

import Foundation

struct MinimumAbsoluteDifference {

    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        let array = arr.sorted()
        var result = [[Int]]()
        var lastMin: Int = Int.max
        var index = 0
        while (index < (array.count - 1)) {
            let currentElement = array[index]
            let nextElement = array[index + 1]
            
            if (nextElement - currentElement) < lastMin {
                lastMin = nextElement - currentElement
                result.removeAll()
                result.append([currentElement, nextElement])
            } else if (nextElement - currentElement) == lastMin {
                result.append([currentElement, nextElement])
            }
            index += 1
        }
        return result
    }
}
