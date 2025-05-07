// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterNoogle",
    products: [
        .library(name: "TreeSitterNoogle", targets: ["TreeSitterNoogle"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterNoogle",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterNoogleTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterNoogle",
            ],
            path: "bindings/swift/TreeSitterNoogleTests"
        )
    ],
    cLanguageStandard: .c11
)
