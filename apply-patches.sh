#!/bin/bash

set -e -u -o pipefail

# vim ~/.pwclientrc
#
# [options]
# default=ozlabs
#
# [lore]
# url=https://lore.kernel.org/patchwork/xmlrpc/
#
# [kernel]
# url=https://patchwork.kernel.org/xmlrpc/
#
# [ozlabs]
# url=https://patchwork.ozlabs.org/xmlrpc/

# [v2,0/5] MSM8976/56 Sony Xperia Loire (X/XCompact) smartphones
# https://patchwork.kernel.org/cover/11221029/
pwclient git-am -3 -s -p kernel 11221027 # [v2,1/5] dt-bindings: iio: spmi-vadc: Add definitions for USB DP/DM VADCs
pwclient git-am -3 -s -p kernel 11221031 # [v2,2/5] arm64: dts: pm8004: Add SPMI regulator and add phandles to lsids
pwclient git-am -3 -s -p kernel 11221033 # [v2,3/5] arm64: dts: qcom: Add configuration for PM8950 and PMI8950 peripherals
pwclient git-am -3 -s -p kernel 11221035 # [v2,4/5] arm64: dts: qcom: Add MSM8976 SoC support dts files
pwclient git-am -3 -s -p kernel 11221037 # [v2,5/5] arm64: dts: qcom: Add Sony Xperia (Loire) X and X Compact support

# [v2,0/2] Global Clock Controller driver for MSM8976/56
# https://patchwork.ozlabs.org/cover/1176890/
pwclient git-am -3 -s -p ozlabs 1176892 # [v2,1/2] clk: qcom: Add MSM8976/56 Global Clock Controller (GCC) driver
pwclient git-am -3 -s -p ozlabs 1176891 # [v2,2/2] dt-bindings: clock: Document MSM8976 gcc compatible (needs fixup because qcom,gcc.txt was converted to qcom,gcc.yaml).

# https://patchwork.kernel.org/patch/11305491/
pwclient git-am -3 -s -p kernel 11305491 # arm64: Add qcom Kconfig fragment
