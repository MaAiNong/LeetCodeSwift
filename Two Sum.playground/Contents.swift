
import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        var map:[Int:Int] = [:];
        for (index,currentvalue) in nums.enumerated() {
            if let mapVaule = map[target - currentvalue]{
                return [index,mapVaule];
            }else{
                map[currentvalue] = index;
            }
        }
        
        return [];
    }
}
