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

# [0/2] RPM clocks for MSM8976/56
# https://patchwork.kernel.org/cover/11221067/
pwclient git-am -3 -s -p kernel 11221071 # [1/2] clk: qcom: smd: Add support for MSM8976 rpm clocks
pwclient git-am -3 -s -p kernel 11221075 # [2/2] dt-bindings: clock: rpmcc: Document msm8976 compatible

# [0/5] Add support for PM8950/PMI8950/PM8004 regulators
# https://patchwork.kernel.org/cover/11155385/
pwclient git-am -3 -s -p kernel 11155387 # [1/5] qcom: spmi-regulator: Add support for ULT LV_P50 and ULT P300
pwclient git-am -3 -s -p kernel 11155393 # [2/5] regulator: qcom_spmi: Add PM8950 SPMI regulator
pwclient git-am -3 -s -p kernel 11155389 # [3/5] regulator: qcom_smd: Add PM8950 regulators
pwclient git-am -3 -s -p kernel 11155391 # [4/5] mfd: qcom-spmi-pmic: Add support for PM/PMI8950
pwclient git-am -3 -s -p kernel 11155395 # [5/5] regulator: qcom_spmi: Add support for PM8004 regulators

# https://patchwork.kernel.org/patch/11305491/
pwclient git-am -3 -s -p kernel 11305491 # arm64: Add qcom Kconfig fragment

# [v4,0/7] Add support for QCOM IOMMU v2 and 500
# https://patchwork.kernel.org/cover/11169853/
pwclient git-am -3 -s -p kernel 11169857 # [v4,1/7] firmware: qcom: scm: Add function to set IOMMU pagetable addressing
pwclient git-am -3 -s -p kernel 11169855 # [v4,2/7] iommu/qcom: Use the asid read from device-tree if specified
pwclient git-am -3 -s -p kernel 11169859 # [v4,3/7] iommu/qcom: Write TCR before TTBRs to fix ASID access behavior
pwclient git-am -3 -s -p kernel 11169861 # [v4,4/7] iommu/qcom: Properly reset the IOMMU context
pwclient git-am -3 -s -p kernel 11169863 # [v4,5/7] iommu/qcom: Add support for AArch64 IOMMU pagetables
pwclient git-am -3 -s -p kernel 11169865 # [v4,6/7] iommu/qcom: Index contexts by asid number to allow asid 0
pwclient git-am -3 -s -p kernel 11169867 # [v4,7/7] iommu/qcom: Add support for QCIOMMUv2 and QCIOMMU-500 secured contexts
