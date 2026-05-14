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
            url: "https://github.com/TerraceApps/baklava-ios-sdk/releases/download/v1.0.2/BaklavaSDK.xcframework.zip",
            checksum: "fe1b284d4dfab51aa76201b7924dd9e8a4e366959b7c44d3f848d96b4f0fa031"
        )
    ]
)
