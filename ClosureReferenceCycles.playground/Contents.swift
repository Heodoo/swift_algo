
class HTMLElement {
    let name : String
    let text: String
    
    //self를 클로저안에서 사용하면 retain count를 증가시키게 됨
    //하지만 낮출 방법은 없기에 [weak self] 로 약한 참조를 하면
    // 클로저가 해제될때 weak를 통해 self도 같이 해제되어
    // retain count를 낮출 수 있다 -> 메모리릭 없음
    lazy var asHTML: () -> String = { [weak self] in
        //self를 옵셔널로 받아 guard let으로 옵셔널 바인딩
        guard let this = self else { return " "}
        return "<\(this.name)>\(this.text)<\(this.name)>"
    }
    
    init(name: String, text : String) {
        self.name = name
        self.text = text
    }
    deinit {
        print("HTMLElement \(name) is being deallocated")
    }
}

var paragraph : HTMLElement? = HTMLElement(name: "p", text: "Some sample paragraph body text")

paragraph?.asHTML()

paragraph = nil
