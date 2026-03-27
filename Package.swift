// swift-tools-version:6.1

// SPM support the MatrixRustSDK consumption

import PackageDescription

let checksum = "55a434b9b0f01d9504257414f50093b972c793409e3d48b5bd9a6567e20da242"
let version = "0.14.1-anonyome-6"
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
