// dfs(+stack)를 이용한 각 점에 갈 수 있는 경우의 수 구하기
var mat = [[0,0,0,0,0],[0,0,1,0,0,1],[0,0,0,1,0,0],[0,0,0,0,1,1],[0,0,0,0,0,1],[0,0,0,0,0,0]]

var cnt = [0,0,0,0,0,0]
struct Stack {
    var data : [Int]
    
    func top()->Int{
        return data.first ?? -1
    }
    mutating func push(value : Int){
        data.append(value)
    }
    mutating func pop()->Int{
        let top = data.first ?? -1
        data.remove(at: 0)
        return top
    }
    func isEmpty()->Bool{
        return data.isEmpty
    }
    
}
var start = 1
var st = Stack(data: [start])

func depthFirstSearch(graph : [[Int]]){
    while !st.isEmpty() {
        let v = st.pop()
        for i in 1...5 {
            if graph[v][i] == 1{
                st.push(value: i)
                cnt[i] += 1
            }
        }
    }
}

depthFirstSearch(graph: mat)
print(cnt)
