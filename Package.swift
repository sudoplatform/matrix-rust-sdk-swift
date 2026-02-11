// swift-tools-version:6.1

// SPM support the MatrixRustSDK consumption

import PackageDescription

let checksum = "56747c8f8160d15664d175b0dabe341d962a6f6396219c6b9d5b08887445e43e"
let version = "0.14.1-anonyome-4"
let url = "https://github.com/sudoplatform/matrix-rust-sdk-swift/releases/download/\(version)/MatrixRustSDK.xcframework.zip"
let package = Package(
    name: "MatrixRustSDK",
    platforms: [ .iOS(.v16), .macOS(.v12) ],
    products: [
        .library(name: "MatrixRustSDK", targets: ["MatrixSDK"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "MatrixSDK", dependencies: [
            .target(name: "MatrixRustSDK")
        ],
        path: "Sources/MatrixRustSDK"),
        .binaryTarget(name: "MatrixRustSDK", url: url, checksum: checksum)
    ]
)
