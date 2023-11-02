import Foundation

/*
 protocol 이름 {
 }
 */
protocol Sprt { }
protocol Sprt2 { }

struct Sstr: Sprt, Sprt2 { }

/*
 class sCls: SomeSuperclass, FirstProtocol, SecondProtocol { }
 */

protocol FirstProtocol {
    var name: Int { get set }
    var age: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyNames {
    var fullName: String { get set }
    func printFullName()
}

struct Person: FullyNames {
    var fullName: String
    
    func printFullName() {
        print(fullName)
    }
}

protocol Sprt3 {
    func someTypeMethod()
}

protocol Sprt4 {
    init(someParam: Int)
}

protocol Sprt5 {
    init()
}

class SomeClass: Sprt5 {
    required init() {
    }
}

//final class SomeClass: Sprt5 {
//}
