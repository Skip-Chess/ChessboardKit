// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ChessboardKit",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "ChessboardKit",
            targets: ["ChessboardKit"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.5.18"),
        .package(url: "https://source.skip.tools/skip-fuse-ui.git", "0.0.0"..<"2.0.0"),
        .package(url: "https://github.com/Skip-Chess/ChessKit.git", branch: "develop"),
    ],
    targets: [
        .target(name: "ChessboardKit",
                dependencies: [
                    .product(name: "SkipFuseUI", package: "skip-fuse-ui"),
                    .product(name: "ChessKit", package: "ChessKit")
                ],
                resources: [
                    .process("Resources")
                ],
                plugins: [.plugin(name: "skipstone", package: "skip")])
    ],
    swiftLanguageModes: [.v5, .v6]
)
