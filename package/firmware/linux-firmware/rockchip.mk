Package/pcie3-firmware = $(call Package/firmware-default,ROCKCHIP PCIe3 PHY firmware)
define Package/pcie3-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rockchip
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rockchip/pcie3-t22-c8g2-1.6.3-202a-p7.fw $(1)/lib/firmware/rockchip
endef
$(eval $(call BuildPackage,pcie3-firmware))
