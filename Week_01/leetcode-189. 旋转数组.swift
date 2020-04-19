//给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。
// 示例 :
// 输入: [1,2,3,4,5,6,7] 和 k = 3
// 输出: [5,6,7,1,2,3,4]

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
    if k <= 0 {
        return
    }
    let n = k % nums.count
    nums = nums.reversed()
    reverse(&nums, 0, n-1)
    reverse(&nums, n, nums.count-1)
}

func reverse(_ nums: inout [Int], _ start:Int, _ end:Int) {
    if start >= nums.count || end >= nums.count {
        return
    }
    var i = start
    var j = end
    while i < j {
        let temp = nums[i]
        nums[i] = nums[j]
        nums[j] = temp
        i += 1
        j -= 1
    }
}
}