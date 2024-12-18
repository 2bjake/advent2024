import Algorithms
import AdventUtilities
import RegexBuilder

func makeLists(from src: String) -> ([Int], [Int]) {
  let regex = Regex {
    Capture.int
    "   "
    Capture.int
  }

  return src.matches(of: regex).reduce(into: ([Int](), [Int]())) { result, value in
    result.0.append(value.1)
    result.1.append(value.2)
  }
}

public func partOne() {
  let (list1, list2) = makeLists(from: input)
  let sum = zip(list1.sorted(), list2.sorted()).map { abs($0.0 - $0.1) }.reduce(0, +)
  print(sum) // 2970687
}

public func partTwo() {
  let (list1, list2) = makeLists(from: input)

  let numToCount = list2.reduce(into: [Int: Int]()) { result, value in
    result[value, default: 0] += 1
  }

  let sum = list1.map { $0 * numToCount[$0, default: 0] }.reduce(0, +)
  print(sum) // 23963899
}
