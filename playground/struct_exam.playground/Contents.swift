import UIKit

struct Student{
    var name: String = "Unknwon"
    var `class`:String="Swift"
    static func selfintroduce(){
        print("학생입니다.")
    }
    func selfintroduce(){
        print("저는 \(self.class)반 \(name)입니다")
    }
}
Student.selfintroduce()

var a:Student = Student()
a.name = "ME"
a.class = "스위프트"
a.selfintroduce()

let b:Student = Student()   //프로퍼티값 변경 불가

b.selfintroduce()
