#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#以下插件在 lede/package 目录下执行即可
#科学上网插件
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
git clone --depth=1 -b master https://github.com/vernesong/OpenClash package/OpenClash
#广告过滤插件
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#应用过滤
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
#Lienol整理的一堆实用的插件
git clone https://github.com/Lienol/openwrt-package package/openwrt-package
