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

// uses astar to find the shortest path (includes start and goal positions, so the path length is 1 less than the number of positions)
func findShortestPath(from start: Position, to goal: Position, in grid: [[Character]], wall: Character) -> [Position]? {
  func h(_ pos: Position) -> Int {
    abs(pos.row - goal.row) + abs(pos.col - goal.col)
  }

  func buildPath() -> [Position] {
    var current = goal
    var path = [goal]
    while let next = cameFrom[current] {
      path.append(next)
      current = next
    }
    return Array(path.reversed())
  }

  var openSet: Set<Position> = [start]
  var cameFrom = [Position: Position]()

  var gScore = [start: 0]
  var fScore = [start: h(start)]

  while !openSet.isEmpty {
    let current = openSet.min { fScore[$0]! < fScore[$1]! }! // this isn't terribly efficient, could be better with a MinQueue
    if current == goal {
      return buildPath()
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
  let result = findShortestPath(from: Position(0, 0), to: Position(70, 70), in: grid, wall: "#")!.count
  print(result - 1) // 364
}

public func partTwo() {
  var (grid, bytes) = makeGrid(size: 71, byteString: input, byteCount: 1024)

  var shortestPath = findShortestPath(from: Position(0, 0), to: Position(70, 70), in: grid, wall: "#")

  while let path = shortestPath {
    let byte = bytes.removeFirst()
    grid[byte] = "#"
    if path.contains(byte) {
      guard let newPath = findShortestPath(from: Position(0, 0), to: Position(70, 70), in: grid, wall: "#") else {
        print("\(byte.col),\(byte.row)") // 52,28
        break
      }
      shortestPath = newPath
    } // else this byte didn't affect the current shortest path, move along
  }
}
