import Foundation

// MARK: - ℹ️ Инструкция
//
// Чтобы выполнить практическое задание:
// 1. Прочитайте его условия;
// 2. Исправьте решение в этом файле, в разделе «Решение»;
// 3. Запустите Playground, чтобы проверить своё решение с помощью тестов.

// MARK: - ℹ️ Условие задания
//
// «Заменяем две переменные на один опционал»
//
// Перед вами код исследования планеты. Его нужно исправить — избавиться от лишнего параметра.
// Функция `explore` принимает два параметра: `planetExists` и `planet`.
// Если планета существует (`planetExists`), то печатаем информацию о ней.
//
// Надо заменить эти две переменные на один опционал, по которому можно будет понять,
// есть ли точка назначения в виде планеты.

// MARK: - 🧑‍💻 Решение
// Исправьте код решения ЗДЕСЬ
// Начните с выполнения требований протокола

// --- НАЧАЛО КОДА С РЕШЕНИЕМ, КОТОРОЕ НУЖНО ИСПРАВИТЬ ---
class Solution: SolutionProtocol {
	func explore(planet: Planet?) {
		if planet != nil {
			print("Планета найдена! \(planet)")
		}
	}
}
// --- КОНЕЦ КОДА С РЕШЕНИЕМ ---

// MARK: - 🛠 Тесты
// - Здесь содержится код запуска тестов для вашего решения
// - ⚠️ Не меняйте этот код

let solution: SolutionProtocol = Solution()
let testRunner = TestRunner(solution: solution)
testRunner.runTests(testCases: .default)
