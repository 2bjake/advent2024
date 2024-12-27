import AdventUtilities

private extension Character {
  static let wall: Self = "#"
  static let empty: Self = "."
  static let start: Self = "S"
  static let end: Self = "E"
}

func parse(_ source: String) -> (start: Position, end: Position, grid: [[Character]]) {
  var grid = source.split(separator: "\n").map(Array.init)
  var start: Position?
  var end: Position?
  for position in grid.allPositions {
    if grid[position] == .start {
      start = position
      grid[position] = .empty
    } else if grid[position] == .end {
      end = position
      grid[position] = .empty
    }
  }
  return (start!, end!, grid)
}

func printGrid(_ grid: [[Character]]) {
  print(grid.map { String($0) }.joined(separator: "\n"))
}

func calculateCosts(from: Position, in grid: [[Character]]) -> [Position: Int] {
  var costs = [from: 0]
  var visited = Set<Position>()
  var toVisit = [from]

  while let cur = toVisit.popLast() {
    visited.insert(cur)
    for neighbor in grid.adjacentPositions(of: cur) {
      guard grid[neighbor] == .empty && neighbor.notIn(visited) else { continue }
      costs[neighbor] = costs[cur]! + 1
      toVisit.append(neighbor)
    }
  }
  return costs
}

func next(from: Position, using costs: [Position: Int]) -> Position {
  let cost = costs[from]!
  for direction in Direction.allCases {
    let potentialNext = from.moved(direction)
    if cost - costs[potentialNext, default: cost] == 1 {
      return potentialNext
    }
  }
  fatalError()
}

func cheatDestinations(from: Position, in grid: [[Character]], for costs: [Position: Int], minSize: Int) -> [Position] {
  let cost = costs[from]!
  var destinations = [Position]()
  for direction in Direction.allCases {
    let potentialDestination = from.moved(direction).moved(direction)
    if grid.isValidPosition(potentialDestination) && cost - costs[potentialDestination, default: Int.max] >= (minSize + 2 ) {
      destinations.append(potentialDestination)
    }
  }
  return destinations
}

public func partOne() {
  let (start, end, grid) = parse(input)

  let costs = calculateCosts(from: end, in: grid)

  var cheatCount = 0
  var cur = start
  while cur != end {
    cheatCount += cheatDestinations(from: cur, in: grid, for: costs, minSize: 100).count
    cur = next(from: cur, using: costs)
  }
  print(cheatCount) // 1441
}

extension Position {
  func distanceFrom(_ other: Position) -> Int {
    abs(self.row - other.row) + abs(self.col - other.col)
  }
}

// this could be used for part 1 but it's less performant
func partTwoCheatDestinations(from start: Position, in grid: [[Character]], for costs: [Position: Int], maxDistance: Int, minSize: Int) -> [Position] {
  let cost = costs[start]!
  var destinations = [Position]()

  for (destPos, destCost) in costs {
    let costDifference = cost - destCost
    let distance = start.distanceFrom(destPos)
    if distance <= maxDistance && costDifference >= (minSize + distance) {
      destinations.append(destPos)
    }
  }

  return destinations
}

public func partTwo() {
  let (start, end, grid) = parse(input)

  let costs = calculateCosts(from: end, in: grid)

  var cheatCount = 0
  var cur = start
  while cur != end {
    cheatCount += partTwoCheatDestinations(from: cur, in: grid, for: costs, maxDistance: 20, minSize: 100).count
    cur = next(from: cur, using: costs)
  }
  print(cheatCount) // 1021490
}
