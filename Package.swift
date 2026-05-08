// swift-tools-version: 5.3
import PackageDescription

let package = Package(
    name: "BaklavaSDK",
    products: [
        .library(name: "BaklavaSDK", targets: ["BaklavaSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "BaklavaSDK",
            url: "https://github.com/TerraceApps/baklava-ios-sdk/releases/download/v1.0.0/BaklavaSDK.xcframework.zip",
            checksum: "861025c646b81778008ab7d0e3df0105f57b35e851f58bb61c5de6dd8158f41a"
        )
    ]
)
