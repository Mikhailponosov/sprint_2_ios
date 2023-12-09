import Foundation

// MARK: - 🛠 Исполнитель тестов
// - Здесь написан код выполняющий тесты
// - ⚠️ Не меняйте этот код

public struct TestRunner {

    private let solution: SolutionProtocol

    public init(solution: SolutionProtocol) {
        self.solution = solution
    }

    public func runTests(testCases: [TestCase]) {
		Swift.print("▶️ Starting test run with \(testCases.count) test cases ...")

        var failedTestsIndexes: [Int] = []
        for (i, testCase) in testCases.enumerated() {
			Swift.print("\nRunning test case #\(i) of \(testCases.count)")

			var output = ""
			printCallback = { output += $0 }

			solution.explore(planet: testCase.planet)

            if output == testCase.result {
				Swift.print("✅ Test #\(i) passed")
            } else {
                failedTestsIndexes.append(i)

				Swift.print("❌ Test #\(i) failed")
				Swift.print("Expected id to be \(testCase.result), but got \(output)")
            }
        }

		Swift.print("\n⏹ Finishing test run...\n")
        if failedTestsIndexes.isEmpty {
			Swift.print("✅ All \(testCases.count) test passed")
        } else {
			Swift.print("❌ Test run failed for \(failedTestsIndexes.count) of \(testCases.count) test cases")

            let failedTestCaseIDsString = failedTestsIndexes
                .map { "#\($0)" }
                .joined(separator: ", ")
			Swift.print("Failed test cases are: \(failedTestCaseIDsString)")
        }
    }
}

var printCallback: (String) -> () = { _ in }

public func print(_ string: String) {
	printCallback(string)
	Swift.print(string)
}
