class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        var nums:[Int] = []
        nums.append(contentsOf: nums1)
        nums.append(contentsOf: nums2)
        return self.mediumOf(self.fastSort(nums));
        
    }
    
    func mediumOf(_ array:[Int]) -> Double {
        
        if array.isEmpty {
            return 0;
        }
        
        let index = array.count/2
        let valueIndex:Double = Double(array[index])
        
        if array.count%2 == 0 {
            
            return Double((valueIndex  + Double(array[index-1]))/2)
            
        }else{
            return valueIndex;
        }
        
        
    }
    
    func fastSort(_ nums1:[Int])->[Int]{
        
        if nums1.count==0 || nums1.count == 1{
            return nums1;
        }
        if nums1.count == 2 {
            if nums1[0] > nums1[1]{
                
                var newnums = nums1;
                newnums[0] = nums1[1]
                newnums[1] = nums1[0]
                
                return newnums;
            }
            return nums1;
        }
        
        let index = (nums1.count-1)/2
        let baseNum = nums1[index]
        var lessNum:[Int] = [];
        var biggerNum:[Int] = [];
        for (i, value) in nums1.enumerated() {
            if i==index {
                continue;
            }
            if value < baseNum{
                lessNum .append(value)
            }else{
                biggerNum.append(value)
            }
        }
        
        lessNum = fastSort(lessNum)
        biggerNum = fastSort(biggerNum)
        
        lessNum.append(baseNum)
        lessNum.append(contentsOf:biggerNum)
        return lessNum
    }
    
}


let div:Double = 5/2

let solution = Solution()
solution.findMedianSortedArrays([1,3], [2,4])

