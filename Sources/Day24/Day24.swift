import RegexBuilder
import AdventUtilities

enum Operation: String {
  case and = "AND"
  case or = "OR"
  case xor = "XOR"

  func perform(_ x: Bool, _ y: Bool) -> Bool {
    switch self {
      case .and: x && y
      case .or: x || y
      case .xor: x != y
    }
  }
}

let wireCapture = TryCapture {
  OneOrMore {
    ChoiceOf {
      CharacterClass.word
      CharacterClass.digit
    }
  }
} transform: { String($0) }

let gateRegex = Regex {
  wireCapture
  " "
  TryCapture {
    ChoiceOf {
      "OR"
      "XOR"
      "AND"
    }
  } transform: { Operation(rawValue: String($0)) }
  " "
  wireCapture
  " -> "
  wireCapture
}

struct Gate {
  let inputWires: [String]
  let outputWire: String
  let operation: Operation

  init?(_ source: Substring) {
    guard let match = source.wholeMatch(of: gateRegex) else { return nil }
    inputWires = [match.1, match.3]
    outputWire = match.4
    operation = match.2

  }
}

func parseInput(_ initialSource: String, gateSource: String) -> (wires: [String: Bool], gates: [Gate]) {
  let wires: [String: Bool] = initialSource.split(separator: "\n").reduce(into: [:]) { result, value in
    let parts = value.split(separator: ": ")
    result[String(parts[0])] = parts[1] == "1"
  }

  let gates = gateSource.split(separator: "\n").compactMap(Gate.init)

  return (wires, gates)
}

enum Value {
  case bool(Bool)
  case gate(Gate)
}

func calculateValue(for wire: String, from values: inout [String: Value]) -> Bool {
  switch values[wire]! {
    case .bool(let bool):
      return bool
    case .gate(let gate):
      let a = calculateValue(for: gate.inputWires[0], from: &values)
      let b = calculateValue(for: gate.inputWires[1], from: &values)
      let result = gate.operation.perform(a, b)
      values[wire] = .bool(result)
      return result
  }
}

public func partOne() {
  let (wires, gates) = parseInput(initialInput, gateSource: gateInput)

  var values: [String: Value] = wires.reduce(into: [:]) { result, entry in
    result[entry.key] = .bool(entry.value)
  }

  for gate in gates {
    values[gate.outputWire] = .gate(gate)
  }

  let zWires = gates.map(\.outputWire).filter { $0.starts(with: "z") }.sorted()

  let binaryStr = zWires.map { calculateValue(for: $0, from: &values) ? "1" : "0" }.reversed().joined()
  print(Int(binaryStr, radix: 2)!)

}

public func partTwo() {

}
