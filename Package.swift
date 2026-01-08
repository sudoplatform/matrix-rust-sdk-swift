// swift-tools-version:6.1

// SPM support the MatrixRustSDK consumption

import PackageDescription

let checksum = "e3244880d11f3078bf12d17591c8c163282f230d31d6d87e4352cb8a37b9f0bf"
let version = "0.14.1-anonyome-3"
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
