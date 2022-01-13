import UIKit
import Foundation

//기본 클로저
let sum: (Int, Int) -> Int = { (a:Int, b:Int) in
    return a+b
}
let sumresult: Int = sum(1,2)
print(sumresult)
//함수 전달인자
let add: (Int,Int) -> Int
add = { (a:Int,b:Int) in
    return a+b
}
let substract: (Int,Int) -> Int
substract = { (a:Int,b:Int) in
    return a-b
}
let divide: (Int,Int) -> Int
divide = { (a:Int,b:Int) in
    return a/b
}
func calculate(a:Int,b:Int,method:(Int,Int)->Int)->Int{
    return method(a,b)
}
var calculated: Int
calculated = calculate(a: 50, b: 20, method: add)
print(calculated)
