import UIKit

let sentence = "madam anna kayak notpalindrome anna Civic racecar"

func palindromeCounts( _ sentence: String) -> [String:Int]{
    let words = sentence.components(separatedBy: " ")
    var counts = [String:Int]()
    for word in words{
        if isPalindrome(word: word){
            print("\(word) is palindrome!")
            let count = counts[word] ?? 0
            counts[word] = count + 1
        }
    }
    return counts
}
func isPalindrome(word :String)->Bool{
    // 다른 언어와 달리 스위프트는 스트링을 배열처럼 인덱싱 할 수 없음
    // 고로, 스트링을 Array로 바꿈
    let characters = Array(word.lowercased())
    for i in 0..<characters.count/2{
        if characters[i] != characters[characters.count - i - 1]{
            return false
        }
    }
    
    return true
}

print(palindromeCounts(sentence))
