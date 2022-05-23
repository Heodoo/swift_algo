import UIKit

let numbers = [1,2,3,4]
//1. filter
let filtered = numbers.filter({ return $0 % 2 == 0})
print(filtered)
//2. map
let mapped = numbers.map({return $0 * 2})
print(mapped)
//3. reduce
let sum = numbers.reduce(0, {sum, number in sum + number})
print(sum)
