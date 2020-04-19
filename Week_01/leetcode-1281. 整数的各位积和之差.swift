//给你一个整数 n，请你帮忙计算并返回该整数「各位数字之积」与「各位数字之和」的差。

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var num = n
        if num == 0 {
            return num
        }
        var sum = 0
        var product = 1
        while num != 0 {
            sum += (num % 10)
            product *= (num % 10)
            num = num / 10
        }
        return product - sum
        }
}