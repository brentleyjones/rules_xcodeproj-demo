load("@rules_rust//rust:defs.bzl", "rust_library")

rust_library(
    name = "lib",
    srcs = ["lib.rs"],
    edition = "2018",
    tags = ["manual"],
    deps = [":alloc"],
)

# This being required is a bug in objc_library, ideally 'RustLib' could depend
# directly on 'lib'
cc_library(
    name = "lib_shim",
    tags = ["manual"],
    deps = [":lib"],
)

objc_library(
    name = "RustLib",
    srcs = ["RustLib.m"],
    hdrs = ["RustLib.h"],
    module_name = "RustLib",
    tags = ["manual"],
    visibility = ["//Sources/UI:__pkg__"],
    deps = [":lib_shim"],
)

cc_library(
    name = "alloc",
    srcs = ["alloc.cc"],
    tags = ["manual"],
)
