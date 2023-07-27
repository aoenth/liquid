// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "liquid",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "Liquid", targets: ["Liquid"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.77.0"),
        .package(url: "https://github.com/aoenth/liquid-kit.git", from: "1.3.6"),
    ],
    targets: [
        .target(name: "Liquid", dependencies: [
             .product(name: "Vapor", package: "vapor"),
             .product(name: "LiquidKit", package: "liquid-kit"),
        ]),
        .testTarget(name: "LiquidTests", dependencies: ["Liquid"]),
    ]
)
