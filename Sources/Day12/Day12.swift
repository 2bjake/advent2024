import AdventUtilities
import Algorithms

struct Boundary {
  let position: Position
  let direction: Direction
}

struct Region {
  let letter: Character
  var positions = [Position]()
  var boundaries = [Boundary]()

  var fencePrice: Int { positions.count * boundaries.count }

  var discountFencePrice: Int { positions.count * countSides(boundaries) }
}

extension Region: CustomStringConvertible {
  var description: String {
    "A region of \(letter) plants with price \(positions.count) * \(boundaries.count) = \(fencePrice)."
  }
}

func countSides(inRow: Bool, positions: [Position]) -> Int {
  let adjacentKeypath = inRow ? \Position.row : \.col
  let sameKeypath = inRow ? \Position.col : \.row

  let pairs = positions.sorted(by: {
    guard $0[keyPath: sameKeypath] == $1[keyPath: sameKeypath] else {
      return $0[keyPath: sameKeypath] < $1[keyPath: sameKeypath]
    }
    return $0[keyPath: adjacentKeypath] < $1[keyPath: adjacentKeypath]
  }).adjacentPairs()

  var sides = 0
  for pair in pairs {
    if pair.1[keyPath: adjacentKeypath] - pair.0[keyPath: adjacentKeypath] != 1 || pair.1[keyPath: sameKeypath] != pair.0[keyPath: sameKeypath]{
      sides += 1
    }
  }
  sides += 1
  return sides
}

func countSides(_ boundaries: [Boundary]) -> Int {
  let directionToPositions: [Direction: [Position]] = boundaries.reduce(into: [:]) { result, value in
    result[value.direction, default: []].append(value.position)
  }

  var sides = 0
  for (direction, positions) in directionToPositions {
    switch direction {
      case .up, .down: sides += countSides(inRow: false, positions: positions)
      case .left, .right: sides += countSides(inRow: true, positions: positions)
    }
  }
  return sides
}

func makeRegions(_ source: String) -> [Region] {
  var grid = input.split(separator: "\n").map(Array.init)
  var regions = [Region]()

  while let firstPos = grid.allPositions.first(where: { grid[$0] != "0" }) {
    var region = Region(letter: grid[firstPos])
    var posToCheck: Set<Position> = [firstPos]
    var posChecked = Set<Position>()

    while let pos = posToCheck.first {
      region.positions.append(posToCheck.removeFirst())
      for direction in Direction.allCases {
        let newPos = pos.moved(direction)
        if grid.element(atPosition: newPos) == region.letter {
          guard newPos.notIn(posChecked) && newPos.notIn(posToCheck) else { continue }
          posToCheck.insert(newPos)
        } else {
          region.boundaries.append(.init(position: pos, direction: direction))
        }
      }
      posChecked.insert(pos)
    }
    regions.append(region)
    for pos in region.positions {
      grid[pos] = "0"
    }
  }
  return regions
}

public func partOne() {
  let regions = makeRegions(input)

  print(regions.map(\.fencePrice).reduce(0, +)) // 1450422

  print(regions.map(\.discountFencePrice).reduce(0, +)) // 906606
}

public func partTwo() {
}
