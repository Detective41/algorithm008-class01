//给定一个字符串数组，将字母异位词组合在一起。字母异位词指字母相同，但排列不同的字符串。
// 输入: ["eat", "tea", "tan", "ate", "nat", "bat"]
// 输出:
// [["ate","eat","tea"],["nat","tan"],["bat"]]

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        guard strs.count > 0 else {
            return []
        }
    
        var res:[[String]] = []
        var dict:[[Character]:[String]] = [:]
        for s in strs {
            let key = s.sorted()
            if dict[key] != nil {
                var value = dict[key]
                value!.append(s)
                dict[key] = value
            }else {
                dict[key] = [s]
            }
        }
        for value in dict.values {
            res.append(value)
        }
        return res
    }
}