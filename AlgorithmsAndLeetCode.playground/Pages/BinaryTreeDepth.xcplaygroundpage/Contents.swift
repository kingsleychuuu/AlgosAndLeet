func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    } else {
        var leftDepth = maxDepth(root?.left)
        var rightDepth = maxDepth(root?.right)
        
        if leftDepth > rightDepth {
            return leftDepth + 1
        } else {
            return rightDepth + 1
        }
    }
}
