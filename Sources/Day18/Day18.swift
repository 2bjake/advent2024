import AdventUtilities

extension Position {
  init(source: Substring) {
    let parts = source.split(separator: ",").compactMap(Int.init)
    self.init(parts[1], parts[0])
  }
}

func printGrid(_ grid: [[Character]]) {
  print(grid.map { String($0) }.joined(separator: "\n"))
}

func makeGrid(size: Int, byteString: String, byteCount: Int) -> (grid: [[Character]], remainingByes: ArraySlice<Position>) {
  var grid = Array(repeating: Array(repeating: Character("."), count: size), count: size)
  let positions = byteString.split(separator: "\n").map(Position.init)
  for position in positions.prefix(byteCount) {
    grid[position] = "#"
  }
  return (grid, positions.dropFirst(byteCount))
}

func findShortestPath(from start: Position, to goal: Position, in grid: [[Character]], wall: Character) -> Int? {
  // uses astar
  func h(_ pos: Position) -> Int {
    abs(pos.row - goal.row) + abs(pos.col - goal.col)
  }

  var openSet: Set<Position> = [start]
  var cameFrom = [Position: Position]()

  var gScore = [start: 0]
  var fScore = [start: h(start)]

  func stepCount(_ from: Position) -> Int {
    var current = from
    var totalPath = [current]
    while let next = cameFrom[current] {
      totalPath.append(next)
      current = next
    }
    return totalPath.count - 1
  }

  while !openSet.isEmpty {
    let current = openSet.min { fScore[$0]! < fScore[$1]! }!
    if current == goal {
      return stepCount(current)
    }
    openSet.remove(current)

    let neighbors = grid.adjacentPositions(of: current).filter { grid[$0] != wall }

    for neighbor in neighbors {
      let tentativeGScore = gScore[current, default: Int.max] + 1 // assumes constant weight of move
      if tentativeGScore < gScore[neighbor, default: Int.max] {
        cameFrom[neighbor] = current
        gScore[neighbor] = tentativeGScore
        fScore[neighbor] = tentativeGScore + h(neighbor)
        openSet.insert(neighbor)
      }
    }
  }
  return nil
}

public func partOne() {
  let (grid, _) = makeGrid(size: 71, byteString: input, byteCount: 1024)
  let result = findShortestPath(from: Position(0, 0), to: Position(70, 70), in: grid, wall: "#")
  print(result!) // 364
}

public func partTwo() {
  var (grid, bytes) = makeGrid(size: 71, byteString: input, byteCount: 1024)

  var curByte: Position
  repeat {
    curByte = bytes.removeFirst()
    grid[curByte] = "#"
  } while findShortestPath(from: Position(0, 0), to: Position(70, 70), in: grid, wall: "#") != nil
  print(curByte)
}
