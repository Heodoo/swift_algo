//bfs로 각 점의 최소거리 찾기
var mat = [[0,0,0,0,0],[0,0,1,0,0,1],[0,0,0,1,0,0],[0,0,0,0,1,1],[0,0,0,0,0,1],[0,0,0,0,0,0]]

//처음의 거리를 무한(10)으로 둠
var distance = [0,10,10,10,10,10]

//queue 직접 구현
struct queue <item>{
    var items : [item] = []
    mutating func push(item : item){
        items.append(item)
    }
    mutating func pop()->item?{
        if let first = items.first{
            items.remove(at: 0)
            return first
        }else{
            return nil
        }
    }
    func top()->item?{
        return self.items.first ?? nil
    }
    func isEmpty()->Bool {
        if items.isEmpty {
            return true
        }else{
            return false
        }
        
    }
}

//bfs
func bfs(_ start : inout Int)->Bool {
    var q = queue<Int>()
    q.push(item: start)
    distance[start] = 0
    while !q.isEmpty() {
        start = q.pop()!
        for x in 1...5{
            if mat[start][x] == 1 {
                q.push(item: x)
                if (distance[x]) > distance[start]{
                    distance[x] = distance[start] + 1
                }
            }
        }
    }
    return true
}

var start = 1
bfs(&start)
print(distance)
