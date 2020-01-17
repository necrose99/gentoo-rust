# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=7

CRATES="
ahash-0.2.18
aho-corasick-0.7.6
ansi_term-0.11.0
anyhow-1.0.26
arrayref-0.3.5
arrayvec-0.5.1
atty-0.2.14
autocfg-0.1.7
autocfg-1.0.0
backtrace-0.3.41
backtrace-sys-0.1.32
base64-0.10.1
bitflags-1.2.1
blake2b_simd-0.5.10
byteorder-1.3.2
c2-chacha-0.2.3
capstone-0.6.0
capstone-sys-0.10.0
cc-1.0.50
cfg-if-0.1.10
chrono-0.4.10
clap-2.33.0
clicolors-control-1.0.1
cloudabi-0.0.3
cmake-0.1.42
console-0.9.1
const-random-0.1.6
const-random-macro-0.1.6
constant_time_eq-0.1.5
cranelift-0.54.0
cranelift-bforest-0.54.0
cranelift-codegen-0.54.0
cranelift-codegen-meta-0.54.0
cranelift-entity-0.54.0
cranelift-faerie-0.54.0
cranelift-frontend-0.54.0
cranelift-module-0.54.0
cranelift-native-0.54.0
cranelift-preopt-0.54.0
cranelift-reader-0.54.0
cranelift-simplejit-0.54.0
cranelift-wasm-0.54.0
crc32fast-1.2.0
crossbeam-utils-0.6.6
dirs-2.0.2
dirs-sys-0.3.4
encode_unicode-0.3.6
env_logger-0.6.2
errno-0.2.4
errno-dragonfly-0.1.1
faerie-0.14.0
failure-0.1.6
failure_derive-0.1.6
file-per-thread-logger-0.1.2
filecheck-0.4.0
fuchsia-cprng-0.1.1
gcc-0.3.55
getrandom-0.1.14
glob-0.2.11
goblin-0.1.3
hashbrown-0.6.3
hermit-abi-0.1.6
humantime-1.3.0
indexmap-1.3.0
indicatif-0.13.0
itoa-0.4.4
lazy_static-1.4.0
libc-0.2.66
log-0.4.8
mach-0.2.3
memchr-2.3.0
memmap-0.7.0
num-integer-0.1.42
num-traits-0.2.11
num_cpus-1.11.1
number_prefix-0.3.0
object-0.17.0
plain-0.2.3
ppv-lite86-0.2.6
pretty_env_logger-0.3.1
proc-macro-hack-0.5.11
proc-macro2-1.0.7
quick-error-1.2.3
quote-1.0.2
rand-0.7.3
rand_chacha-0.2.1
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.2.0
rand_os-0.1.3
raw-cpuid-7.0.3
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.1
regex-1.3.3
regex-syntax-0.6.13
region-2.1.2
rust-argon2-0.5.1
rustc-demangle-0.1.16
rustc_version-0.2.3
ryu-1.0.2
same-file-1.0.6
scroll-0.10.1
scroll_derive-0.10.1
semver-0.9.0
semver-parser-0.7.0
serde-1.0.104
serde_derive-1.0.104
serde_json-1.0.44
smallvec-1.1.0
string-interner-0.7.1
strsim-0.8.0
syn-1.0.13
synstructure-0.12.3
target-lexicon-0.10.0
term-0.6.1
termcolor-1.1.0
termios-0.3.1
textwrap-0.11.0
thiserror-1.0.9
thiserror-impl-1.0.9
thread_local-1.0.1
time-0.1.42
unicode-width-0.1.7
unicode-xid-0.2.0
uuid-0.8.1
vec_map-0.8.1
wabt-0.9.2
wabt-sys-0.7.0
walkdir-2.3.1
wasi-0.9.0+wasi-snapshot-preview1
wasmparser-0.45.2
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.3
winapi-x86_64-pc-windows-gnu-0.4.0"

inherit cargo

DESCRIPTION="Binaries for testing the Cranelift libraries"
HOMEPAGE="https://github.com/bytecodealliance/cranelift"

SRCHASH=c033e784647450e77a8846252fb795804551fe7a

SRC_URI="https://github.com/bytecodealliance/cranelift/archive/${SRCHASH}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 CC0-1.0 ISC MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="cpu_flags_x86_sse2 test"

DEPEND=">=virtual/rust-1.37.0
	dev-util/cmake
	sys-devel/gcc"

RDEPEND=""
REQUIRED_USE="x86? ( cpu_flags_x86_sse2 )"

S="${WORKDIR}"/cranelift-${SRCHASH}

src_configure() {
	# Do nothing
	echo "Configuring cranelift..."
}

src_compile() {
	export CARGO_HOME="${ECARGO_HOME}"
	cargo build -j$(makeopts_jobs) --release || die
}

src_test() {
	export RUST_BACKTRACE=1
	cargo test --all -j$(makeopts_jobs) || die "tests failed"
}

src_install() {
	dobin target/release/clif-util
}

