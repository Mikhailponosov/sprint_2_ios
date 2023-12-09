import Foundation


//Stored Properties хранимые свойства
struct Person {
    var name: String
    var age:  Int
}
 var person = Person(name: "John",
                     age: 35)

print(person.name)
print(person.age)
print(person.self)

person.name = "jane"
person.age = 25

print(person.name)
print(person.age)
print(person.self)


//Lazy stored properties ленивые свойства

struct Person1 {
    var name: String
    var age: Int
    
    lazy var fullName: String = "Имя: \(name), возраст: \(age)"
}

var person1 = Person1(name: "Mikhail", age: 38)
print(person1.fullName)

//computed properties вычисляемые свойства

struct Person2 {
    var firstName: String
    var lastName: String
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        // В скобках мы указываем имя переменной, которая будет равна новому значению
        set(newFullName) {
            // Функция components разделает строку на массив подстрок, используя в качестве разделителя параметр separatedBy
            // Например, "ab!cd".components(separatedBy: "!") вернет ["ab", "cd"]
            let words = newFullName.components(separatedBy: " ")
            firstName = words[0]
            lastName = words[1]
        }
    }
}

var person2 = Person2(firstName: "John", lastName: "Doe")

print(person2.fullName) // "John Doe"
print(person2.firstName)
print(person2.lastName)

person2.firstName = "Jane"
person2.lastName = "Doe"

print(person2.fullName)
//изменение fullname, где будет работать  set

person2.fullName = "mikhail ponosov"

print(person2.firstName)
print(person2.lastName)

//что будет выведено:

struct Circle {
    var radius: Double
    var area: Double {
        get { Double.pi * radius * radius }
        set {
            radius = sqrt(newValue/Double.pi)
        }
    }
}

var circle = Circle(radius: 4)
circle.area         // 1
circle.radius = 5   // 2
print(circle.area)  // 3 -> 78,5

struct Circle2 {
    var radius: Double
    var area: Double {
        get { Double.pi * radius * radius }
        set {
            radius = sqrt(newValue/Double.pi)
        }
    }
}

var circle2 = Circle2(radius: 4)
circle2.area = 5
print(circle2.radius) // -> 1.26

//Свойства типа (Type Properties)

