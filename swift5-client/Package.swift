// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "OpenStreetMap",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_11),
        .tvOS(.v9),
        .watchOS(.v3),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "OpenStreetMap",
            targets: ["OpenStreetMap"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "OpenStreetMap",
            dependencies: ["AnyCodable", ],
            path: "OpenStreetMap/Classes"
        ),
    ]
)
