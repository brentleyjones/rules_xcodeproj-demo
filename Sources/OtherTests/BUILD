load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

ios_unit_test(
    name = "OtherTests",
    bundle_id = "com.brentleyjones.rules-xcodeproj-demo.OtherTests",
    minimum_os_version = "15.0",
    visibility = [
        "@rules_xcodeproj_generated//:__subpackages__",
    ],
    deps = [":OtherTests.library"],
)

swift_library(
    name = "OtherTests.library",
    testonly = True,
    srcs = glob(["**/*.swift"]),
    module_name = "OtherTests",
    tags = ["manual"],
    deps = ["@com_acme//:SuperSecret"],
)
