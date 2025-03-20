// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

let package = Package(
    name: "AppoxeeSDK",
    platforms: [
        .iOS(.v12)  // Set the minimum iOS version
    ],
    products: [
        .library(
            name: "AppoxeeSDK",
            targets: ["AppoxeeSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AppoxeeSDK",
            path: "./SDK/AppoxeeSDK.xcframework"
        )
    ]
)
