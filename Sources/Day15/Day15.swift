import AdventUtilities

let smallTestGridInput = """
########
#..O.O.#
##@.O..#
#...O..#
#.#.O..#
#...O..#
#......#
########
"""

let smallTestDirectionsInput = "<^^>>>vv<v>>v<<"


let testGridInput = """
##########
#..O..O.O#
#......O.#
#.OO..O.O#
#..O@..O.#
#O#..O...#
#O..O..O.#
#.OO.O.OO#
#....O...#
##########
"""

let testDirectionsInput = """
<vv>^<v^>v>^vv^v>v<>v^v<v<^vv<<<^><<><>>v<vvv<>^v^>^<<<><<v<<<v^vv^v>^
vvv<<^>^v^^><<>>><>^<<><^vv^^<>vvv<>><^^v>^>vv<>v<<<<v<^v>^<^^>>>^<v<v
><>vv>v^v^<>><>>>><^^>vv>v<^^^>>v^v^<^^>v^^>v^<^v>v<>>v^v^<v>v^^<^^vv<
<<v<^>>^^^^>>>v^<>vvv^><v<<<>^^^vv^<vvv>^>v<^^^^v<>^>vvvv><>>v^<<^^^^^
^><^><>>><>^^<<^^v>>><^<v>^<vv>>v>>>^v><>^v><<<<v>>v<v<v>vvv>^<><<>^><
^>><>^v<><^vvv<^^<><v<<<<<><^v<<<><<<^^<v<^^^><^>>^<v^><<<^>>^v<v^v<v^
>^>>^v>vv>^<<^v<>><<><<v<<v><>v<^vv<<<>^^v^>^^>>><<^v>>v^v><^^>>^<>vv^
<><^^>^^^<><vvvvv^v<v<<>^v<v>v<<^><<><<><<<^^<<<^<<>><<><^^^>^^<>^>v<>
^^>vv<^v^v<vv>^<><v<^v>^^^>>>^^vvv^>vvv<>>>^<^>>>>>^<<^v>^vvv<>^<><<v>
v^^>>><<^^<>>^v^<v^vv<>v^<<>^<^v^v><^<<<><<^<v><v<>vv>>v><v^<vv<>v^<<^
"""

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

func canMoveBox(at position: Position, direction: Direction, in grid: [[Character]]) -> (canMove: Bool, moveTo: Position) {
  let nextPosition = position.moved(direction)
  if grid[nextPosition] == "." {
    return (true, nextPosition)
  } else if grid[nextPosition] == box {
    let (canMove, moveTo) = canMoveBox(at: nextPosition, direction: direction, in: grid)
    if canMove {
      return (true, moveTo)
    }
  }
  return (false, position)
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
      let (canMove, moveTo) = canMoveBox(at: nextPosition, direction: direction, in: grid)
      if canMove {
        position = nextPosition
        grid[nextPosition] = empty
        grid[moveTo] = box
      }
    }
//    printGrid(grid, robotPosition: position)
  }

  let result = grid.allPositions
    .filter { grid[$0] == box }
    .map { 100 * $0.row + $0.col }
    .reduce(0, +)
  print(result)
}

public func partTwo() {

}
