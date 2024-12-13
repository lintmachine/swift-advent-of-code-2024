//
//  Year2015Day04.swift
//  advent-of-code
//
//  Created by cdann on 12/12/24.
//

import ArgumentParser
import CryptoKit

struct Year2015Day4: ParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "4",
    abstract: "Day 4 Challenge",
    shouldDisplay: true,
    aliases: ["Day4"]
  )
  
  @OptionGroup var input: InputFileArgument

  mutating func run() throws {
    let input = try self.input.getInput() ?? Self.defaultInput
    
    var i: UInt64  = 0
    var hashValue: Insecure.MD5.Digest
    var hashString: String

    repeat {
      i += 1
      let testValue = (input + String(i)).data(using: .utf8)!
      hashValue = Insecure.MD5.hash(data: testValue)
      hashString = String(hashValue.description.suffix(32))
    } while hashString[hashString.startIndex...hashString.index(hashString.startIndex, offsetBy: 5)] != "00000"

    print("Part 1 - \(input + String(i)) - \(hashString)")
  }

  // MARK: - Default Input
  static let defaultInput = "yzbqklnj"
}
