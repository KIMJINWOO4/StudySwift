import UIKit

struct a{
    var a2:Int = 100 //가변 프로퍼티
    let b:Int = 100 //불변 프로퍼티
    static var c:Int = 100 // 타입 프로퍼티(클래스 변수)
    func Method(_ a:Int=0){
        print("instance method")
    }
    static func typeMethod(){
        print("TypeMethod")
    }
}
var cc:a = a()
cc.a2 = 2
print(cc.a2)
//cc.b = 2
let ccc:a = a()

