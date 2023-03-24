// swift-tools-version: 5.7

///
import PackageDescription

///
let package = Package(
    name: "ProperValueType-module",
    products: [
        .library(
            name: "ProperValueType-module",
            targets: ["ProperValueType-module"]
        ),
        .library(
            name: "ProperValueTypeTestToolkit",
            targets: ["ProperValueTypeTestToolkit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/ExpressionErgonomics",
            from: "0.3.2"
        )
    ],
    targets: [
        .target(
            name: "ProperValueType-module",
            dependencies: [
                "ExpressionErgonomics",
            ]
        ),
        .target(
            name: "ProperValueTypeTestToolkit",
            dependencies: [
                "ProperValueType-module",
                .product(
                    name: "ExpressionErgonomicsTestToolkit",
                    package: "ExpressionErgonomics"
                ),
            ]
        ),
        .testTarget(
            name: "ProperValueType-tests",
            dependencies: [
                "ProperValueTypeTestToolkit",
            ]
        ),
        .testTarget(
            name: "ProperValueTypeTestToolkit-tests",
            dependencies: [
                "ProperValueTypeTestToolkit",
            ]
        ),
    ]
)
