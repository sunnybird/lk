
## ln -sf /data/android-sdk/ndk/29.0.13113456/toolchains/llvm/prebuilt/linux-x86_64 /opt/llvm

bear -- make qemu-virt-arm64-test \
'CC=/opt/llvm/bin/clang --target=aarch64-unknown-elf' \
'CPP=/opt/llvm/bin/clang-cpp --target=aarch64-unknown-elf' \
'CXX=/opt/llvm/bin/clang++ --target=aarch64-unknown-elf' \
'LD=/opt/llvm/bin/ld.lld' \
TOOLCHAIN_PREFIX=/opt/llvm/bin/llvm- \
CPPFILT=/opt/llvm/bin/llvm-cxxfilt
