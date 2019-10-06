// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "EosioSwiftAbieosSerializationProvider",
    platforms: [
       .macOS(.v10_14), .iOS(.v12),
    ],
    products: [
        .library(
            name: "EosioSwiftAbieosSerializationProvider",
            targets: ["EosioSwiftAbieosSerializationProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/greymass/eosio-swift.git", .branch("swift-pm")),
    ],
    targets: [
        .target(
            name: "EosioSwiftAbieosSerializationProvider",
            dependencies: ["EosioSwift", "AbiEos"]),
        .target(name: "AbiEos"),
        .testTarget(
            name: "EosioSwiftAbieosTests",
            dependencies: ["EosioSwiftAbieosSerializationProvider"],
            path: "Tests"),
    ],
    cxxLanguageStandard: .gnucxx1z
)
