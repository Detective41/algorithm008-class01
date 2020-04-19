// 给定一个由整数组成的非空数组所表示的非负整数，在该数的基础上加一。
// 最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。
// 你可以假设除了整数 0 之外，这个整数不会以零开头。

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.count == 0 {
        return []
    }
    var newArr = digits
    for i in stride(from: digits.count-1, through: 0, by: -1) {
        newArr[i] += 1
        if newArr[i] % 10 != 0 {
            return newArr
        }
        newArr[i] = 0
    }
    newArr = Array(repeating: 0, count: digits.count + 1)
    newArr[0] = 1
    return newArr
    }
}