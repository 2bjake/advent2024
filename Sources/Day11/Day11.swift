import AdventUtilities

class Stone {
  var value: String
  var next: Stone?

  init(value: String, next: Stone?) {
    self.value = value
    self.next = next
  }

  func blink() -> Stone? {
    if value == "0" {
      value = "1"
    } else if value.count % 2 == 0 {
      let newStone = Stone(value: String(Int(value.suffix(value.count / 2))!), next: next)
      value.removeLast(value.count / 2)
      next = newStone
      return next?.next
    } else {
      value = String(Int(value)! * 2024)
    }
    return next
  }
}

func makeStones(_ source: String) -> Stone? {
  let values = source
    .split(separator: " ")
    .map(String.init)

  var next: Stone?
  for value in values.reversed() {
    next = Stone(value: value, next: next)
  }
  return next
}

func printStones(_ stone: Stone?) {
  var cur = stone
  while cur != nil {
    print(cur!.value, terminator: " ")
    cur = cur?.next
  }
  print()
}

func countStones(_ stone: Stone?) -> Int {
  var result = 0
  var cur = stone
  while cur != nil {
    result += 1
    cur = cur?.next
  }
  return result
}

func blinkStones(_ stone: Stone?) {
  var cur = stone
  while cur != nil {
    cur = cur?.blink()
  }
}

public func partOne() {
  var stone = makeStones("8435 234 928434 14 0 7 92446 8992692")

  for _ in 1...25 {
    blinkStones(stone)
  }
  print(countStones(stone)) // 182081
}

public func partTwo() {
  var stone = makeStones("8435 234 928434 14 0 7 92446 8992692")

  for i in 1...75 {
    print(i)
    blinkStones(stone)
  }
  print(countStones(stone))
}
