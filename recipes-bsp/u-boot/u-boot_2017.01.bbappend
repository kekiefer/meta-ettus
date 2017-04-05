FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot-${PV}:"

SRC_URI_append_ettus-e300 = " \
                 file://0001-e3xx-Add-platform-definition-files-for-e3xx.patch \
                 file://0002-e3xx-Add-device-tree-files-for-Ettus-E3xx-series.patch \
                 file://0003-e3xx-Add-support-for-the-Ettus-Research-E3XX-family-.patch \
                 file://0001-Add-support-for-mender.io-software-update.patch \
		 "

SRC_URI_append_sulfur = " \
                 file://0001-zynq-Move-ENV-location-selection-from-zynq-common.h-.patch \
		 file://0001-cros_ec-i2c-Group-i2c-write-read-into-single-transac.patch \
		 file://0002-cros_ec-i2c-Add-support-for-version-3-of-the-EC-prot.patch \
		 file://0003-i2c-cdns-Add-additional-compatible-string-for-r1p14-.patch \
		 file://0004-i2c-i2c-cdns-Detect-unsupported-sequences-for-rev-1..patch \
		 file://0005-i2c-i2c-cdns-Reorder-timeout-loop-for-interrupt-wait.patch \
		 file://0006-i2c-i2c-cdns-No-need-for-dedicated-probe-function.patch \
		 file://0001-i2c-i2c-cdns-Implement-workaround-for-hold-quirk-of-.patch \
		 file://0007-i2c-mux-Allow-muxes-to-work-as-children-of-i2c-bus-w.patch \
		 file://0008-ni-zynq-Add-support-for-NI-Ettus-Research-Project-Su.patch \
		 file://0009-ni-zynq-Add-support-for-NI-Ettus-Research-Project-Su.patch \
		 file://0001-zynq-Remove-CONFIG_ENV_OFFSET.patch \
		 file://0010-fixup-ni-zynq-Add-support-for-NI-Ettus-Research-Proj.patch \
		 file://0011-fixup-ni-zynq-Add-support-for-NI-Ettus-Research-Proj.patch \
                 "

SPL_BINARY = "spl/boot.bin"

HAS_PS7INIT = " \
                zynq_e3xx_1_defconfig \
                zynq_e3xx_3_defconfig \
                ni_sulfur_rev3_defconfig \
              "

SRC_URI_append_ettus-e3xx-sg1 = " \
		 file://fpga-1.bin \
		 "
SRC_URI_append_ettus-e3xx-sg3 = " \
		 file://fpga-3.bin \
		 "



do_deploy_append_ettus-e3xx-sg1() {
	cp ${WORKDIR}/fpga-1.bin ${DEPLOYDIR}/fpga.bin
}

do_deploy_append_ettus-e3xx-sg3() {
	cp ${WORKDIR}/fpga-3.bin ${DEPLOYDIR}/fpga.bin
}
