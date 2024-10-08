// swift-tools-version:5.5
import PackageDescription

let releaseName = "v2.6.0"
let checksumEvsKit = "24aad714ee121cdd7451f493e7f4d7ae0436275129afdbd737ed6f5a52e767e7"
let checksumNativeEvsKit = "b76e4ce835d5c99448c3b7590af81cbc47708676163eef9a7373b0e66dbbf449"


let package = Package(
   name: "EvsKit",
   platforms: [
     .iOS(.v15),
   ],
   products: [
      .library(name: "EvsKit", targets: ["EvsKit"]),
      .library(name: "NativeEvsKit", targets: ["NativeEvsKit"])
   ],
   targets: [
      .binaryTarget(
         name: "EvsKit",
         url: "https://github.com/everysight-maverick/ios-spm/releases/download/\(releaseName)/EvsKit.xcframework.zip",
         checksum:"\(checksumEvsKit)"),
      .binaryTarget(
         name: "NativeEvsKit",
         url: "https://github.com/everysight-maverick/ios-spm/releases/download/\(releaseName)/NativeEvsKit.xcframework.zip",
         checksum:"\(checksumNativeEvsKit)")
   ]
)
