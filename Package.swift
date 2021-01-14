// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreShapePackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CoreShapePackage",
            targets: ["CoreShapePackage", "CoreShape"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        // "537d0460864c080cbeb57686fedab6602822dc7ac95228fd0d078abd8678b5f9"
        .target(
            name: "CoreShapePackage",
            dependencies: []),
        .binaryTarget(
            name: "CoreShape",
            url: "https://github.com/xho95/CoreShape/releases/download/0.0.1/CoreShape-0.0.1.xcframework.zip",
            checksum: "537d0460864c080cbeb57686fedab6602822dc7ac95228fd0d078abd8678b5f9"),
        .testTarget(
            name: "CoreShapePackageTests",
            dependencies: ["CoreShapePackage"]),
    ]
)
