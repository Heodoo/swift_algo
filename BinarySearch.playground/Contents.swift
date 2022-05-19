// binary search
import UIKit

let numbers = [1,2,4,6,7,9,11,13,16,17,20,25,27,29,39]

func SearchValue(searchValue: Int, array: [Int])-> Bool {
    for num in array {
        if num == searchValue {
            print("search value: \(num)")
            return true
        }
    }
    print("dont find value!!")
    return false
}

func BinarySearch(searchValue:Int,array:[Int])->Bool {
    var start = 0
    var end = array.count - 1
    var mid = 0
    while start <= end {
        mid = (end+start)/2
        print(mid)
        if array[mid] == searchValue {
            print("search value : \(searchValue)")
            return true
        }
        else if array[mid] < searchValue {
            start = mid + 1
        }else {
            end = mid - 1
        }
        
    }
    print("dont search!!")
    return false
    
    
}


//linearSearchForValue(searchValue: 25, array: numbers)
BinarySearch(searchValue: 4, array: numbers)
