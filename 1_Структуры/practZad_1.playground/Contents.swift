import Foundation

struct Salad {
    let name: String
    let price: Double
    let description: String
    let image: String
    let allergens: [String]
    let energy: Int
}

//объект
let someSalad = Salad (name: "салат с огурцами",
                       price: 20.5,
                       description: "ссалат из...",
                       image: "ссылка на картинку, https://...",
                       allergens: ["масло", "огурец"],
                       energy: 250)
