//给定两个整数 n 和 k，返回 1 ... n 中所有可能的 k 个数的组合
// 示例:

// 输入: n = 4, k = 2
// 输出:
// [
//   [2,4],
//   [3,4],
//   [2,3],
//   [1,2],
//   [1,3],
//   [1,4],
// ]

class Solution {
    var res:[[Int]] = []
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        guard n > 0 && k > 0 else {
            return []
        }
        guard k <= n else {
            return []
        }
        
        var temp:[Int] = []
        findCombination(n, k, 1, &temp)
        
        return res
    }

    func findCombination(_ n:Int, _ k:Int, _ begin:Int, _ arr:inout [Int]) {
        if arr.count == k {
            res.append(arr)
            return
        }
        
        for i in begin..<n+1 {
            arr.append(i)
            findCombination(n, k, i+1, &arr)
            arr.popLast()
        }
    }
}