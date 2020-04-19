//给定一个按非递减顺序排序的整数数组 A，返回每个数字的平方组成的新数组，要求也按非递减顺序排序。

class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
    var arr = Array(repeating: 0, count: A.count)
    var i = 0, j = A.count - 1, k = A.count - 1
    while k >= 0 {
        if A[i] * A[i] >= A[j] * A[j] {
            arr[k] = A[i] * A[i]
            i += 1
        }else {
            arr[k] = A[j] * A[j]
            j -= 1
        }
        k -= 1
    }
    return arr
}
}