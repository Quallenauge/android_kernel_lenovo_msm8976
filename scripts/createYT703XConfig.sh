#!/bin/bash
set -v
export ARCH=arm64
export CROSS_COMPILE="ccache /storage/development/lenovo/android/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-androidkernel-"
#export KCONFIG_CONFIG=/tmp/kernel
#mkdir -p $KCONFIG_CONFIG

./scripts/kconfig/merge_config.sh arch/arm64/configs/msm-perf_defconfig ../android_config/o-mr1/android-3.18/android-base.cfg ../android_config/o-mr1/android-3.18/android-base-arm64.cfg
mv .config arch/arm64/configs/YTX703_defconfig

