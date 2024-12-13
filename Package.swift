// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "advent-of-code",
    platforms: [.macOS(.v14), .iOS(.v16), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    dependencies: [
      .package(url: "https://github.com/apple/swift-algorithms.git", .upToNextMajor(from: "1.2.0")),
      .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
      .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "1.17.0")),
      .package(url: "https://github.com/pointfreeco/swift-parsing.git", .upToNextMajor(from: "0.13.0")),
    ],
    targets: [
        .executableTarget(
            name: "advent-of-code",
            dependencies: [
              .product(name: "Algorithms", package: "swift-algorithms"),
              .product(name: "ArgumentParser", package: "swift-argument-parser"),
              .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
              .product(name: "Parsing", package: "swift-parsing"),
            ]
        )
    ]
)
