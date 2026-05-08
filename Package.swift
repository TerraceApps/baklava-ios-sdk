// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BaklavaSDK",
    products: [
        .library(name: "BaklavaSDK", targets: ["BaklavaSDK"])
    ],
    targets: [
        .target(
            name: "BaklavaSDK",
            dependencies: [.target(name: "BaklavaSDKBinary")],
            path: "Sources/BaklavaSDK"
        ),
        .binaryTarget(
            name: "BaklavaSDKBinary",
            url: "https://github.com/TerraceApps/baklava-ios-sdk/releases/download/v1.0.0/BaklavaSDK.xcframework.zip",
            checksum: "6272aa33fb8180d280aecb83dbc0d783f2d20accef2072d17889a2fd2e05461b"
        )
    ]
)
