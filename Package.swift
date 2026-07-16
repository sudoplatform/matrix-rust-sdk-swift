// swift-tools-version:6.1

// SPM support the MatrixRustSDK consumption

import PackageDescription

let checksum = "c5e514d50ec8bfcc5b24101d8571163a37c20e80c4e7731bca30782381ccbe6f"
let version = "0.14.1-anonyome-11"
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
