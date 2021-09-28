#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome
git clone https://github.com/pymumu/openwrt-smartdns.git package/lean/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
git clone https://github.com/destan19/OpenAppFilter.git package/lean/OpenAppFilter
git clone https://github.com/sirpdboy/luci-app-poweroffdevice.git package/lean/luci-app-poweroffdevice
rm -rf  package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
git clone -b openwrt-18.06 https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy
git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge.git package/lean/luci-theme-edge
sed -i '/uci commit system/i\uci set system.@system[0].hostname='MoSheng'' package/lean/default-settings/files/zzz-default-settings
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/ramips/Makefile
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/rockchip/Makefile
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-turboacc/po/zh-cn/turboacc.po
