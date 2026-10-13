// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SmartdigimktDomainSwitchAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SmartdigimktDomainSwitchAdapter",
            targets: [
                "SmartdigimktDomainSwitchAdapter",
                "SmartdigimktDomainSwitchAdapterSupport"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/toponteam-packages/SmartdigimktSDK_SPM.git",
            exact: "6.5.78"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-cn-shenzhen.aliyuncs.com/pkgs/SDK/iOS/DomainSwitch/v6.5.66/SmartdigimktDomainSwitchAdapter.zip",
            checksum: "1c5cd066875668045c99c961d25bf98d669c2d33890174ff9dfabff6f56fdeea"
        ),
        // 包装 target：同时依赖 Adapter 的 binary 和 CNSDK 的 product
        .target(
            name: "SmartdigimktDomainSwitchAdapterSupport",
            dependencies: [
                "SmartdigimktDomainSwitchAdapter",
                .product(
                    name: "SmartdigimktSDK",
                    package: "SmartdigimktSDK_SPM"
                )
            ]
        )
    ]
)
