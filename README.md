# Arduino Uno or Meag2560 firmware for Atmega16U2 (USB-Serial-Converter)

The Arduino Uno and the Arduino Mega2560 are bot using an Atmega16U2 as an USB
to serial converter. The default firmware of this microcontroller causes
latencies of about 4ms. This project provides a LUFA-based firmware for the
Atmega16U2 which  does not suffer from this latency issue.

# Requirements

  - gcc-avr
  - avr-libc
  - dfu-programmer

# Build Firmware

  1. Download LUFA by running `./getlufa.sh`.
  2. Build firmware by running `make`.

# Flash Firmware

An instruction for flashing the firmware can be found
[here](https://www.arduino.cc/en/Hacking/DFUProgramming8U2).

**Note:** If `dfu-prgrammer` is not able to detect the device on Linux, you need
to deactivate auto-suspension of
usb-ports([link](https://sourceforge.net/p/dfu-programmer/mailman/message/504454/)).

```
echo -n -1 > /sys/module/usbcore/parameters/autosuspend
```
