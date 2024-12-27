import AdventUtilities
import Algorithms

extension Int {
  mutating func prune() {
    self %= 16777216
  }

  mutating func mix(_ x: Int) {
    self ^= x
  }

  mutating func evolve() {
    self.mix(self * 64)
    self.prune()
    self.mix(self / 32)
    self.prune()
    self.mix(self * 2048)
    self.prune()
  }

  mutating func evolve(times: Int) {
    for _ in 0..<times {
      self.evolve()
    }
  }

//  func evolved() -> Int {
//    var copy = self
//    copy.evolve()
//    return copy
//  }
}

public func partOne() {
  var numbers = input.split(separator: "\n").compactMap(Int.init)
  for i in numbers.indices {
    numbers[i].evolve(times: 2000)
  }

  print(numbers.reduce(0, +)) // 21147129593

}

func makeSequenceToPrice(_ prices: [Int]) -> [[Int]: Int] {
  var sequenceToPrice = [[Int]: Int]()
  let changes = prices.adjacentPairs().map { $0.1 - $0.0 }
  let sequences = Array(changes.windows(ofCount: 4)).map(Array.init)

  for i in sequences.indices {
    guard sequenceToPrice[sequences[i]] == nil else { continue }
    sequenceToPrice[sequences[i]] = prices[i + 4]
  }
  return sequenceToPrice
}

public func partTwo() {
  var numbers = input.split(separator: "\n").compactMap(Int.init)
  var prices = Array(repeating: [Int](), count: numbers.count)
  for i in numbers.indices {
    for _ in 0..<2000 {
      prices[i].append(numbers[i] % 10)
      numbers[i].evolve()
    }
  }

  let sequenceToCombinedPrice: [[Int]: Int] = prices.map(makeSequenceToPrice).reduce(into: [:]) { result, dict in
    for (key, value) in dict {
      result[key, default: 0] += value
    }
  }

  print(sequenceToCombinedPrice.values.max()!) // 2445
}
