ifeq ($(BOARD_WIFI_VENDOR), realtek)
	include $(call all-subdir-makefiles)

	WIFI_DRIVER_SOCKET_IFACE := wlan0
	ifeq ($(strip $(WPA_SUPPLICANT_VERSION)),VER_0_8_X)
	  include external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk
	endif
endif
