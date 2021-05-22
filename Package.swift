// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "music-notation-render",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v7)
    ],
    products: [
    	.library(name: "MusicNotationRender", targets: ["MusicNotationRender"])],
    targets: [
        .target(name: "MusicNotationRender", path: "Sources", exclude: ["docs"]),
        .testTarget(name: "MusicNotationRenderTests", dependencies: ["MusicNotationRender"])
    ]
)
