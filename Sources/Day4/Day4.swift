import Algorithms
import AdventUtilities

func makeWords(from: Position, in grid: [[Character]]) -> [[Character]] {
  [PositionSequence(from: from, to: from + (0, 3)),
   PositionSequence(from: from, to: from + (0, -3)),
   PositionSequence(from: from, to: from + (3, 0)),
   PositionSequence(from: from, to: from + (-3, 0)),
   PositionSequence(from: from, to: from + (3, 3)),
   PositionSequence(from: from, to: from + (-3, -3)),
   PositionSequence(from: from, to: from + (3, -3)),
   PositionSequence(from: from, to: from + (-3, 3))
  ].map {
    $0.compactMap {
      grid.element(atPosition: $0)
    }
  }
}

public func partOne() {
  let grid = input.split(separator: "\n").map(Array.init)
  let xPositions = grid.allPositions.filter { grid[$0] == "X" }

  var count = 0
  for pos in xPositions {
    count += makeWords(from: pos, in: grid).count { $0 == ["X", "M", "A", "S"] }
  }
  print(count) // 2569
}

func crossPositions(of position: Position) -> (upperLeft: Position, upperRight: Position, lowerLeft: Position, lowerRight:Position) {
  (
    position + (1, -1),
    position + (1, 1),
    position + (-1, -1),
    position + (-1, 1)
  )
}

public func partTwo() {
  let grid = input.split(separator: "\n").map(Array.init)
  let aPositions = grid.allPositions.filter { grid[$0] == "A" }

  var count = 0
  for aPos in aPositions {
    let crossPositions = crossPositions(of: aPos)
    let allPositions = [crossPositions.lowerLeft, crossPositions.lowerRight, crossPositions.upperLeft, crossPositions.upperRight]
    let letters = allPositions.compactMap { grid.element(atPosition: $0) }.sorted()
    guard letters == ["M", "M", "S", "S"] else { continue }
    if grid[crossPositions.upperLeft] != grid[crossPositions.lowerRight] {
      count += 1
    }
  }
  print(count) // 1998
}
