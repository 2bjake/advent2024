import AdventUtilities

struct StoneBlink: Hashable {
  let value: String
  let blinkCount: Int

  init(stone: Stone) {
    value = stone.originalValue
    blinkCount = stone.blinkCount
  }
}

var stoneBlinkToCount = [StoneBlink: Int]()

class Stone {
  let originalValue: String
  var value: String
  var blinkCount = 0
  var children: [Stone] = []

  var stoneBlink: StoneBlink { .init(stone: self) }

  var count: Int {
    if let result = stoneBlinkToCount[stoneBlink] {
      return result
    }

    let result = 1 + children.map(\.count).reduce(0, +)
    stoneBlinkToCount[stoneBlink] = result
    return result
  }

  init(value: String, blinkCount: Int = 0) {
    self.originalValue = value
    self.value = value
    self.blinkCount = blinkCount
  }

  func blink() {
    blinkCount += 1
    children.forEach { $0.blink() }
    if value == "0" {
      value = "1"
    } else if value.count % 2 == 0 {
      children.append(Stone(value: String(Int(value.suffix(value.count / 2))!)))
      value = String(value.prefix(value.count / 2))
    } else {
      value = String(Int(value)! * 2024)
    }

    if stoneBlinkToCount[stoneBlink] == nil {
      stoneBlinkToCount[stoneBlink] = count
    }
  }
}

func loadCache() {
  let stone = Stone(value: "0")
  for _ in 1...75 {
    stone.blink()
  }
}

func makeStones(_ source: String) -> [Stone] {
  source.split(separator: " ").map(String.init).compactMap { Stone(value: $0) }
}

public func partOne() {
  let stones = makeStones("8435 234 928434 14 0 7 92446 8992692")

  var stoneCount = 0

  for stone in stones {
    for _ in 0..<25 {
      stone.blink()
    }
    stoneCount += stone.count
  }

  print(stoneCount) // 182081
}

public func partTwo() {
//  loadCache()
//  print(stoneBlinkToCount.count)
}
