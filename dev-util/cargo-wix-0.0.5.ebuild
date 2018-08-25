# Copyright 2017-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
aho-corasick-0.6.6
assert_cmd-0.3.0
assert_fs-0.2.1
atty-0.2.11
backtrace-0.3.9
backtrace-sys-0.1.24
bitflags-1.0.4
cargo-wix-0.0.5
cc-1.0.22
cfg-if-0.1.5
chrono-0.4.5
clap-2.32.0
cloudabi-0.0.3
crossbeam-0.3.2
difference-2.0.0
env_logger-0.5.12
escargot-0.1.0
failure-0.1.2
failure_derive-0.1.2
float-cmp-0.4.0
fnv-1.0.6
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
globset-0.4.1
globwalk-0.3.1
humantime-1.1.1
ignore-0.4.3
itoa-0.4.2
lazy_static-1.1.0
libc-0.2.43
log-0.3.9
log-0.4.4
memchr-2.0.1
mustache-0.9.0
num-integer-0.1.39
num-traits-0.2.5
predicates-0.5.2
proc-macro2-0.4.13
quick-error-1.2.2
quote-0.6.8
rand-0.3.22
rand-0.4.3
rand-0.5.5
rand_core-0.2.1
redox_syscall-0.1.40
redox_termios-0.1.1
regex-0.2.11
regex-1.0.3
regex-syntax-0.5.6
regex-syntax-0.6.2
remove_dir_all-0.5.1
rustc-demangle-0.1.9
ryu-0.2.5
same-file-1.0.3
semver-0.9.0
semver-parser-0.7.0
serde-1.0.75
serde_derive-1.0.75
serde_json-1.0.26
strsim-0.7.0
syn-0.14.9
synstructure-0.9.0
tempfile-3.0.3
termcolor-0.3.6
termcolor-1.0.2
termion-1.5.1
textwrap-0.10.0
thread_local-0.3.6
time-0.1.40
toml-0.4.6
ucd-util-0.1.1
unicode-width-0.1.5
unicode-xid-0.1.0
utf8-ranges-1.0.0
uuid-0.5.1
vec_map-0.8.1
version_check-0.1.4
walkdir-2.2.4
winapi-0.3.5
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.1
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-0.1.6
wincolor-1.0.1
"

inherit cargo

DESCRIPTION="Build Windows installers using the Wix Toolset"
HOMEPAGE="https://github.com/volks73/cargo-wix"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="MIT/Apache-2.0" # Update to proper Gentoo format
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
