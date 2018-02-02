// swift-tools-version:4.0
import PackageDescription
let package = Package(
    name: "HTTPRequestScanner",
    products: [
        .library(name: "HTTPRequestScanner", targets: ["HTTPRequestScanner"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/async.git", .branch("beta"))
    ],
    targets: [
        .target(name: "HTTPRequestScanner", dependencies: ["Async"]),
        .testTarget(name: "HTTPRequestScannerTests", dependencies: ["HTTPRequestScanner"]),
    ]
)
