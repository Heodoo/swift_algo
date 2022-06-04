import UIKit

var numbers = [2,1,5,3,4,6,7,8]
var tmp = [0,0,0,0,0,0,0,0]
let n = numbers.count
func mergeSort(start:Int,end:Int){
    if end == start+1{
        return
    }
    let mid = (start+end)/2
    mergeSort(start: start, end: mid)
    mergeSort(start: mid, end: end)
    merge(start: start, end: end)
}
func merge(start: Int,end:Int) {
    
    let mid = (start+end)/2
    var left = start
    var right = mid
    
    for i in start..<end {
        if right == end {
            tmp[i] = numbers[left]
            left += 1
        }else if left == mid{
            tmp[i] = numbers[right]
            right += 1
        }else if numbers[left] <= numbers[right] {
            tmp[i] = numbers[left]
            left += 1
        }else {
            tmp[i] = numbers[right]
            right += 1
        }
    }
    for i in start..<end {
        numbers[i] = tmp[i]
    }
    
}

mergeSort(start: 0, end: n)
print(numbers)
