//给定一个二叉树，返回它的前序遍历。
 public class TreeNode {
    public var val:Int
    public var left:TreeNode?
    public var right:TreeNode?
    public init(_ val:Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
};

//方法1:递归
class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else {
            return []
        }
    
        var res:[Int] = []
        recursion(root, &res)
        
        return res
    }

    func recursion(_ node:TreeNode?, _ res:inout [Int]) {
        guard node != nil else {
            return
        }
    
        res.append(node!.val)
        recursion(node!.left, &res)
        recursion(node!.right, &res)
    }
}

//方法2.迭代
class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else {
            return []
        }
    
        var node = root
        var res:[Int] = []
        var stack:[TreeNode] = []
        while node != nil || !stack.isEmpty {
            while node != nil {
                stack.append(node!)
                res.append(node!.val)
                node = node!.left
            }
            let popNode = stack.popLast()
            node = popNode!.right
        }
        
        return res
    }
}