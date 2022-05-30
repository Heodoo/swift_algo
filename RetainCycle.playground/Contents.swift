
class Person{
    var name : String
    var apartment : Apartment?
    init(name : String) {
        self.name = name
    }
    deinit {
        print("deinitailize \(name)")
    }
}
class Apartment{
    var number : Int
    // #1
    //var tenant : Person?
    // deinit 되지 않아 아무것도 출력되지 않고 Person 프로퍼티(tenant)가 남게됨
    // 즉 쓸모없는 데이터가 남아 메모리 누수가 발생함
    
    // #2 weak 추가 (약한 참조)
    //apt 인스턴스가 nil이 되면서 tenant도 같이 메모리 해제됨 (weak 때문에)
    // weak는 ARC에서 계속 인스턴스를 추적하면서 nil인지 체크하여 nil이 될때 weak 프로퍼티도 nil로 바꾸고 메모리까지 해제시킴
    weak var tenant : Person?
    // print
    // deinitalize Bob
    // deinitalize 123
    
    
    init(number : Int) {
        self.number = number
    }
    deinit {
        print("deinitailize \(number)")
    }
}

var bob : Person? = Person(name: "Bob")
var apt : Apartment? = Apartment(number: 123)
apt?.tenant = bob
bob?.apartment = apt

bob = nil
apt = nil
