MCU          = atmega16u2
ARCH         = AVR8
BOARD        = UNO
F_CPU        = 16000000
F_USB        = $(F_CPU)
OPTIMIZATION = s
TARGET       = kitcar-usbserial
SRC          = $(TARGET).c Descriptors.c $(LUFA_SRC_USB) $(LUFA_SRC_USBCLASS)
ON_DTR_RESET_PORT     = PORTD
ON_DTR_RESET_PORTCONF = DDRD
ON_DTR_RESET_PINMASK  = "(1<<7)"
LUFA_PATH    = lufa-LUFA-151115/LUFA
CC_FLAGS     = -DUSE_LUFA_CONFIG_HEADER -IConfig/ \
	       -DON_DTR_RESET_PORT=$(ON_DTR_RESET_PORT) \
	       -DON_DTR_RESET_PINMASK=$(ON_DTR_RESET_PINMASK)\
	       -DON_DTR_RESET_PORTCONF=$(ON_DTR_RESET_PORTCONF)
LD_FLAGS     =
SHELL		 = /bin/bash

all:

include $(LUFA_PATH)/Build/lufa_core.mk
include $(LUFA_PATH)/Build/lufa_sources.mk
include $(LUFA_PATH)/Build/lufa_build.mk
include $(LUFA_PATH)/Build/lufa_cppcheck.mk
include $(LUFA_PATH)/Build/lufa_doxygen.mk
include $(LUFA_PATH)/Build/lufa_dfu.mk
include $(LUFA_PATH)/Build/lufa_hid.mk
include $(LUFA_PATH)/Build/lufa_avrdude.mk
include $(LUFA_PATH)/Build/lufa_atprogram.mk


