// swift-tools-version: 5.3
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
            checksum: "fdbce5087ccf8662de7ca9d1bbe1436f69a83133aeff81876b0d9f42794e3d98"
        )
    ]
)
