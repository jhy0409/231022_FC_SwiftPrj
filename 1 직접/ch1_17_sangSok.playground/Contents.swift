import Foundation

class Vcle { // base class > 다른 클래스에서 상속받지 않은 클래스
    var crntSpeed = 0.0
    var desc: String {
        return "traveling at \(crntSpeed) miles per hour"
    }
    
    func makeNoise() {
        
    }
}

/*
 class 클래스 이름: 부모 클래스 이름 {
    // 하위 클래스 정의
 }
 */
