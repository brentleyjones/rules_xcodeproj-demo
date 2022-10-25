load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

ios_unit_test(
    name = "AppTests",
    bundle_id = "com.brentleyjones.rules-xcodeproj-demo.AppTests",
    minimum_os_version = "15.0",
    test_host = "//Sources/App",
    visibility = ["//visibility:public"],
    deps = [":AppTests.library"],
)

swift_library(
    name = "AppTests.library",
    testonly = True,
    srcs = glob(["**/*.swift"]),
    module_name = "AppTests",
    tags = ["manual"],
    deps = [
        "@com_acme//:SuperSecret",
        "//Sources/App:App.library",
    ],
)
