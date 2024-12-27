import AdventUtilities

func isDesignPossible(_ design: Substring, from towels: [Substring]) -> Bool {
  if design.isEmpty { return true }
  for match in towels.filter(design.hasPrefix) {
    if isDesignPossible(design.dropFirst(match.count), from: towels) {
      return true
    }
  }
  return false
}

var cache = [Substring: Int]()

func possibleDesignCount(_ design: Substring, from towels: [Substring]) -> Int {
  if design.isEmpty { return 1 }
  var count = 0
  for match in towels.filter(design.hasPrefix) {
    let remainder = design.dropFirst(match.count)
    if let cachedCount = cache[remainder] {
      count += cachedCount
    } else {
      let designCount = possibleDesignCount(remainder, from: towels)
      cache[remainder] = designCount
      count += designCount
    }
  }
  return count
}

func parseInput(towelsSource: String, designsSource: String) -> (towels: [Substring], designs: [Substring]) {
  let towels = towelsSource.split(separator: ", ")
  let designs = designsSource.split(separator: "\n")
  return (towels, designs)
}

public func partOne() {
  let (towels, designs) = parseInput(towelsSource: towelsInput, designsSource: designsInput)
  let result = designs.count {
    isDesignPossible($0, from: towels)
  }
  print(result)
}

public func partTwo() {
  let (towels, designs) = parseInput(towelsSource: towelsInput, designsSource: designsInput)
  let result = designs.map {
    print($0)
    return possibleDesignCount($0, from: towels)
  }.reduce(0, +)
  print(result)
}
