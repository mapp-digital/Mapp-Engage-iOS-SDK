// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MappEngage",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "MappEngage", targets: ["MappEngage"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MappEngage",
            dependencies: [
                "AppoxeeWrapper"
            ]
        ),
        .target(
            name: "AppoxeeWrapper",
            dependencies: ["AppoxeeSDK"],
            path: "AppoxeeWrapper/AppoxeeWrapper"
        ),
        .binaryTarget(
            name: "AppoxeeSDK",
            path: "./SDK/AppoxeeSDK.xcframework"
        )
    ]
)
