// swift-tools-version: 5.9
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
            checksum: "6d356e4c805dc275d1f9e17363840f4923278d44f92f8957fa676d4aff5beff6"
        )
    ]
)
