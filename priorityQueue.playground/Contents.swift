class maxHeap{
    //1부터 인덱싱하기 위해 0번 인덱스를 미리 만들어놓음
    var items = [0]
    
    func push(_ item:Int){
        items.append(item)
        var cur = items.count - 1
        while cur > 1 {
            if items[cur] > items[cur/2]{
                items.swapAt(cur, cur/2)
            }else{
                break
            }
            cur = cur/2
        }
    }
    
    func top()->Int{
        return items[1]
    }
    
    //pop은 다시 한번 봐야할듯
    func pop()->Int{
        let top = items[1]
        var idx = 1
        var n = items.count-1
        items[1] = items[n]
        items.remove(at: n)
        n-=1
        while 2*idx <= n {
            let leftChild = 2*idx
            let rightChild = 2*idx + 1
            var maxChild = leftChild
            //rightChild가 n보다 크면 rightChild는 빈값이므로 꼭 확인 해야함
            if rightChild <= n && items[rightChild] > items[leftChild] {
                    maxChild = rightChild
            }
            if items[idx] > items[maxChild]{
                break
            }
            items.swapAt(idx, maxChild)
            idx = maxChild
        }
        return top
    }
   
}

var numbers = [-1,-5,-3,11,10,20,13,50,3,1,5,2,4,6,8,7,9]
var hp = maxHeap()
for x in numbers {
    hp.push(x)
}
print(hp.items)
print(hp.pop())
print(hp.items)

