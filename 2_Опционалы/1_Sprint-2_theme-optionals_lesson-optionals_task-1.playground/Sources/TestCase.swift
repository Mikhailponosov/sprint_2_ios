import Foundation

// MARK: - 🛠 Модель данных теста
// - Здесь описана модель тестовых данных
// - ⚠️ Не меняйте этот код

public struct TestCase {
    let planet: Planet?
    let result: String
}

// MARK: - 🛠 Тестовые данные
// - Здесь описаны тестовые данные
// - ⚠️ Не меняйте этот код

extension Array where Element == TestCase {
    public static let `default`: [TestCase] = [
		TestCase(planet: nil, result: ""),
		TestCase(planet: Planet(distance: 1000), result: "Планета найдена! distance=1000.0 color=<unknown>"),
    ]
}

