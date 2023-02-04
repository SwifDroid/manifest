// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "manifest",
    products: [
        .library(name: "Manifest", targets: ["Manifest"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Manifest", dependencies: []),
        .testTarget(name: "ManifestTests", dependencies: ["Manifest"]),
    ]
)
