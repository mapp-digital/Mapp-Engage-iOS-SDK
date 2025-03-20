// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppoxeeSDK",
    products: [
        .library(name: "AppoxeeSDK", targets: ["AppoxeeSDK"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "AppoxeeSDK", path: "./SDK/AppoxeeSDK.xcframework")
    ]
)
