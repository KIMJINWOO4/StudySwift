// 예제
enum BoostCamp {
        case iosCamp
        case androidCamp
        case webCamp
}
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 타입과 케이스를 모두 사용하여도 됩니다
var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스 처럼 표현해도 무방합니다
day = .tue

print(day) // tue

// switch의 비교값에 열거형 타입이 위치할 때
// 모든 열거형 케이스를 포함한다면
// default를 작성할 필요가 없습니다
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
    
    // mango와 apple의 원시값이 같으므로
    // mango 케이스의 원시값을 0으로 정의할 수 없습니다
//    case mango = 0
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
