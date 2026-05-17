// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Task6Project",
    products: [
        .executable(name: "DictionaryApp", targets: ["DictionaryApp"]),
        .library(name: "DictionaryPackage", targets: ["DictionaryPackage"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DictionaryPackage",
            path: "DictionaryPackage/Sources/DictionaryPackage"
        ),
        .executableTarget(
            name: "DictionaryApp",
            dependencies: ["DictionaryPackage"],
            path: "DictionaryApp/Sources/DictionaryApp"
        ),
    ]
)