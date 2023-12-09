import Foundation

func preparing (message: String?) {
    guard let message else {
        return
    }
        print(message)
}


var message: String?
message = "Hello world"
if let message {
    print(message)
}

preparing(message: message)



