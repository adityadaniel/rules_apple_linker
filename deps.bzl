"""
Register default linker downloads
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_apple_linker_deps():
    http_archive(
        name = "rules_apple_linker_zld",
        build_file_content = 'filegroup(name = "zld_bin", srcs = ["zld"], visibility = ["//visibility:public"])',
        sha256 = "b1897fbe2a2e27241d993d1ae55b5622efd9725139e8b9486b5d6e86cc291415",
        url = "https://github.com/michaeleisel/zld/releases/download/1.3.7/zld.zip",
    )

    http_archive(
        name = "rules_apple_linker_lld",
        build_file_content = 'filegroup(name = "lld_bin", srcs = ["ld64.lld"], visibility = ["//visibility:public"])',
        sha256 = "c21d719b08b5f7991c00c315b01cc1424013e6574d1dced015e65c38de61c8ed",
        url = "https://github.com/keith/ld64.lld/releases/download/8-11-22/ld64.tar.xz",
    )
