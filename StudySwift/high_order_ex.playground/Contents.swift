var x = [1,5,10,15]
let sum: Int = x.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) + \(second)") //어떻게 동작하는지 확인해보세요
    return first + second
})

print(sum)  // 25

// 초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다.
var subtract: Int = x.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) - \(second)") //어떻게 동작하는지 확인해보세요
    return first - second
})

print(subtract) // -25

// 초깃값이 3이고 someNumbers 내부의 모든 값을 더합니다.
let sumFromThree = x.reduce(3) { $0 + $1 }

print(sumFromThree) // 28
