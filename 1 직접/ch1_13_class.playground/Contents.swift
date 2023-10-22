import UIKit

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init() {
    }
    
    func introduce() {
        print("nume \(name), age \(age)")
    }
}

var dog = Dog()
dog.name = "CoCo"
dog.age = 3

dog.name
dog.age

dog.introduce()
