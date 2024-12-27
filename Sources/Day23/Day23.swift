import AdventUtilities

func makeComputerToConnected(_ source: String) -> [String: Set<String>] {
  let pairs = source.split(separator: "\n").map {
    let parts = $0.split(separator: "-")
    return (String(parts[0]), String(parts[1]))
  }

  var computerToConnected = [String: Set<String>]()
  for pair in pairs {
    computerToConnected[pair.0, default: []].insert(pair.1)
    computerToConnected[pair.1, default: []].insert(pair.0)
  }
  return computerToConnected
}

public func partOne() {
  let computerToConnected = makeComputerToConnected(input)

  var groupings = Set<Set<String>>()
  for (computer, connected) in computerToConnected {
    for perm in connected.combinations(ofCount: 2) {
      guard computer.first == "t" || perm.first!.first == "t" || perm.last!.first == "t" else { continue }
      if computerToConnected[perm.first!]!.contains(perm.last!) {
        groupings.insert([computer, perm.first!, perm.last!])
      }
    }
  }

  print(groupings.count) // 1378
}

public func partTwo() {
  let computerToConnected = makeComputerToConnected(input)

  var groupedComputers = [Set<String>]()
  for computer in computerToConnected.keys {
    for i in groupedComputers.indices {
      if groupedComputers[i].allSatisfy({ computerToConnected[computer]!.contains($0) }) {
        groupedComputers[i].insert(computer)
      }
    }
    groupedComputers.append([computer])
  }

  let largestGroup = groupedComputers.max(by: sorter(for: \.count))!
  let password = largestGroup.sorted().joined(separator: ",")
  print(password) // bs,ey,fq,fy,he,ii,lh,ol,tc,uu,wl,xq,xv
}
