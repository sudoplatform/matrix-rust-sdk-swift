// swift-tools-version:6.1

// SPM support the MatrixRustSDK consumption

import PackageDescription

let checksum = "e68ebfc201b4faf7b874b60eeea5a74ff1f729b4bfbebe0b63a2751df3752864"
let version = "0.14.1-anonyome-9"
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
