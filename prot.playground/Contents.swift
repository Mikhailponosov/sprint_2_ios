class Engineer: Coder { }

class Developer {
    func coding() {
        print("This is the program!")
    }
}

protocol Coder { }

extension Coder {
    func coding() {
        print("This is the code!")
    }
}

let developer = Developer()
let engineer = Engineer()

developer.coding()
engineer.coding()
