// 给定一种规律 pattern 和一个字符串 str ，判断 str 是否遵循相同的规律。
// 这里的 遵循 指完全匹配，例如， pattern 里的每个字母和字符串 str 中的每个非空单词之间存在着双向连接的对应规律。
// 示例1:
// 输入: pattern = "abba", str = "dog cat cat dog"
// 输出: true
//pattern 只包含小写字母， str 包含了由单个空格分隔的小写字母。

//1.第一种解法，使用hash表，pattern作为key，str作为value
func wordPattern(_ pattern: String, _ str: String) -> Bool {
    guard pattern.count+str.count > 0 else {
        return true
    }
    guard pattern.count>0 && str.count>0 else {
        return false
    }

    var dict:[Character:Substring.SubSequence] = [:]
    let pArr = Array(pattern)
    let sArr = str.split(separator: " ")
    if pArr.count != sArr.count {
        return false
    }
    
    for i in 0..<pattern.count {
        if dict.keys.contains(pArr[i]){
            if dict[pArr[i]] != sArr[i] {
                return false
            }
        }else {
            if dict.values.contains(sArr[i]) {
                return false
            }
            dict[pArr[i]] = sArr[i]
        }
    }
    return true
}

//2.第二种解法，hash表，pattern和str相互映射，即先将pattern作为key，str作为value
//建立关系，再反过来将str作为key，pattern作为value建立关系
func wordPattern(_ pattern: String, _ str: String) -> Bool {
    guard pattern.count+str.count > 0 else {
        return true
    }
    guard pattern.count>0 && str.count>0 else {
        return false
    }

    var dict:[Character:Substring.SubSequence] = [:]
    let pArr = Array(pattern)
    let sArr = str.split(separator: " ")
    if pArr.count != sArr.count {
        return false
    }
    
    

    return true
}