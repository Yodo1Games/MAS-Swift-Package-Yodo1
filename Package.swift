// swift-tools-version: 5.6
// Copyright © 2026 Yodo1 Games. All rights reserved.

import PackageDescription

let package = Package(
    name: "Yodo1MasMediationYodo1",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Yodo1MasMediationYodo1", targets: ["Yodo1MasMediationYodo1Target"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Core.git", exact: "5.0.0-beta.5"),
    ],
    targets: [
        // ==================== Yodo1MasMediationYodo1 ====================
        .target(
            name: "Yodo1MasMediationYodo1Target",
            dependencies: [
                .target(name: "Yodo1MasMediationYodo1"),
                .product(name: "Yodo1MasCore", package: "MAS-Swift-Package-Core"),
            ],
            path: "Sources/Yodo1MasMediationYodo1Target",
            resources: [.copy("Yodo1MasYodo1.plist"), .copy("ic_menu_forward.png"), .copy("yodo1_btn_close.png")]
        ),
        .binaryTarget(
            name: "Yodo1MasMediationYodo1",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationYodo1/Yodo1MasMediationYodo1-5.0.0-beta.5.zip",
            checksum: "58f43e31b9260a231fc4a56f966745b85c9dea8ccbba1ea16ae82bc04d0a5fb0"
        ),
    ]
)
