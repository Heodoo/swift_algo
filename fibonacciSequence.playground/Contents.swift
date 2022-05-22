import UIKit

func fibForNumSteps(numSteps:Int)->[Int]{
    var sequence = [0,1]
    if numSteps <= 1 {
        return sequence
    }
    for _ in 0...numSteps-2{
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence += [first + second]
    }
    return sequence
}



func fibRecursiveNumSteps(numSteps:Int,first: Int, second : Int)->[Int]{
    if numSteps == 0 {
        return []
    }else{
    return [first + second] + fibRecursiveNumSteps(numSteps: numSteps - 1, first: second, second: first + second)
    }
}

print(fibForNumSteps(numSteps: 5))
print([0,1] + fibRecursiveNumSteps(numSteps: 4, first: 0, second: 1))
