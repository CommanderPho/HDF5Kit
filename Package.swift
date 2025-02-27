// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "HDF5Kit",
    products: [
        .library(
            name: "HDF5Kit",
            targets: ["HDF5Kit"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/aleph7/CHDF5.git", from: "1.0.0")
		.package(name: "CHDF5", url: "https://github.com/CommanderPho/CHDF5.git", from: "1.0.3")
    ],
    targets: [
        .target(
            name: "HDF5Kit",
            dependencies: ["CHDF5"],
            path: "Source"),
        .testTarget(
            name: "HDF5KitTests",
            dependencies: ["HDF5Kit"]),
    ]
)
