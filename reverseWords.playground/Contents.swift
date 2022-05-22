import UIKit

var str = "Lets start today by completing a very interesting challenge"

func reverseWords(array : String)-> String {
    var words = array.components(separatedBy: " ")
    var newSentence = ""
    for i in 0..<words.count{
        if newSentence != "" {
            newSentence+=" "
        }
        if i%2 == 0{
            newSentence += words[i].stringByRemovingVowels()
        }else {
            words[i] = String(words[i].reversed())
            newSentence += words[i].stringByRemovingVowels()
        }
    }
    return newSentence
}

print(reverseWords(array: str))

extension String {
    func stringByRemovingVowels()->String{
        var newword = self
        for vowel in ["a","e","i","o","u"]{
            newword = newword.replacingOccurrences(of: vowel , with: "")
        }
        return newword
    }
}
