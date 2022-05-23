import UIKit


class Node {
    let value : Int
    var leftChild : Node?
    var rightChild : Node?
    
    init(value : Int,leftChild : Node?,rightChild : Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    
}
func insertNode(curNode:Node,newValue: Int){
        if newValue > curNode.value {
            if let child = curNode.rightChild {
                insertNode(curNode: child, newValue: newValue)
            }else {
                curNode.rightChild = Node(value: newValue,leftChild: nil,rightChild: nil)
            }
        }else if newValue < curNode.value{
            if let child = curNode.leftChild {
                insertNode(curNode: child, newValue: newValue)
            }else {
                curNode.leftChild = Node(value: newValue,leftChild: nil,rightChild: nil)
            }
        }
        else{
            print("already exist!")
            return
        }
    }

func searchTree(curNode:Node){
        if let child = curNode.leftChild{
            searchTree(curNode: child)
        }
        print(curNode.value)
        if let child = curNode.rightChild{
            searchTree(curNode: child)
        }
    }

// 더 효율적으로 찾는 search 함수를 다시 만들어보기 (값의 크기에 따라 왼쪽으로 갈지 오른쪽으로 갈지) #0523
func search(curNode:Node?,searchValue: Int)->Bool{
    if curNode == nil {
        return false
    }
    if curNode?.value == searchValue {
        print("search \(searchValue)")
        return true
    }else{
        return search(curNode: curNode?.leftChild, searchValue: searchValue) || search(curNode: curNode?.rightChild, searchValue: searchValue)
    }
}

var rootNode = Node(value: 10, leftChild: nil, rightChild: nil)
insertNode(curNode: rootNode, newValue: 5)
insertNode(curNode: rootNode, newValue: 1)
insertNode(curNode: rootNode, newValue: 14)
insertNode(curNode: rootNode, newValue: 11)
insertNode(curNode: rootNode, newValue: 20)
searchTree(curNode: rootNode)
search(curNode: rootNode, searchValue: 20)
