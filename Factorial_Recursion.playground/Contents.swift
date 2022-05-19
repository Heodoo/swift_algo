import UIKit

func FactorialOfVlaue (_ value:Int ) -> Int{
    var result = 1
    for i in 1...value{
        result = result * i
    }
    return result
}

func RecursiveFactorialOfVlaue (_ value:Int ) -> Int{
    if value == 1 || value == 0 {
        return 1
    }else {
        return value*RecursiveFactorialOfVlaue(value-1)
    }
}
for i in 1...5 {
    print(FactorialOfVlaue(i))
    print(RecursiveFactorialOfVlaue(i))
}

