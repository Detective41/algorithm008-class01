//在一个「平衡字符串」中，'L' 和 'R' 字符的数量是相同的。
//给出一个平衡字符串 s，请你将它分割成尽可能多的平衡字符串。
//返回可以通过分割得到的平衡字符串的最大数量。
// 示例 1：
// 输入：s = "RLRRLLRLRL"
// 输出：4
// 解释：s 可以分割为 "RL", "RRLL", "RL", "RL", 每个子字符串中都包含相同数量的 'L' 和 'R'。

class Solution {
   func balancedStringSplit(_ s: String) -> Int {
    var count = 0
    var stackArr = [Character]()
    for character in s {
        if stackArr.isEmpty {
            stackArr.append(character)
        }else if (stackArr.contains(character)) {
            stackArr.append(character)
        }else {
            stackArr.popLast()
        }
        if stackArr.isEmpty {
            count += 1
        }
    }
    return count
}
}