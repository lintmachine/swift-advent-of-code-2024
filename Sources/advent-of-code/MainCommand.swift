import ArgumentParser
import Foundation

@main
struct MainCommand: ParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "advent-of-code",
    abstract: "Advent of Code Challenges",
    shouldDisplay: true,
    subcommands: [Year2024.self, Year2015.self],
    defaultSubcommand: Year2024.self
  )
}

struct Year2015: ParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "2015",
    abstract: "2015 Advent of Code Challenges",
    shouldDisplay: true,
    subcommands: [
      Year2015Day1.self,
      Year2015Day2.self,
      Year2015Day3.self,
      Year2015Day4.self,
    ],
    defaultSubcommand: Year2015Day4.self
  )
}

struct Year2024: ParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "2024",
    abstract: "2024 Advent of Code Challenges",
    shouldDisplay: true,
    subcommands: [
      Year2024Day1.self,
      Year2024Day2.self,
      Year2024Day3.self,
      Year2024Day4.self,
      Year2024Day5.self,
      Year2024Day6.self,
      Year2024Day7.self
    ],
    defaultSubcommand: Year2024Day7.self
  )
}

struct InputFileArgument: ParsableArguments {
  @Flag(inversion: .prefixedNo, help: "Read input from stdin instead of a file.")
  var stdin: Bool = false

  @Option(
    name: .shortAndLong,
    help: "The path to the input file. Ignored if stdin is enabled.")
  var input: String?

  func validate() throws {
    if stdin && input != nil {
      throw ValidationError("Cannot specify input file when reading from stdin.")
    }
  }

  func getInput() throws -> String? {
    let inputData: Data

    // Determine the source of the input
    if stdin {
      // Read from standard input
      inputData = FileHandle.standardInput.readDataToEndOfFile()
    } else if let inputPath = input {
      // Read from the provided file path
      let fileURL = URL(fileURLWithPath: inputPath)
      inputData = try Data(contentsOf: fileURL)
    } else {
      return nil
    }

    // Process the input
    if let inputString = String(data: inputData, encoding: .utf8) {
      print("Received Input:")
      print(inputString)
      return inputString
    } else {
      throw ValidationError("Failed to read input as UTF-8 text.")
    }
  }
}
