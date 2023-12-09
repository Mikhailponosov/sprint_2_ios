import Foundation

var temperature: Int?
print(temperature)
temperature = 5
print(temperature)

var message: String?
message = "hello austanaft"
if message != nil {
    print(message)
}

// Механизм Optional building распаковка опционала
if let value = message {
    print(value)
}

if let message { // более простая запись
    print(message)
}


var message1: String?
prepare(message)

func prepare(_ message: String?) {
    guard let value = message else {
        return
    }
    print(value.uppercased())
}
// null coalessing

print("null coalessing")
print(message1 ?? "Сообщение не получено")

