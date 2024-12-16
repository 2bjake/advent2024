import AdventUtilities

let testInput = "2333133121414131402"

func makeBlocks(_ source: String) -> (fileBlocks: ArraySlice<Int>, spaceBlocks: ArraySlice<Int>) {
  let values = Array(source).compactMap(Int.init)
  var fileBlocks = ArraySlice<Int>()
  var spaceBlocks = ArraySlice<Int>()

  for i in values.indices {
    if i % 2 == 0 { // file
      fileBlocks.append(values[i])
    } else { // space
      spaceBlocks.append(values[i])
    }
  }
  return (fileBlocks, spaceBlocks)
}

func makeIdToOriginalPosition(fileBlocks: ArraySlice<Int>, spaceBlocks: ArraySlice<Int>) -> [Int: Int] {
  var fileBlocks = fileBlocks
  var spaceBlocks = spaceBlocks

  var result = [Int: Int]()
  var pos = 0

  while !spaceBlocks.isEmpty {
    result[fileBlocks.startIndex] = pos
    pos += fileBlocks.removeFirst()
    pos += spaceBlocks.removeFirst()
  }
  result[fileBlocks.startIndex] = pos
  return result
}

func makeIdToOriginalPositions(fileBlocks: ArraySlice<Int>, spaceBlocks: ArraySlice<Int>) -> (files: [Int: Int], spaces: [Int: Int]) {
  var fileBlocks = fileBlocks
  var spaceBlocks = spaceBlocks

  var fileResult = [Int: Int]()
  var spaceResult = [Int: Int]()
  var pos = 0

  while !spaceBlocks.isEmpty {
    fileResult[fileBlocks.startIndex] = pos
    pos += fileBlocks.removeFirst()
    spaceResult[spaceBlocks.startIndex] = pos
    pos += spaceBlocks.removeFirst()
  }
  fileResult[fileBlocks.startIndex] = pos
  return (fileResult, spaceResult)
}

public func partOne() {
  var (fileBlocks, spaceBlocks) = makeBlocks(input)

  var pos = 0
  var onSpace = false
  var result = 0
  while !fileBlocks.isEmpty {
    if onSpace {
      guard spaceBlocks[spaceBlocks.startIndex] > 0 else {
        spaceBlocks.removeFirst()
        onSpace = false
        continue
      }

      let id = fileBlocks.endIndex - 1
      guard fileBlocks[id] > 0 else {
        fileBlocks.removeLast()
        continue
      }
      result += (id) * pos
      fileBlocks[id] -= 1
      spaceBlocks[spaceBlocks.startIndex] -= 1
    } else {
      let id = fileBlocks.startIndex
      guard fileBlocks[id] > 0 else {
        fileBlocks.removeFirst()
        onSpace = true
        continue
      }
      result += id * pos
      fileBlocks[id] -= 1
    }
    pos += 1
  }
  print(result) // 6262891638328
}

func checksum(id: Int, count: Int, startPos: Int) -> Int {
  (startPos..<(startPos + count)).reduce(0) { result, value in
    result + (id * value)
  }
}

public func partTwo() {
  var (fileBlocks, spaceBlocks) = makeBlocks(input)
  var (fileIdToOriginalPosition, spaceIdToPosition) = makeIdToOriginalPositions(fileBlocks: fileBlocks, spaceBlocks: spaceBlocks)

  var result = 0
  while fileBlocks.notEmpty {
    let id = fileBlocks.endIndex - 1
    let fileSize = fileBlocks.removeLast()
    if let spaceIdx = spaceBlocks.firstIndex(where: { $0 >= fileSize }), spaceIdToPosition[spaceIdx]! < fileIdToOriginalPosition[id]! {
      result += checksum(id: id, count: fileSize, startPos: spaceIdToPosition[spaceIdx]!)
      spaceBlocks[spaceIdx] -= fileSize
      spaceIdToPosition[spaceIdx]! += fileSize
    } else {
      result += checksum(id: id, count: fileSize, startPos: fileIdToOriginalPosition[id]!)
    }
  }
  print(result)
}

//public func partTwo() {
//  var (fileBlocks, spaceBlocks) = makeBlocks(testInput)
//  let idToOriginalPosition = makeIdToOriginalPosition(fileBlocks: fileBlocks, spaceBlocks: spaceBlocks)
//
//  var pos = 0
//  var onSpace = false
//  var result = 0
//  while fileBlocks.notEmpty {
//    if onSpace {
//      let id = fileBlocks.endIndex - 1
//      let fileFits = fileBlocks.last! <= spaceBlocks.first!
//      let filePosition = fileFits ? pos : idToOriginalPosition[id]!
//      result += checksum(id: id, count: fileBlocks.removeLast(), startPos: filePosition)
//      if fileFits {
//        pos += spaceBlocks.removeFirst()
//        onSpace = false
//      }
//    } else {
//      result += checksum(id: fileBlocks.startIndex, count: fileBlocks.first!, startPos: pos)
//      pos += fileBlocks.removeFirst()
//      onSpace = true
//    }
//    //print("checksum = \(result)")
//  }
//  print(result)
//}
