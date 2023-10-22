import Foundation
/*
 프로퍼티 종류
 1. 저장
 2. 연산(계산)
 3. 타입
 */

// MARK: ------------------- 1. 저장 : 구조체 내 저장된 변수나 상수 -------------------
struct Dog {
    var name: String
    let gender: String
}

var dog: Dog = .init(name: "gunter", gender: "Male")
//print(dog)

dog.name = "gth"
// dog.gender = "fm" // Cannot assign to property: 'gender' is a 'let' constant

let dog2: Dog = .init(name: "gunter", gender: "Male")
// dog2.name = "gth" // Cannot assign to property: 'dog2' is a 'let' constant
// 구조체 = 값타입 > let 상수선언 -> 프로퍼티도 모두 상수 -> 수정 불가능

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name; self.gender = gender
    }
}

let cat: Cat = .init(name: "gunter", gender: "male")
cat.name = "gth"
//print(cat.name)

// MARK: -------------------  2. 연산(계산) -------------------
 
struct Stock {
    var averagePrice: Int       /// 평균단가
    var quantity: Int           /// 구매수량
    
    var purchagePrice: Int {    /// 구매금액
        get {
            return averagePrice * quantity
        }
        
        //set(newPrice) { averagePrice = newPrice / quantity }
        set { averagePrice = newValue / quantity }
    }
}

var stock: Stock = .init(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchagePrice
stock.purchagePrice = 3000
stock.averagePrice

// MARK: ------------------- property observer -------------------
class Account {
    var credit: Int = 0 {
        // 소괄호 이름 지정
        willSet { print("1. 잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정") }
        didSet { print("2. 잔액이 \(oldValue)원에서 \(credit)원으로 변경됨") }
    }
}

var account: Account = .init()
account.credit = 1000

// MARK: ------------------- 3. 타입 -------------------
struct SomeStructure {
    static var stdTpProperty = "Some value." // 저장
    
    static var computedTpProperty: Int { // 계산
        return 1
    }
}
SomeStructure.computedTpProperty
SomeStructure.stdTpProperty
SomeStructure.stdTpProperty = "hello"
SomeStructure.stdTpProperty
