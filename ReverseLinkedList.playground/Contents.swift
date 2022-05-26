var mylist = [1,2,3]

class Node{
    var value : Int
    var next : Node?
    
    init(value : Int, next : Node?) {
        self.value = value
        self.next = next
    }
}

func printList(head:Node?){
    if let node = head{
        print(node.value)
        printList(head: node.next)
    }
}

func reverseList(head:Node?)->Node?{
    var prev : Node?
    var next : Node?
    var cur : Node? = head
    
    //이 부분이 이해안되서 계속 풀어보다 정답봄
    //다음노드를 미리 저장해놓고, 현재노드에 넥스트를 이전노드로 바꿔놓음
    //그 다음 현재노드를 저장해둔 다음 노드로 바꾸고 현재노드가 tail일때 까지 반복
    while cur != nil {
        next = cur?.next
        cur?.next = prev
        prev = cur
        cur = next
    }
    return prev
}

var threeNode = Node(value: 3, next: nil)
var twoNode = Node(value: 2, next: threeNode)
var oneNode = Node(value: 1, next: twoNode)
printList(head: oneNode)
var myReverseList = reverseList(head: oneNode)
printList(head: myReverseList)
