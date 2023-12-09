// MARK: - ℹ️ Протокол решения
// - Здесь описана структура планеты согласно требованиям к решению
// - ⚠️ Не меняйте этот код

public struct Planet {
	public var distance: Double
	public var color: String?
}

extension Planet: CustomStringConvertible {
	public var description: String {
		"distance=\(distance) color=\(color ?? "<unknown>")"
	}
}

extension Optional: CustomStringConvertible where Wrapped == Planet {
	public var description: String {
		switch self {
		case .none:
			return ""
		case .some(let planet):
			return planet.description
		}
	}
}
