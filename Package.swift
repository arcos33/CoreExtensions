// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CoreExtensions",
    platforms: [
        .iOS(.v13), // Adjust according to your minimum platform requirements
    ],
    products: [
        .library(
            name: "CoreExtensions",
            targets: ["CoreExtensions"]
        ),
    ],
    targets: [
        .target(
            name: "CoreExtensions",
            dependencies: [],
            path: "Sources/CoreExtensions"
        ),
        .testTarget(
            name: "CoreExtensionsTests",
            dependencies: ["CoreExtensions"],
            path: "Tests/CoreExtensionsTests"
        ),
    ]
)

