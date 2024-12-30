import RegexBuilder
import AdventUtilities


//p=9,5 v=-3,-3
let regex = Regex {
  "p="
  Capture.int
  ","
  Capture.int
  " v="
  Capture.int
  ","
  Capture.int
}

func movePosition(_ pos: Int, velocity: Int, times: Int, wrap: Int) -> Int {
  let newPos = (pos + (velocity * times)) % wrap
  return newPos < 0 ? wrap + newPos : newPos
}

struct Robot {
  var position: Position
  let velocity: (row: Int, col: Int)

  mutating func move(times: Int = 1, wrapping: (numRows: Int, numCols: Int)) {
    position = Position(
      movePosition(position.row, velocity: velocity.row, times: times, wrap: wrapping.numRows),
      movePosition(position.col, velocity: velocity.col, times: times, wrap: wrapping.numCols)
    )
  }
}

func printGrid(height: Int, width: Int, robots: [Robot]) {
  var grid = Array(repeating: Array(repeating: 0, count: width), count: height)
  for robot in robots {
    grid[robot.position] += 1
  }

  for row in grid {
    print(row.map(String.init).joined())
  }
}

func printTreeCandidate(height: Int, width: Int, robots: [Robot], moveCount: Int) {
  var grid = Array(repeating: Array(repeating: ".", count: width), count: height)
  for robot in robots {
    grid[robot.position] = "#"
  }

  let displayGrid = grid.map { $0.joined() }

  if displayGrid.contains(where: { $0.contains("#######")}) {
    for row in grid {
      print(row.joined())
    }
    print(moveCount)
  }
}


public func partOne() {
//  let height = 7
//  let width = 11
//
//  var robots = testInput.matches(of: regex).map {
//    Robot(position: Position($0.2, $0.1), velocity: (row: $0.4, col: $0.3))
//  }

  let height = 103
  let width = 101

  var robots = input.matches(of: regex).map {
    Robot(position: Position($0.2, $0.1), velocity: (row: $0.4, col: $0.3))
  }

  //printGrid(height: height, width: width, robots: robots)

  for i in robots.indices {
    robots[i].move(times: 100, wrapping: (numRows: height, numCols: width))
  }

  //printGrid(height: height, width: width, robots: robots)

  var quadrantCount = [0, 0, 0, 0]
  for robot in robots {
    let rowMiddle = height / 2
    let colMiddle = width / 2
    guard robot.position.row != rowMiddle && robot.position.col != colMiddle else { continue }

    if robot.position.row < height / 2 {
      let idx = robot.position.col < width / 2 ? 0 : 1
      quadrantCount[idx] += 1
    } else {
      let idx =  robot.position.col < width / 2 ? 2 : 3
      quadrantCount[idx] += 1
    }
  }
  print(quadrantCount)
  print(quadrantCount.reduce(1, *))
}

public func partTwo() {
  let height = 103
  let width = 101

  var robots = input.matches(of: regex).map {
    Robot(position: Position($0.2, $0.1), velocity: (row: $0.4, col: $0.3))
  }

  for moveCount in 1...1_000_000 {
    for j in robots.indices {
      robots[j].move(times: 1, wrapping: (numRows: height, numCols: width))
    }
    printTreeCandidate(height: height, width: width, robots: robots, moveCount: moveCount)
    //printGrid(height: height, width: width, robots: robots)
    //print(i)
  }

}
