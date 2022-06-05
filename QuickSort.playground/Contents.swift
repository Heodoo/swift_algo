var numbers = [6,4,2,3,7,8,1,5]
var pivot = 0
func quickSort(_ start:Int,_ end: Int){
    if end <= (start+1) {
        return
    }
    var l = start + 1
    var r = end - 1
    var pivot = numbers[start]
    while true {
        while l <= r && numbers[l] <= pivot {
            l+=1
        }
        while l <= r && numbers[r] > pivot {
            r-=1
        }
        if l > r {
            break
        }
        numbers.swapAt(l, r)
        print("l : \(l), r : \(r)")
    }
    numbers.swapAt(start, r)
    quickSort(start, r)
    quickSort(r+1, end)
}
quickSort(0,8)
print(numbers)
/*
 퀵소트는 합병정렬과 다르게 추가적인 공간 필요없이(In-Place Sort) 해당 배열이나 리스트를 가지고 정렬
 퀵소트는 우선 피봇을 제자리에 넣는것이 핵심, 피봇보다 작은건 피봇보다 앞으로
 피봇보다 큰값들은 피봇 뒤로 보내 피봇이 자기 자리를 찾게함
 l과 r 이라는 양쪽 끝 포인터를 만들어 적절하게 스왑
 l이 r보다 커지는 순간이 피봇이 제자리를 찾은 순간임 따라서 그 떄 r과 피봇을 스왑해주면
 피봇이 제자리에 들어가게 됨
 
 거의 모든 정렬 알고리즘 보다 빨라서 라이브러리들이 보통 퀵소트를 사용
 하지만 정렬되어있는 배열을 정렬할때는(최악의 경우) O(n^2)의 시간복잡도를 갖음
 합병 정렬은 퀵소트 보다 느릴수 있지만 O(nlogn)에 다 돌아가서 직접 정렬 알고리즘을 짜야할떄는 퀵소트를 피하는게 좋음(코딩테스트에서)
 */
