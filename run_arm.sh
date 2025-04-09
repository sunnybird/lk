rm -rf build-qemu-virt-*
export TOOLCHAIN_HOME=$HOME/data/devtools/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi
export ARCH_arm_TOOLCHAIN_PREFIX=arm-none-eabi-

# export TOOLCHAIN_HOME=$HOME/data/devtools/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-linux-gnueabihf
# export ARCH_arm_TOOLCHAIN_PREFIX=arm-none-linux-gnueabihf-

export PATH=$TOOLCHAIN_HOME/bin:$PATH

./scripts/do-qemuarm -s 4 -m 16 | tee run_arm.log
