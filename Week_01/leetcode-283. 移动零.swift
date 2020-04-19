//给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。

class Solution {
    func moveZeroes(_ array: inout [Int]) {
         var j = 0
    for i in 0..<array.count {
        if array[i] != 0 {
            array[j] = array[i]
            j += 1
        }
    }
    while j < array.count {
        array[j] = 0
        j += 1
    }
  }
}