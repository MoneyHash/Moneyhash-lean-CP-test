// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MoneyHashLeanSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MoneyHashLeanSDK",
            targets: ["MoneyHashLeanSDK"]
        ),
    ],
    dependencies: [
        .package(
            name: "MoneyHashCore",
            url: "https://github.com/MoneyHash/Moneyhash-core-CP-test.git",
            "0.0.0"..<"1.0.0"
        ),
        .package(
            url: "https://github.com/leantechnologies/link-sdk-ios-distribution",
            exact: "3.0.23"
        )
    ],
    targets: [
        .target(
            name: "MoneyHashLeanSDK",
            dependencies: [
                .target(name: "MoneyHashLean"),
                .product(name: "MoneyHashCore", package: "MoneyHashCore"),
                .product(name: "LeanSDK", package: "link-sdk-ios-distribution")
            ]
        ),
        .binaryTarget(
            name: "MoneyHashLean",
            url: "https://github.com/MoneyHash/Moneyhash-lean-CP-test/releases/download/0.0.0/MoneyHashLean.xcframework.zip",
            checksum: "REPLACE_WITH_CHECKSUM"
        )
    ]
)
