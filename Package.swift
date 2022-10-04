// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "JackScript",
    platforms: [ .macOS(.v12), .iOS(.v15), .tvOS(.v15) ],
    products: [
        .library(
            name: "JackScript",
            targets: ["JackScript"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jectivex/Jack.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "JackScript",
            dependencies: [
                .product(name: "Jack", package: "Jack"),
            ],
            resources: [
                .process("Resources"),
                .copy("../../App.javascript"),
            ]),
        .testTarget(
            name: "JackScriptTests",
            dependencies: ["JackScript"],
            resources: [.copy("TestResources")]),
    ]
)


