load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "UI",
    srcs = glob(["**/*.swift"]),
    copts = ["-application-extension"],
    data = glob(
        ["Resources/**"],
        exclude = ["**/.DS_Store"],
    ),
    module_name = "UI",
    tags = ["manual"],
    visibility = ["//visibility:public"],
    deps = [
        "//Sources/RustLib",
    ],
    alwayslink = True,
)

ios_framework(
    name = "UIFramework",
    bundle_id = "com.brentleyjones.rules-xcodeproj-demo.UI",
    extension_safe = True,
    families = ["iphone"],
    infoplists = ["Info.plist"],
    minimum_os_version = "15.0",
    visibility = ["//visibility:public"],
    deps = [":UI"],
)
