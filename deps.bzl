"""
Register default linker downloads
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_apple_linker_deps():
    http_archive(
        name = "rules_apple_linker_zld",
        build_file_content = 'filegroup(name = "zld_bin", srcs = ["zld"], visibility = ["//visibility:public"])',
        sha256 = "dee657c070e9553a47a09f55800a24f978887929eef7ab27472af48bf068f566",
        url = "https://github.com/michaeleisel/zld/releases/download/1.3.3/zld.zip",
    )

    http_archive(
        name = "rules_apple_linker_lld",
        build_file_content = 'filegroup(name = "lld_bin", srcs = ["ld64.lld"], visibility = ["//visibility:public"])',
        sha256 = "6b0a60a48fa2e277d1c433171f28f18fcc6784adfffcd2af5b2453840d222430",
        url = "https://github.com/keith/ld64.lld/releases/download/1-30-22/ld64.lld.tar.gz",
    )
