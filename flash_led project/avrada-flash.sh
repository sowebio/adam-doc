echo "Create hex file, flash device and run program..."
echo ""

UTILITY="$(find $HOME/.config/alire -name avr-objcopy) -v -O ihex flash_led.elf flash_led.hex"
echo $UTILITY
$UTILITY

avrdude -p m1280 -c jtagmkII -P usb -F -U flash_led.hex

echo "Wait 20 seconds before closing..."
ping -c 20 localhost > /dev/null
