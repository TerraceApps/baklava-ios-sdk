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
            url: "https://github.com/TerraceApps/baklava-ios-sdk/releases/download/v1.0.1/BaklavaSDK.xcframework.zip",
            checksum: "496b2572f973f54d96fab816b8651d6a91e5c0dda004c9e4013fe3960b53a723"
        )
    ]
)
