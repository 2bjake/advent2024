import AdventUtilities

let wall: Character = "#"
let box: Character = "O"
let empty: Character = "."
let robot: Character = "@"

extension Direction {
  init?(_ source: Character) {
    switch source {
      case "^": self = .up
      case "v": self = .down
      case "<": self = .left
      case ">": self = .right
      default: return nil
    }
  }
}

func parseInput(gridInput: String, directionsInput: String) -> (grid: [[Character]], directions: [Direction]) {
  let grid = gridInput.split(separator: "\n").map(Array.init)
  let directions = directionsInput.compactMap(Direction.init)
  return (grid, directions)
}

func printGrid(_ grid: [[Character]], robotPosition: Position) {
  var grid = grid
  grid[robotPosition] = robot
  for row in grid {
    print(String(row))
  }
  print()
}

func canMoveSimpleBox(at position: Position, direction: Direction, in grid: [[Character]]) -> (canMove: Bool, moveTo: Position) {
  let nextPosition = position.moved(direction)
  if grid[nextPosition] == empty {
    return (true, nextPosition)
  } else if grid[nextPosition] == box {
    let (canMove, moveTo) = canMoveSimpleBox(at: nextPosition, direction: direction, in: grid)
    if canMove {
      return (true, moveTo)
    }
  }
  return (false, position)
}

func moveSimpleBox(position: inout Position, direction: Direction, grid: inout [[Character]]) {
  let nextPosition = position.moved(direction)
  let (canMove, moveTo) = canMoveSimpleBox(at: nextPosition, direction: direction, in: grid)
  if canMove {
    position = nextPosition
    grid[nextPosition] = empty
    grid[moveTo] = box
  }
}

func isBoxLeft(at position: Position, in grid: [[Character]]) -> Bool {
  if grid[position.moved(.right)] != box { return false }
  if grid[position.moved(.left)] != box { return true }
  return isBoxRight(at: position.moved(.left), in: grid)
}

func isBoxRight(at position: Position, in grid: [[Character]]) -> Bool {
  if grid[position.moved(.right)] != box { return true }
  if grid[position.moved(.left)] != box { return false }
  return isBoxLeft(at: position.moved(.left), in: grid)
}

//func moveDoubleBoxes(at positions: (Position, Position), direction: Direction, in grid: [[Character]]) -> Bool {
//  let nextPositions = (positions.0.moved(direction), positions.1.moved(direction))
//  if grid[nextPositions.0] == empty && grid[nextPositions.1] == empty {
//    return true
//  } else if grid[nextPosition] == box {
//    let (canMove, moveTo) = canMoveSimpleBox(at: nextPosition, direction: direction, in: grid)
//    if canMove {
//      return (true, moveTo)
//    }
//  }
//  return (false, position)
//}
//
//func moveDoubleBox(position: inout Position, direction: Direction, grid: inout [[Character]]) {
//  let nextPosition = position.moved(direction)
//  let nextPositions = isBoxRight(at: nextPosition, in: grid) ? (nextPosition.moved(.left), nextPosition) : (nextPosition, nextPosition.moved(.right))
//  let canMove = moveDoubleBoxes(at: nextPositions, direction: direction, in: grid)
//  if canMove {
//    position = nextPosition
//  }
//}

// it's recursive. starting from the robot's position, kick it off at the position the robot is trying to move into.
// this function will figure out which two spaces are the box.
// if both spots are empty, return true
// if either spot is a wall, return false
// for each spot that is a box, call recursively
// if both spots return true, move those boxes and return true
// else if either spot returns false, return false

// the caller of the function is responsible for moving the boxes it presses into. The way this is described above, all will be handled except the first box the robot runs into, so that needs to be handled outside of the function

//func moveDouble(_ position: Position, direction: Direction, grid: [[Character]]) -> Bool {
//  var curBox = isBoxRight(at: position, in: grid) ? (position.moved(.left), position) : (position, position.moved(.right))
//  var movePlan = [curBox]
//  var spotsToCheck = [curBox.0.moved(direction), curBox.1.moved(direction)]
//  var planComplete = false
//  while !planComplete {
//
//  }
//}


func score(_ grid: [[Character]]) -> Int {
  grid.allPositions
    .filter { grid[$0] == box }
    .map { 100 * $0.row + $0.col }
    .reduce(0, +)
}

public func partOne() {
  let data = parseInput(gridInput: gridInput, directionsInput: directionsInput)
  var grid = data.grid
  var position = grid.allPositions.first { grid[$0] == robot }!
  grid[position] = empty

  for direction in data.directions {
    let nextPosition = position.moved(direction)
    if grid[nextPosition] == empty {
      position = nextPosition
    } else if grid[nextPosition] == box {
      moveSimpleBox(position: &position, direction: direction, grid: &grid)
    }
  }

  print(score(grid)) // 1515788
}

func doubleGrid(_ grid: [[Character]]) -> [[Character]] {
  var result = [[Character]]()

  for line in grid {
    result.append(line.flatMap {
      switch $0 {
        case wall: return [wall, wall]
        case box: return [box, box]
        case empty: return [empty, empty]
        case robot: return [robot, empty]
        default: fatalError()
      }
    })
  }

  return result
}

public func partTwo() {
//  let data = parseInput(gridInput: smallTestGridInput, directionsInput: smallTestDirectionsInput)
//  var grid = doubleGrid(data.grid)
//  var position = grid.allPositions.first { grid[$0] == robot }!
//  grid[position] = empty
//
//  for direction in data.directions {
//    let nextPosition = position.moved(direction)
//    if grid[nextPosition] == empty {
//      position = nextPosition
//    } else if grid[nextPosition] == box {
//      if direction == .left || direction == .right {
//        moveSimpleBox(position: &position, direction: direction, grid: &grid)
//      } else {
//        moveDoubleBox(position: &position, direction: direction, grid: &grid)
//      }
//    }
//  }

}
