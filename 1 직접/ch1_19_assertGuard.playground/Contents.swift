import Foundation

var value = 0
assert(value == 0) // 디버깅 중 조건 검증위해 사용 

//value = 2
//assert(value == 0, "값이 0이 아닙니다.") // -> false일 때 에러발생 및 중지

/*
 gurad 221 else {
 //조건이 false 이면 else 구문이 실행되고
 return or throw or break 를 통해 이 후 코드를 실행하지 않도록 한다.
 }
*/

func guardTst(val: Int) {
    guard val == 0 else { print("2. val is not 0, current val is = \(val)");return }
    print("1. val is 0")
}

func guardTst(val: Int?) {
    guard let val = val else { print("4. val is nil");return }
    print("3. val is \(val)")
}

var optInt: Int? = 40
optInt = nil
guardTst(val: optInt)
