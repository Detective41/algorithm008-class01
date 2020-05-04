//给定一个 N 叉树，返回其节点值的层序遍历。(即从左到右，逐层遍历)
public class Node {
     public var val: Int
     public var children: [Node]
     public init(_ val: Int) {
         self.val = val
         self.children = []
     }
}

//方法1.递归
class Solution {
    func levelOrder(_ root: Node?) -> [[Int]] {
        guard root != nil else {
            return []
        }
    
        var res:[[Int]] = []
        recursion(root!, &res, 0)
        
        return res
    }

    func recursion(_ node:Node, _ res:inout [[Int]], _ level:Int) {
        if res.count <= level {
            res.append([])
        }
        var arr = res[level]
        arr.append(node.val)
        res[level] = arr
        
        for i in 0..<node.children.count {
            recursion(node.children[i], &res, level+1)
        }
    }
}