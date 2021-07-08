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

#第三方插件
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon      #argon主题
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config         #argon设置
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan                 #微信服务

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git openclash https://github.com/vernesong/OpenClash' feeds.conf.default
