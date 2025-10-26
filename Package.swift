// swift-tools-version:5.5
import PackageDescription

let releaseName = "v2.6.1"
let checksumEvsKit = "a7521db64392e4be32f9434fe4c13ab7948d54e5855da988c4ec0d63986d0583"
let checksumNativeEvsKit = "c8bdcebdb339c8f29eac745c0106c868c5f9822583647b6037da8ee7619a29c9"


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
         url: "https://github.com/everysight-maverick/m1-ios-spm/releases/download/\(releaseName)/EvsKit.xcframework.zip",
         checksum:"\(checksumEvsKit)"),
      .binaryTarget(
         name: "NativeEvsKit",
         url: "https://github.com/everysight-maverick/m1-ios-spm/releases/download/\(releaseName)/NativeEvsKit.xcframework.zip",
         checksum:"\(checksumNativeEvsKit)")
   ]
)
