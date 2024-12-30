import AdventUtilities
import Algorithms

func parseInput(_ source: String) -> (grid: [[Character]], antennaToPositions: [Character: [Position]]) {
  let grid = source.split(separator: "\n").map(Array.init)
  let antennaToPositions: [Character: [Position]] = grid.allPositions.reduce(into: [:]) { result, value in
    let antenna = grid[value]
    if antenna != "." {
      result[antenna, default: []].append(value)
    }
  }
  return (grid, antennaToPositions)
}

public func -(positionA: Position, positionB: Position) -> (row: Int, col: Int) {
  (positionA.row - positionB.row, positionA.col - positionB.col)
}

func findAntinodes(for positions: [Position], in grid: [[Character]]) -> Set<Position> {
  var antinodes = Set<Position>()

  for pair in positions.combinations(ofCount: 2) {
    let difference = pair[0] - pair[1]
    let potentialAntinodes = [pair[0] + difference, pair[1] - difference]
    antinodes.formUnion(potentialAntinodes.filter { grid.isValidPosition($0) })
  }

  return antinodes
}

func findPartTwoAntinodes(for positions: [Position], in grid: [[Character]]) -> Set<Position> {
  var antinodes = Set<Position>()

  for pair in positions.combinations(ofCount: 2) {
    //antinodes.formUnion(pair)
    let difference = pair[0] - pair[1]
    
    var potentialAntinode = pair[0] - difference
    while grid.isValidPosition(potentialAntinode) {
      antinodes.insert(potentialAntinode)
      potentialAntinode = potentialAntinode - difference
    }

    potentialAntinode = pair[1] + difference
    while grid.isValidPosition(potentialAntinode) {
      antinodes.insert(potentialAntinode)
      potentialAntinode = potentialAntinode + difference
    }
  }
  return antinodes
}

public func partOne() {
  let (grid, antennaToPositions) = parseInput(input)
  var antinodes = Set<Position>()
  for positions in antennaToPositions.values {
    antinodes.formUnion(findAntinodes(for: positions, in: grid))
  }
  print(antinodes.count) // 278
}

public func partTwo() {
  let (grid, antennaToPositions) = parseInput(input)
  var antinodes = Set<Position>()
  for positions in antennaToPositions.values {
    antinodes.formUnion(findPartTwoAntinodes(for: positions, in: grid))
  }
  print(antinodes.count)
}
