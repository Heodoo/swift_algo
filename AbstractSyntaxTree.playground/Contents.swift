/*
      +
    /   \
   *     5
  /  \
 25  6
 
 */
class Node {
    var operation : String?
    var value : Float?
    var leftChild : Node?
    var rightChild : Node?
    
    init(operation : String?, value : Float?,leftChild : Node?, rightChild : Node?) {
        self.operation = operation
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}
// 첫시도
//func evaluate(node: Node)->Float {
//    var left : Float = 0
//    var right : Float = 0
//    if let child = node.leftChild {
//        left += evaluate(node: child)
//    }
//    if let child = node.rightChild{
//        right += evaluate(node: child)
//    }
//    if let oper = node.operation {
//        if oper == "+"{
//          return left + right
//        }else if oper == "*"{
//            return left * right
//        }else if oper == "/"{
//            return left / right
//        }else if oper == "-"{
//            return left - right
//        }
//    }
//    return left + right + node.value!
//}

// 2차시도
func evaluate(node: Node)->Float {
    if let value = node.value {
        return value
    }
    if let oper = node.operation {
        if oper == "+"{
            return evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!)
        }else if oper == "*"{
            return evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!)
        }else if oper == "/"{
            return evaluate(node: node.leftChild!) / evaluate(node: node.rightChild!)
        }else if oper == "-"{
            //if node.rightChild is 0, error!
            return evaluate(node: node.leftChild!) - evaluate(node: node.rightChild!)
        }
    }
    return 0
}


var node25 = Node(operation : nil,value: 25, leftChild: nil, rightChild: nil)
var node6 = Node(operation : nil,value: 6, leftChild: nil, rightChild: nil)
var node5 = Node(operation : nil,value: 5, leftChild: nil, rightChild: nil)
var nodeMul = Node(operation: "*", value: nil, leftChild: node25, rightChild: node6)
var root = Node(operation: "+",value : nil,leftChild: nodeMul, rightChild: node5)
print(evaluate(node: nodeMul))
print(evaluate(node: root))
