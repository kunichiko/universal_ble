// swift-tools-version: 5.9
// Swift Package Manager support for the Flutter `universal_ble` plugin (darwin shared sources).
//
// MimicX fork: 0.21.1 に Swift PM 対応だけを足したもの (upstream 2.0.0 の構成に合わせた)。
// ソースは 0.21.1 から無変更で darwin/Classes から移動しただけ。

import PackageDescription

let package = Package(
  name: "universal_ble",
  platforms: [
    .iOS("13.0"),
    .macOS("10.15"),
  ],
  products: [
    // If the plugin name contains `_`, the library name must use `-`.
    .library(name: "universal-ble", targets: ["universal_ble"]),
  ],
  dependencies: [
    // Flutter injects this local package when SwiftPM integration is enabled.
    .package(name: "FlutterFramework", path: "../FlutterFramework"),
  ],
  targets: [
    .target(
      name: "universal_ble",
      dependencies: [
        .product(name: "FlutterFramework", package: "FlutterFramework"),
      ]
    ),
  ]
)
