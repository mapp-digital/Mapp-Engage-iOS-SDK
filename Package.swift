// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mapp-Engage-iOS-SDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Mapp-Engage-iOS-SDK", targets: ["Mapp-Engage-iOS-SDK"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Mapp-Engage-iOS-SDK",
            dependencies: [
                "AppoxeeWrapper"
            ],
            resources: [
                //.process("../../SDK/AppoxeeSDKResources.bundle")
                .copy("AppoxeeSDKResources.bundle")
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
