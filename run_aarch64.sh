rm -rf build-qemu-virt-*
export TOOLCHAIN_HOME=$HOME/data/devtools/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-elf
export PATH=$TOOLCHAIN_HOME/bin:$PATH
export ARCH_arm64_TOOLCHAIN_PREFIX=aarch64-none-elf-
./scripts/do-qemuarm -6 -s 4 -m 16 | tee run_arm64.log
