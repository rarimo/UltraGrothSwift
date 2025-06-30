// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UltraGrothSwift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UltraGrothSwift",
            targets: ["UltraGrothSwift", "UltraGrothFramework"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UltraGrothSwift",
            dependencies: ["UltraGrothFramework"],
            linkerSettings: [.linkedFramework("SystemConfiguration")]
        ),
        .binaryTarget(
            name: "UltraGrothFramework",
            url: "https://github.com/rarimo/ultragroth/releases/download/v0.1.0/UltraGroth.xcframework.zip",
            checksum: "4941760accea17c97af3d0fd17a9263903ce9c1a18e4f1b635556ae437767e4b"
        ),
        .testTarget(
            name: "UltraGrothSwiftTests",
            dependencies: ["UltraGrothSwift"]
        ),
    ]
)
