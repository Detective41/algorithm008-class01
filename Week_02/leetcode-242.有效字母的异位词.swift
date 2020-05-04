//给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的字母异位词
//异位词是指2个字符串中对应字母出现次数是一样的，但是位置顺序可以不同

//第一种解法，使用hash表
func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
    
        var dict:[Character:Int] = [:]
        for c in s {
            if dict[c] != nil {
                let count = dict[c]
                dict[c] = count!+1
            }else {
                dict[c] = 1
            }
        }
        for c in t {
            if dict[c] == nil {
                return false
            }else {
                let count = dict[c]
                if count == 0 {
                    return false
                }
                dict[c] = count!-1
            }
        }
    return true
}

//第二种解法，使用一个长度为26的数组
func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        //因为题目说明字符串只包含小写字母，所以可以用一个数组储存字母来提高搜索效率
        var arr:[Int] = Array(repeating: 0, count: 26)//下标对应字母的排序顺序
        let aASCII = Int("a".unicodeScalars.first!.value)
        for c in s.unicodeScalars {
            arr[Int(c.value)-aASCII] += 1
        }
        for c in t.unicodeScalars {
            if arr[Int(c.value)-aASCII] == 0 {
                return false
            }else {
                arr[Int(c.value)-aASCII] -= 1
            }
        }
        
    return true
}