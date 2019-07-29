
//
//  Solution.swift
//  Test
//
//  Created by kevin on 2019/7/28.
//  Copyright © 2019 徐诺. All rights reserved.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        if s.isEmpty {
            
            return 0
        }
        if self.isValid(s) {
            return s.count
        }
        var length = s.count-1
        while length>1 {
            for start in 0...s.count-length {
                let begin = s.index(s.startIndex, offsetBy: start)
                let end = s.index(begin, offsetBy: length)
                let subStr = String(s[begin..<end])
                
//                print(subStr,length)
                
                if self.isValid(subStr) {
                    return subStr.count
                }
            }
            length -= 1
        }
        return 1
    }
    
    func isValid(_ s:String) -> Bool{
        
        for (index,character) in s.enumerated() {
            
            let begin = s.index(s.startIndex, offsetBy: index+1)
            let end = s.index(begin, offsetBy: s.count-index-1)
            let subStr = String(s[begin..<end])
            if subStr.contains(character) {
                return false;
            }
        }
        
        return true;
        
    }
    
}
