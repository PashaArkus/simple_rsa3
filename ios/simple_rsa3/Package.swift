// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "simple_rsa3",
    platforms: [
        .iOS("11.0"),
    ],
    products: [
        .library(name: "simple-rsa3", targets: ["simple_rsa3"])
    ],
    dependencies: [
        .package(url: "https://github.com/TakeScoop/SwiftyRSA.git", from: "1.7.0"),
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "simple_rsa3",
            dependencies: [
                .product(name: "SwiftyRSA", package: "SwiftyRSA"),
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: []
        )
    ]
)
