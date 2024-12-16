import Algorithms
import AdventUtilities
import RegexBuilder

struct Rule: Hashable {
  let first: Int
  let second: Int

  init(_ first: Int, _ second: Int) {
    self.first = first
    self.second = second
  }
}

func makePageToRules(_ source: String) -> [Int: [Rule]] {
  source.matches(of: Regex {
    Capture.int
    "|"
    Capture.int
  }).reduce(into: [:]) { result, value in
    let rule = Rule(value.1, value.2)
    result[rule.first, default: []].append(rule)
    result[rule.second, default: []].append(rule)
  }
}

func makeUpdates(_ source: String) -> [[Int]] {
  source.split(separator: "\n").map {
    $0.split(separator: ",").compactMap(Int.init)
  }
}

func rulesForUpdate(_ update: [Int], pageToRules: [Int: [Rule]]) -> [Rule] {
  let rules: Set<Rule> = update.reduce(into: []) { result, value in
    let pageRules = pageToRules[value, default: []].filter { update.contains($0.first) && update.contains($0.second) }
    result.formUnion(pageRules)
  }
  return Array(rules)
}

func makeUpdateToRules(updateSource: String, rulesSource: String) -> [[Int]: [Rule]] {
  let updates = makeUpdates(updateSource)
  let pageToRules = makePageToRules(rulesSource)

  return updates.reduce(into: [:]) { result, value in
    result[value] = rulesForUpdate(value, pageToRules: pageToRules)
  }
}

func isUpdateCorrect(update: [Int], rules: [Rule]) -> Bool {
  let pageToIndex: [Int: Int] = update.indices.reduce(into: [:]) { result, value in
    result[update[value]] = value
  }

  for rule in rules {
    if pageToIndex[rule.first]! >= pageToIndex[rule.second]! { return false }
  }
  return true
}

func sortUpdates(updates: [[Int]], updateToRules: [[Int]: [Rule]]) -> (correct: [[Int]], incorrect: [[Int]]) {
  var correct = [[Int]]()
  var incorrect = [[Int]]()

  for update in updates {
    if isUpdateCorrect(update: update, rules: updateToRules[update]!) {
      correct.append(update)
    } else {
      incorrect.append(update)
    }
  }

  return (correct, incorrect)
}

func middlePageValueOf(_ updates: [[Int]]) -> Int {
  updates.map { $0[$0.count / 2] }.reduce(0, +)
}

public func partOne() {
  let updateToRules = makeUpdateToRules(updateSource: updatesInput, rulesSource: rulesInput)
  let correctUpdates = sortUpdates(updates: Array(updateToRules.keys), updateToRules: updateToRules).correct
  print(middlePageValueOf(correctUpdates)) // 5964
}

func fixUpdate(_ update: [Int], rules: [Rule]) -> [Int] {
  var pageToPredecessors: [Int: Set<Int>] = rules.reduce(into: [:]) { result, value in
    result[value.second, default: []].insert(value.first)
  }

  var result = [Int]()
  var update = Set(update)
  while !update.isEmpty {
    let nextPage = update.filter { pageToPredecessors[$0, default: []].isEmpty }.only!
    result.append(nextPage)
    update.remove(nextPage)
    for key in pageToPredecessors.keys {
      pageToPredecessors[key]?.remove(nextPage)
    }
  }
  return result
}

public func partTwo() {
  let updateToRules = makeUpdateToRules(updateSource: updatesInput, rulesSource: rulesInput)
  let incorrectUpdates = sortUpdates(updates: Array(updateToRules.keys), updateToRules: updateToRules).incorrect
  print(middlePageValueOf(incorrectUpdates.map { fixUpdate($0, rules: updateToRules[$0]!) })) // 4719
}
