// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DateCalculations",
	platforms: [
		.macOS(.v15)
	],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DateCalculations",
            targets: ["DateCalculations"]),
    ],
	dependencies: [
		//.package(url: "https://github.com/kommthom/DateExtensions", from: "1.0.0"),
		.package(name: "DateExtensions", path: "../DateExtensions"),
	],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DateCalculations",
			dependencies: [
				.product(
					name: "DateExtensions",
					package: "DateExtensions"
				)
			]
		),
        .testTarget(
            name: "DateCalculationsTests",
            dependencies: ["DateCalculations"]
        ),
    ]
)
