import Foundation

enum Instruction: Int {
  case adv = 0
  case bxl
  case bst
  case jnz
  case bxc
  case out
  case bdv
  case cdv
}

struct Machine {
  var regA: Int
  var regB: Int
  var regC: Int
  let program: [Int]
  var instPtr = 0

  var currentInstruction: Instruction {
    Instruction(rawValue: program[instPtr])!
  }

  var currentOperand: Int {
    let literal = program[instPtr + 1]

    func combo() -> Int {
      switch literal {
        case 0, 1, 2, 3: literal
        case 4: regA
        case 5: regB
        case 6: regC
        default: fatalError()
      }
    }

    switch currentInstruction {
      case .adv: return combo()
      case .bxl: return literal
      case .bst: return combo()
      case .jnz: return literal
      case .bxc: return 0
      case .out: return combo()
      case .bdv: return combo()
      case .cdv: return combo()
    }
  }

  init(regA: Int, regB: Int, regC: Int, program: [Int]) {
    self.regA = regA
    self.regB = regB
    self.regC = regC
    self.program = program
  }

  @discardableResult
  mutating func run(failOnMismatch: Bool = false) -> [Int]? {
    var result = [Int]()
    while instPtr < program.count {
      switch currentInstruction {
        case .adv: regA /= 1 << currentOperand
        case .bxl: regB = regB ^ currentOperand
        case .bst: regB = currentOperand % 8
        case .jnz:
          if regA != 0 {
            instPtr = currentOperand
            continue
          }
        case .bxc: regB ^= regC
        case .out:
          result.append(currentOperand % 8)
          if failOnMismatch && result != Array(program.prefix(result.count)) {
            return nil
          }
        case .bdv: regB = regA / (1 << currentOperand)
        case .cdv: regC = regA / (1 << currentOperand)
      }
      instPtr += 2
    }
    return result
  }
}

extension Machine: CustomStringConvertible {
  var description: String {
    "A: \(regA) B: \(regB) C: \(regC)"
  }
}

func test() {
  var machine1 = Machine(regA: 0, regB: 0, regC: 9, program: [2, 6])
  machine1.run()
  assert(machine1.regB == 1)

  var machine2 = Machine(regA: 10, regB: 0, regC: 0, program: [5,0,5,1,5,4])
  let result2 = machine2.run()
  assert(result2 == [0,1,2])

  var machine3 = Machine(regA: 2024, regB: 0, regC: 0, program: [0,1,5,4,3,0])
  let result3 = machine3.run()
  assert(result3 == [4,2,5,6,7,7,7,7,3,1,0])
  assert(machine3.regA == 0)

  var machine4 = Machine(regA: 0, regB: 29, regC: 0, program: [1,7])
  machine4.run()
  assert(machine4.regB == 26)

  var machine5 = Machine(regA: 0, regB: 2024, regC: 43690, program: [4,0])
  machine5.run()
  assert(machine5.regB == 44354)
}

public func partOne() {
  //var machine = Machine(regA: 729, regB: 0, regC: 0, program: [0,1,5,4,3,0])
  var machine = Machine(regA: 63281501, regB: 0, regC: 0, program: [2,4,1,5,7,5,4,5,0,3,1,6,5,5,3,0])
  print(machine.run()!.map(String.init).joined(separator: ","))
  //test()

}

public func partTwo() {
  //let program = [0,3,5,4,3,0]
  let program = [2,4,1,5,7,5,4,5,0,3,1,6,5,5,3,0]
  for i in 100_000_000...200_000_000 { // run it for higher numbers
    var machine = Machine(regA: i, regB: 0, regC: 0, program: program)
    if let result = machine.run(failOnMismatch: true), result == program {
      print(i)
      break
    }
  }
}
