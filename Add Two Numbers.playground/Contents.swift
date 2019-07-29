import UIKit


//  Definition for singly-linked list.
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var newestResult = ListNode(0)
        let result = newestResult
        
        var node1 = l1
        var node2 = l2
        var nextAdd = 0;
//        while node1 != nil || node2 != nil || nextAdd!=0 {
        while node1 != nil || node2 != nil {
            let newNode = ListNode(0);
            var result = nextAdd;
            if node1 != nil{
                result += node1!.val;
            }
            if node2 != nil {
                result += +node2!.val;
            }
            
            if result-10 >= 0 {
                newNode.val = result-10;
                nextAdd = 1;
            }else{
                newNode.val = result;
                nextAdd = 0;
            }
            
            //设置新的节点
            newestResult.next = newNode;
            newestResult = newNode;
            
            //next
            node1=node1?.next
            node2=node2?.next
        }
        
        //如果最后一位有溢出还需要新建一个
        //这段其实可以去掉，但是一旦去掉，换成另一种while写法，立刻运行速度变慢10ms
        if(nextAdd>0){
            newestResult.next=ListNode(nextAdd)
            nextAdd = 0;
        }
        
        return result.next;
        
    }
    
}

