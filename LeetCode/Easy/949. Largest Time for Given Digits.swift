//
//  949. Largest Time for Given Digits.swift
//  LeetCode
//
//  Created by Artem Shvydkyi on 29.01.2026.
//

import Foundation

struct LargestTimeGivenDigits {
    //
    func largestTimeFromDigits(_ arr: [Int]) -> String {
        
        var indexI = 0
        
        var result: [Int] = []
        
        while indexI < arr.count {
            let valueI = arr[indexI]
            if valueI < 3 {
                
                let minsI = valueI * 10 * 60 // Mins
                var indexJ = 0
                while indexJ < arr.count {
                    
                    if indexI == indexJ {
                        indexJ += 1
                        continue
                    }
                    
                    let valueJ = arr[indexJ]
                    if valueI * 10 + valueJ < 24 {
                        
                        let minsJ = valueJ * 60 // Mins
                        
                        var indexK = 0
                        while indexK < arr.count {
                            
                            if indexK == indexI || indexK == indexJ {
                                indexK += 1
                                continue
                            }
                            
                            let valueK = arr[indexK]
                            
                            if valueK < 6 {
                                
                                let minsK = valueK * 10
                                var indexM = 0

                                while indexM < arr.count {
                                    if indexM == indexI || indexM == indexJ || indexM == indexK {
                                        indexM += 1
                                        continue
                                    }
                                    
                                    let minsM = arr[indexM]
                                    
                                    let _result = minsI + minsJ + minsK + minsM
                                    result.append(_result)
                                    indexM += 1
                                }
                            }
                            indexK += 1
                            
                        }
                    }
                        indexJ += 1
                    
                    
                }
            }
                indexI += 1
            
        }
        
        
        guard !result.isEmpty else {
            return ""
        }
        let max = result.max() ?? 0
        
        let hours = max / 60
        let mins = max % 60
        
        let hoursString = hours < 10 ? "0\(hours)" : "\(hours)"
        let minsString = mins < 10 ? "0\(mins)" : "\(mins)"
        return "\(hoursString):\(minsString)"
        
    }
}
