//给定一个 N 叉树，返回其节点值的前序遍历

public class Node {
    public var val:Int
    public var children:[Node]
    public init(_ val:Int) {
        self.val = val
        self.children = []
    }
}
//方法1:迭代
class Solution {
    func preorder(_ root: Node?) -> [Int] {
    	guard root != nil else {
            return []
        }
    
        var res:[Int] = []
        var stack:[Node] = []
        stack.append(root!)
        while stack.count != 0 {
            let node = stack.popLast()
            res.append(node!.val)
            for i in (0..<(node!.children.count)).reversed() {
                stack.append(node!.children[i])
            }
        }
        return res
    }
}

//方法2:递归
class Solution {
    func preorder(_ root: Node?) -> [Int] {
    	guard root != nil else {
            return []
        }
    
        var res:[Int] = []
        recursion(root!, &res)
        
        return res
    }

    func recursion(_ node:Node, _ res: inout [Int]) {
        res.append(node.val)
        for i in 0..<node.children.count {
            recursion(node.children[i], &res)
        }
    }
}