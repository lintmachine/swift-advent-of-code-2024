//
//  Days2024.swift
//  advent-of-code
//
//  Created by cdann on 12/10/24.
//
import ArgumentParser

public enum AdventCalendar {
  public enum Year: String, CaseIterable, Sendable, Codable {
    case year2015 = "2015"
    case year2016 = "2016"
    case year2017 = "2017"
    case year2018 = "2018"
    case year2019 = "2019"
    case year2020 = "2020"
    case year2021 = "2021"
    case year2022 = "2022"
    case year2023 = "2023"
    case year2024 = "2024"
  }
    
  public enum Day: String, CaseIterable, Sendable, Codable {
    case day1 = "1"
    case day2 = "2"
    case day3 = "3"
    case day4 = "4"
    case day5 = "5"
    case day6 = "6"
    case day7 = "7"
    case day8 = "8"
    case day9 = "9"
    case day10 = "10"
    case day11 = "11"
    case day12 = "12"
    case day13 = "13"
    case day14 = "14"
    case day15 = "15"
    case day16 = "16"
    case day17 = "17"
    case day18 = "18"
    case day19 = "19"
    case day20 = "20"
    case day21 = "21"
    case day22 = "22"
    case day23 = "23"
    case day24 = "24"
    case Day25 = "25"
  }
}

extension AdventCalendar.Year: ExpressibleByArgument {
  public static var allValueStrings: [String] {
    allCases.map(\.rawValue)
  }
}

extension AdventCalendar.Day: ExpressibleByArgument {
  public static var allValueStrings: [String] {
    allCases.map(\.rawValue)
  }
}
