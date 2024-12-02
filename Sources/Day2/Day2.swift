import Algorithms
import AdventUtilities

func makeLists(_ src: String) -> [[Int]] {
  src.split(separator: "\n").map {
    $0.split(separator: " ").compactMap(Int.init)
  }
}

func isIncreasing(_ x: Int, _ y: Int) -> Bool { x < y }

func isSafe(increasing: Bool, first: Int, second: Int) -> Bool {
  let diff = abs(first - second)
  return increasing == isIncreasing(first, second) && diff >= 1 && diff <= 3
}

func isSafe(_ nums: [Int]) -> Bool {
  let pairs = nums.adjacentPairs()
  let firstIsIncreasing = isIncreasing(pairs.first!.0, pairs.first!.1)

  for pair in pairs {
    if !isSafe(increasing: firstIsIncreasing, first: pair.0, second: pair.1) {
      return false
    }
  }
  return true
}

func isSafeDampened(_ nums: [Int]) -> Bool {
  let pairs = Array(nums.adjacentPairs())
  let firstIsIncreasing = isIncreasing(pairs.first!.0, pairs.first!.1)

  var i = 0
  var dampenerUsed = false
  while i < pairs.count {
    let pair = pairs[i]
    if !isSafe(increasing: firstIsIncreasing, first: pair.0, second: pair.1) {
      if dampenerUsed { return false }
      dampenerUsed = true
      i += 1

      if i == pairs.count { return true }
      let next = pairs[i]
      if !isSafe(increasing: firstIsIncreasing, first: pair.0, second: next.1) {
        return false
      }
    }
    i += 1
  }
  return true
}

func isSafeWithDamper(_ nums: [Int]) -> Bool {
  if isSafeDampened(nums) { return true }

  var nums = nums
  let first = nums.removeFirst()
  if isSafe(nums) { return true }

  nums.removeFirst()
  nums.insert(first, at: 0)
  if isSafe(nums) { return true }

  return false
}

public func partOne() {
  print(makeLists(input).count(where: isSafe)) //663
}

public func partTwo() {
  print(makeLists(input).count(where: isSafeWithDamper)) // 692
}
