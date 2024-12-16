import AdventUtilities

extension Direction {
  mutating func turnRight() {
    switch self {
      case .up: self = .right
      case .left: self = .up
      case .down: self = .left
      case .right: self = .down
    }
  }

  func turnedRight() -> Direction {
    var current = self
    current.turnRight()
    return current
  }
}

let testInput = """
....#.....
.........#
..........
..#.......
.......#..
..........
.#..^.....
........#.
#.........
......#...
"""

func printGrid(_ grid: [[Character]]) {
  let foo = grid.map { String($0) }.joined(separator: "\n")
  print(foo)
  print()
}

func parseInput(_ source: String) -> (grid: [[Character]], guardPosition: Position) {
  let grid = source.split(separator: "\n").map(Array.init)

  for pos in grid.allPositions {
    if grid[pos] == "^" {
      return (grid, pos)
    }
  }
  fatalError()
}

public func partOne() {
  var (grid, guardPos) = parseInput(input)
  var guardDirection = Direction.up
  var visited: Set<Position> = [guardPos]
  while true {
    guard let nextValue = grid.element(atPosition: guardPos.moved(guardDirection)) else { break }

    if nextValue != "#" {
      guardPos.move(guardDirection)
      visited.insert(guardPos)
    } else {
      guardDirection.turnRight()
    }
  }
  print(visited.count) // 5534
}

public func partTwo() {
  var (grid, guardPos) = parseInput(testInput)
  var guardDirection = Direction.up
  var visited: [Position: Set<Direction>] = [guardPos : [.up]]

  var obstructionPositions = Set<Position>()
  while true {
    let nextPosition = guardPos.moved(guardDirection)
    guard let nextValue = grid.element(atPosition: nextPosition) else { break }

    if nextValue != "#" {
      if visited[guardPos]?.contains(guardDirection.turnedRight()) == true {
        obstructionPositions.insert(nextPosition)
        grid[nextPosition] = "O"
      }
      guardPos.move(guardDirection)
      visited[guardPos, default: []].insert(guardDirection)
    } else {
      guardDirection.turnRight()
    }
  }
  //print(obstructionPositions)
  //print(obstructionPositions.count)
  printGrid(grid)
}
