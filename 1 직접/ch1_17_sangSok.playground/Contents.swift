import Foundation

class Vcle { // base class > 다른 클래스에서 상속받지 않은 클래스
    var crntSpeed = 0.0
    // final var crntSpeed = 0.0 // 상속 불가능
    
    var desc: String { return "traveling at \(crntSpeed) miles per hour" }
    func makeNoise() { print("super - speaker on") }
}

/*
 class 클래스 이름: 부모 클래스 이름 {
    // 하위 클래스 정의
 }
 */
class Bicycle: Vcle { var hasBasket = false }

var bicycle: Bicycle = .init()
bicycle.crntSpeed
bicycle.crntSpeed = 15;
bicycle.crntSpeed

class Train: Vcle {
    override func makeNoise() {
        super.makeNoise(); print("choo choo")
    }
}

let train: Train = .init()
train.makeNoise()

// MARK: ------------------- property overriding -------------------
class Car: Vcle {
    var gear = 1
    override var desc: String {
        return "\(super.desc) in gear \(gear)"
    }
}

let car: Car = .init()
car.crntSpeed = 30.0
car.gear = 2
print(car.desc)

class AutomaticCar: Car {
    override var crntSpeed: Double {
        didSet { gear = Int(crntSpeed / 10) + 1 }
    }
}

let automatic: AutomaticCar = .init()
automatic.crntSpeed = 35.0
print("automaticCar: \(automatic.desc)")
