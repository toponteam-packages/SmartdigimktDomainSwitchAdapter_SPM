# Smartdigimkt Domain Switch Adapter

An optional iOS domain switch adapter distributed through Swift Package Manager.
The package is named `SmartdigimktDomainSwitchAdapter` and depends on the
`SmartdigimktCNSDK` product from the Smartdigimkt SDK Swift package at version
`6.5.78`.

## Requirements

- iOS 12.0 or later
- Xcode 15.0 or later

## Installation

### Xcode

1. Choose **File > Add Package Dependencies...**.
2. Enter:

   ```text
   https://github.com/toponteam-packages/SmartdigimktDomainSwitchAdapter_SPM.git
   ```

3. Select the exact version required by the project.
4. Add the `SmartdigimktDomainSwitchAdapter` product to the app target.
5. Add `-ObjC` to the app target's **Other Linker Flags**.

The package resolves `SmartdigimktSDK_SPM` at the exact `6.5.78` version and
uses its `SmartdigimktCNSDK` product as the adapter dependency.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/toponteam-packages/SmartdigimktDomainSwitchAdapter_SPM.git",
        exact: "6.5.66"
    )
]
```

Add the `SmartdigimktDomainSwitchAdapter` product to the application target.

## Package structure

The public product contains the domain switch adapter binary and a support
target. The support target connects the binary target to the
`SmartdigimktCNSDK` product supplied by the SDK package.

```text
SmartdigimktDomainSwitchAdapter
├── SmartdigimktDomainSwitchAdapter.xcframework
└── SmartdigimktCNSDK
    └── SmartdigimktSDK.xcframework
```

The adapter binary is downloaded from:

```text
https://sz-kuying-sdk.oss-cn-shenzhen.aliyuncs.com/pkgs/SDK/iOS/DomainSwitch/v6.5.66/SmartdigimktCNDomainSwitchAdapter.zip
```

## Release checklist

Before tagging a release:

1. Upload `SmartdigimktCNDomainSwitchAdapter.zip` to the URL configured in
   `Package.swift`.
2. Calculate its checksum:

   ```bash
   swift package compute-checksum SmartdigimktCNDomainSwitchAdapter.zip
   ```

3. Set the calculated checksum in the binary target declaration. The current
   checksum for the `v6.5.66` archive is:

   ```text
   2cbb10f1b2a6f45e736d1fc634cabcf015a93988bd1a38ecf09f2a0f7ec09e70
   ```

The zip must contain the `SmartdigimktDomainSwitchAdapter.xcframework` binary
used by the `SmartdigimktDomainSwitchAdapter` binary target.
