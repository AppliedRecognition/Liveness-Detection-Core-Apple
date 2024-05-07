// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "LivenessDetection",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LivenessDetection",
            targets: ["LivenessDetection"]
        )
    ],
    targets: [
        .target(
            name: "LivenessDetection"
        )
    ]
)
