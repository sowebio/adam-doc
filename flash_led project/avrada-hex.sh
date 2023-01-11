echo "Create hex file..."
echo ""

UTILITY="$(find $HOME/.config/alire -name avr-objcopy) -v -O ihex flash_led.elf flash_led.hex"
echo $UTILITY
$UTILITY

echo ""
echo "Wait 20 seconds before closing..."
ping -c 20 localhost > /dev/null
