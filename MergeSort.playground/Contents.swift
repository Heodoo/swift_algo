import UIKit

var numbers = [2,1,5,3,4]
let n = numbers.count
func merge(start:Int,end:Int){
    var mid = (start+end)/2
    mergeSort(start: start, end: mid)
    mergeSort(start: mid+1, end: end)
    merge(start: start, end: end)
}
func mergeSort(start:Int,end:Int) {
    var mid = (start+end)/2
    
}


print(numbers)
