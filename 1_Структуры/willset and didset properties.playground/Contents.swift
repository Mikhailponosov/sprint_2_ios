import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var fullName: String {
        willSet {
            print("Will set fullName to \(newValue)")
        }
    }
}
var person = Person(firstName: "John", lastName: "Doe", fullName: "")
print(person.fullName)
person.fullName = "Jane Doe"
print(person.fullName)
