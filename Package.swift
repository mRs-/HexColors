// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HexColors",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "HexColors",
            targets: ["HexColors"]),
        .library(
            name: "HexColors-Static",
            type: .static,
            targets: ["HexColors"]),
        .library(
            name: "HexColors-Dynamic",
            type: .dynamic,
            targets: ["HexColors"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HexColors",
            dependencies: [],
            path: "Sources"
        )
    ]
)
