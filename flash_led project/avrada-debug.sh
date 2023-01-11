echo "Connect probe to AVR device, waiting for GNAT Studio debug session..."
echo ""

avarice --part atmega1280 --jtag usb --mkII --reset-srst :4242
