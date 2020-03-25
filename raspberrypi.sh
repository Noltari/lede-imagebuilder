#!/bin/bash

. lib/ib.sh

function main() {
	release_version "snapshots"
	firmware_packages "luci luci-proto-ipv6"

	prepare_imagebuilder "brcm2708" "bcm2708"
	build_firmware "brcm2708/bcm2708" "rpi" "openwrt-*-rpi*.*"

	prepare_imagebuilder "brcm2708" "bcm2709"
	build_firmware "brcm2708/bcm2709" "rpi-2" "openwrt-*-rpi-2*.*"

	prepare_imagebuilder "brcm2708" "bcm2710"
	build_firmware "brcm2708/bcm2710" "rpi-3" "openwrt-*-rpi-3*.*"
}

main

exit 0
