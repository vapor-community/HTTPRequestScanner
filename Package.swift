// swift-tools-version:4.0
import PackageDescription
let package = Package(
    name: "HTTPRequestScanner",
    products: [
        .library(name: "HTTPRequestScanner", targets: ["HTTPRequestScanner"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "HTTPRequestScanner", dependencies: []),
        .testTarget(name: "HTTPRequestScannerTests", dependencies: ["HTTPRequestScanner"]),
    ]
)