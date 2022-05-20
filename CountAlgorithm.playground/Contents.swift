import UIKit

var str = "Hello, playground"

func mostCommonInArray(_ array: [String])->String{
    
    var nameCountDictionary = [String : Int]()
    
    for name in array {
        if let count = nameCountDictionary[name]{
            nameCountDictionary[name] = count + 1
        }else {
            nameCountDictionary[name] = 1
        }
    }
    
    var mostCommonName = ""
    
    for key in nameCountDictionary.keys{
        if mostCommonName == ""{
            mostCommonName = key
        }else {
            if nameCountDictionary[mostCommonName]! < nameCountDictionary[key]! {
                    mostCommonName = key
            }
        }
    }
    
    return mostCommonName
}

print(mostCommonInArray(["bob","selly","bob","sam","michael"]))
