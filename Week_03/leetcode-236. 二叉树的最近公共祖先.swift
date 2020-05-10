//给定一个二叉树, 找到该树中两个指定节点的最近公共祖先。
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

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil || root?.val == p?.val || root?.val == q?.val {
        return root
    }
        let left = lowestCommonAncestor(root?.left, p, q)
        let right = lowestCommonAncestor(root?.right, p, q)
        if left != nil && right != nil {
            return root
        }
        if left != nil {
            return left
        }
        if right != nil {
            return right
        }

        return nil
    }
}