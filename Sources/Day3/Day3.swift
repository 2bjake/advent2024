import Algorithms
import RegexBuilder

let mulRegex = Regex {
  "mul("
  Capture {
    Repeat(1...3) { .digit }
  } transform: { Int($0)! }
  ","
  Capture {
    Repeat(1...3) { .digit }
  } transform: { Int($0)! }
  ")"
}

let doFunc = "do()"
let dontFunc = "don't()"

let opsRegex = Regex {
  ChoiceOf {
    mulRegex
    doFunc
    dontFunc
  }
}

public func partOne() {
  let result = input.matches(of: mulRegex).map {
    $0.1 * $0.2
  }.reduce(0, +)
  print(result)
}

public func partTwo() {
  let matches = input.matches(of: opsRegex)
  var enabled = true
  var sum = 0

  for match in matches {
    if match.0 == doFunc {
      enabled = true
    } else if match.0 == dontFunc {
      enabled = false
    } else if enabled {
      sum += match.1! * match.2!
    }
  }
  print(sum)
}
