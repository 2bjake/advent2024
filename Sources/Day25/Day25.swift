import AdventUtilities

func parseKey(_ source: Substring) -> [Int] {
  let grid = source.split(separator: "\n").map(Array.init)

  return (0..<grid.numberOfColumns).map {
    grid.column(at: $0).reversed().firstIndex(of: ".")! - 1
  }
}

func parseLock(_ source: Substring) -> [Int] {
  let grid = source.split(separator: "\n").map(Array.init)

  return (0..<grid.numberOfColumns).map {
    grid.column(at: $0).firstIndex(of: ".")! - 1
  }
}

func parse(_ source: String) -> (keys: [[Int]], locks: [[Int]]) {
  var keys = [[Int]]()
  var locks = [[Int]]()

  for item in source.split(separator: "\n\n") {
    if item.hasPrefix(".....") {
      keys.append(parseKey(item))
    } else {
      locks.append(parseLock(item))
    }
  }
  return (keys, locks)
}

public func partOne() {
  let (keys, locks) = parse(input)

  var count = 0

  for lock in locks {
    count += keys.count { key in
      for i in lock.indices {
        if lock[i] + key[i] >= 6 {
          return false
        }
      }
      return true
    }
  }

  print(count)
}

public func partTwo() {

}
