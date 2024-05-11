# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI page for XUPNPD
LUCI_DEPENDS:=+xupnpd
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-xupnpd
PKG_VERSION:=1.8
PKG_RELEASE:=1

define Package/luci-app-xupnpd/install
    $(INSTALL_DIR) $(1)/etc/config
    $(INSTALL_CONF) ./files/etc/config/xupnpd $(1)/etc/config/xupnpd
    chmod 755 $(1)/etc/config/xupnpd
    chmod 755 $(1)/etc/init.d/xupnpd
endef

include $(TOPDIR)/feeds/luci/luci.mk



# call BuildPackage - OpenWrt buildroot signature
