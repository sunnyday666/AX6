#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git package https://github.com/Boos4721/packages' >>feeds.conf.default
echo 'src-git Packages https://github.com/Boos4721/OpenWrt-Packages' >>feeds.conf.default

cd package
git clone https://github.com/mchome/openwrt-dogcom.git
git clone https://github.com/mchome/luci-app-dogcom.git
