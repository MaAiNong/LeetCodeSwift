import UIKit

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

let finish = fastSort([1,3,2])
//let finish = fastSort([1,2,74,32,4,56,12,34,11,23,783773,4343,45])
//let finish = fastSort([10,9,8,7,6,5,4,3,2,1])
//let finish = fastSort([1,2,3,4,5,6,7,8,9,10])
