import AdventUtilities

func parseGrid(_ source: String) -> [[Int]] {
  source.split(separator: "\n").map {
    Array($0).compactMap(Int.init)
  }
}

func peakPositionsPerTrailhead(_ source: String) -> [[Position]] {
  let grid = parseGrid(source)

  let heightToPositions: [Int: [Position]] = grid.allPositions.reduce(into: [:]) { result, value in
    result[grid[value], default: []].append(value)
  }

  var positionToPeakPositions = [Position: [Position]]()

  for position in heightToPositions[9, default: []] {
    positionToPeakPositions[position] = [position]
  }

  for height in (0...8).reversed() {
    for position in heightToPositions[height, default: []] {
      for adjacent in grid.adjacentPositions(of: position) where grid[adjacent] - 1 == height {
        positionToPeakPositions[position, default: []].append(contentsOf: positionToPeakPositions[adjacent, default: []])
      }
    }
  }

  return heightToPositions[0, default: []].compactMap {
    positionToPeakPositions[$0]
  }
}

func uniquePeakPositionsPerTrailhead(_ source: String) -> [Set<Position>] {
  peakPositionsPerTrailhead(source).map(Set.init)
}

public func partOne() {
  let result = uniquePeakPositionsPerTrailhead(input).map(\.count).reduce(0, +)
  print(result) // 737
}

public func partTwo() {
  let result = peakPositionsPerTrailhead(input).map(\.count).reduce(0, +)
  print(result) //1619
}
